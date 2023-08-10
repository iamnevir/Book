using BookReactor.Pages.Component;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class FavoritePageState
{
    public bool IsSideMenuShown { get; set; }
    public double TranslationX { get; set; } = 220;

    public double RotationY { get; set; } = -12;
    public double MarginLeft { get; set; } = -30.0;
    public bool IsLoading { get; set; }
    public List<Item> FavoriteBookList { get; set; } = new();
    public Item FirstBook { get; set; }
}
class FavoritePage : Component<FavoritePageState>
{
    void InitializeState()
    {
        if (DeviceInfo.Current.Platform == DevicePlatform.Android)
        {
            State.TranslationX = !State.IsSideMenuShown ? 0 : 220;
            State.MarginLeft = !State.IsSideMenuShown ? -30 : 0;
        }
        else
        {
            State.TranslationX = !State.IsSideMenuShown ? 0 : 300;
        }

        State.RotationY = !State.IsSideMenuShown ? 0.0 : -12;
    }
    public async void Load()
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        string ids = Logger.KiemTraFavorite() ? await Logger.GetFavoriteAsync() : string.Empty;
        if (ids != string.Empty)
        {
            State.IsLoading = true;
            string[] idList = ids.Split(",");
            foreach (string id in idList)
            {
                State.FavoriteBookList.Add(await googleBook.GetBookById(id));
            }
            SetState(s =>
            {
                s.FirstBook = State.FavoriteBookList.FirstOrDefault();
                s.IsLoading = false;
            });
        }
    }
    protected override void OnMounted()
    {
        InitializeState();
        base.OnMounted();
    }
    protected override void OnPropsChanged()
    {
        InitializeState();
        
        base.OnPropsChanged();
    }
    private async void OpenHomePage()
    {
        await Navigation.PushAsync<MainPage, MainPageProps>(_ =>
        {
            _.IsStartPage = false;
        });
    }
    private async void OpenBookPage()
    {
        await Navigation.PushAsync<BookPage>();
    }
    private async void OpenEBookPage()
    {
        await Navigation.PushAsync<EBookPage>();
    }
    private async void OpenLoginPage()
    {
        await Navigation.PushAsync<LoginPage>();
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid
            {
                new SideMenu()
                      .IsShown(State.IsSideMenuShown)
                      .HomePage(OpenHomePage)
                      .OnBookPage(OpenBookPage)
                      .OneBookPage(OpenEBookPage)
                      .OpenLoginPage(OpenLoginPage)
                      .MenuSelect(CommandMenuItem.Favorites)
                      .OnClose(()=>
                      {
                            SetState(s=>s.IsSideMenuShown=false);
                            InitializeState();
                      }),
              
                new Grid("Auto,*","*")
                {
                    RenderFavoriteBook(),
                    RenderHeader()
                }.RotationY(State.RotationY)
                .TranslationX(State.TranslationX)
                .WithAnimation(easing: Easing.CubicIn, duration: 300)
                
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty, false)
        .BackgroundColor(Theme.Bg);
    }
    private VisualNode RenderHeader()
    {
        return new Grid("*", "Auto,Auto,*")
            {
                new SKLottieView()
                .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                {
                    File="bookanimation.json"
                })
                .RepeatCount(-1)
                .IsAnimationEnabled(true)
                .IsEnabled(true)
                .IsVisible(true)
                .HeightRequest(50)
                .WidthRequest(50)
                .BackgroundColor(Colors.Transparent)
                .OnTapped(()=>{
                                    SetState(s=>s.IsSideMenuShown=true);
                                     InitializeState();
                 })
                .GridColumn(0)
                ,
                new Label("Library")
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .FontSize(30)
                .FontFamily(Theme.font)
                .GridColumn(1)
                .Margin(20,0,0,0)
                ,
            }
            .Margin(10,0,0,0)
            .GridRow(0).ZIndex(1).BackgroundColor(Theme.Bg);
    }
    private VisualNode RenderFavoriteBook()
    {

        return new Grid("Auto,*", "*")
                {
                    //RenderGanDay()
                    //,
                    new Grid("Auto,*","*")
                    {
                        new Border
                        {
                            new Label("Your Favorite")
                            .TextColor(Colors.White)
                            .FontFamily(Theme.font)
                            .FontSize(20)
                            .Margin(10)
                        }.GridRow(0).HeightRequest(50)
                        .Margin(0,0,-2,0)
                        .BackgroundColor(Theme.Bg)
                        .Shadow(new Shadow().Brush(MauiControls.Brush.White).Offset(10,10).Opacity(0.5f))
                        ,
                            new CollectionView()
                            .ItemsSource(State.FavoriteBookList,RenderBookItem)
                            .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(0))
                        .GridRow(1)
                        .Margin(0,20,0,0)
                        ,
                    }.GridRow(1).BackgroundColor(Theme.Bg)
                }.GridRow(1);
    }

    private VisualNode RenderGanDay()
    {
        return new Border
        {
           new Grid("*","Auto,*")
           {
               new Image(State.FirstBook is not null?State.FirstBook.volumeInfo.imageLinks.extraLarge.Replace("http", "https"):"")
               .HeightRequest(250)
               .WidthRequest(159)
               .Aspect(Aspect.Fill)
               .GridColumn(0)
               .VEnd()
               .Margin(15,0,0,0)
               ,
               new Grid("Auto,Auto,Auto,*,Auto","*")
               {
                   new Label("ĐÃ ĐƯỢC ĐỌC GẦN ĐÂY:")
                   .TextColor(Colors.Gray)
                   .FontFamily(Theme.font)
                   .FontSize(16)
                   .GridRow(0)
                   ,
                   new Label(State.FirstBook is not null?State.FirstBook.volumeInfo.title:"")
                   .TextColor(Colors.White)
                   .FontFamily(Theme.font)
                   .MaxLines(2)
                   .FontSize(25)
                   .Margin(0,20,0,20)
                   .GridRow(1)
                   ,
                   new Label(State.FirstBook is not null?State.FirstBook.volumeInfo.authors[0]:"")
                   .TextColor(Colors.Gray)
                   .FontFamily(Theme.font)
                   .FontSize(16)
                   .GridRow(2)
                   ,
                   new Label("Tiếp tục >")
                   .TextColor(Theme.XanhKem)
                   .FontFamily(Theme.font)
                   .FontSize(20)
                   .HEnd()
                   .Margin(0,0,0,10)
                   .GridRow(4)
               }.Margin(10,0,10,0)
               .GridColumn(1),
           }
        }.HeightRequest(250)
        .Margin(0,10,0,0)
        .BackgroundColor(Theme.Bg);
    }
    private VisualNode RenderBookItem(Item item)
    {
        var source = item.volumeInfo.imageLinks.thumbnail.Replace("http", "https");
        return new Border
        {
            new Grid("*","Auto,*")
           {
               new Image(source)
               .HeightRequest(130)
               .WidthRequest(94)
               .Aspect(Aspect.Fill)
               .GridColumn(0)
               .VEnd()
               ,
               new Grid("Auto,Auto,*","*")
               {
                   new Label(item.volumeInfo.title)
                   .TextColor(Colors.White)
                   .FontFamily(Theme.font)
                   .MaxLines(2)
                   .FontSize(16)
                   .Margin(0,0,0,20)
                   .GridRow(1)
                   ,
                   new Label(item.volumeInfo.authors[0])
                   .TextColor(Colors.Gray)
                   .FontFamily(Theme.font)
                   .FontSize(15)
                   .GridRow(2)
               }.Margin(10,0,10,0)
               .GridColumn(1)
               ,
           }
        }.HeightRequest(130)
        .BackgroundColor(Colors.Black)
        .StrokeShape(new RoundRectangle().CornerRadius(5))
        .Margin(10).Shadow(new Shadow().Brush(MauiControls.Brush.White).Offset(1, 1).Opacity(0.5f))
        ;
    }
}