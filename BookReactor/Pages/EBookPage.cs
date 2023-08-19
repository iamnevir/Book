using BookReactor.Pages.Component;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class EBookPageState
{
    public bool IsSideMenuShown { get; set; }
    public double TranslationX { get; set; } = 220;

    public double RotationY { get; set; } = -12;
    public double MarginLeft { get; set; } = -30.0;
    public bool IsLoading { get; set; }
    public string TextSearch { get; set; }
    public List<Result> BookList { get; set; }
    public List<Result> BookList1 { get; set; }
}
class EBookPage:Component<EBookPageState>
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
    protected override async void OnMounted()
    {
        InitializeState();
        var gutendex = Services.GetRequiredService<IGutenbergApiService>();
        var book = await gutendex.GetBookDetailAsync("11,12,71180,45839,50133");
        var book1 = await gutendex.GetBookDetailAsync("1661,74,28885,33361,39341");
        if (book is not null)
        {
            SetState(s => 
            {
                s.BookList = book.results;
                s.BookList1 = book1.results;
            });
        }
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
    private async void OpenMagicBookPage()
    {
        await Navigation.PushAsync<MagicBookPage>();
    }
    private async void OpenFavoritePage()
    {
        await Navigation.PushAsync<FavoritePage>();
    }
    private async void OpenReadBook(string id)
    {
        await Navigation.PushAsync<ReadPage, ReadPageProps>(_ =>
        {
            _.Id = id;
        });
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid
            {
                new Grid("Auto,*","*")
                {
                    RenderHeader(),
                    RenderMain(),
                    new Border
                    {
                        new Label("+")
                        .FontSize(35)
                        .TextColor(Colors.White)
                        .VCenter()
                        .HCenter()
                        .ZIndex(3)
                    }.BackgroundColor(Theme.Hong)
                    .HeightRequest(60)
                    .WidthRequest(60)
                    .StrokeShape(new RoundRectangle().CornerRadius(50))
                    .GridRow(1)
                    .VEnd()
                    .HEnd()
                    .Margin(0,0,15,15)
                    .ZIndex(2)
                }
                .RotationY(State.RotationY)
                .TranslationX(State.TranslationX)
                .WithAnimation(easing: Easing.CubicIn, duration: 400),
                 new SideMenu()
                      .IsShown(State.IsSideMenuShown)
                      .HomePage(OpenHomePage)
                      .OnBookPage(OpenBookPage)
                      .OnMagicBookPage(OpenMagicBookPage)
                      .MenuSelect(CommandMenuItem.EBook)
                      .OpenFavoritePage(OpenFavoritePage)
                      .OnClose(()=>
                      {
                            SetState(s=>s.IsSideMenuShown=false);
                            InitializeState();
                      }),
            }

        }.BackgroundColor(Theme.Bg)
        .Set(MauiControls.NavigationPage.HasNavigationBarProperty, false);
    }

    private VisualNode RenderMain()
    {
        return new Grid("Auto,*","*")
        {
            new Grid
            {
                new Border()
                .StrokeShape(new RoundRectangle().CornerRadius(30))
                .BackgroundColor(Theme.Tim1).Margin(40,15,40,0)
                .HeightRequest(50),
                new Border
                {
                    new HStack
                    {
                        new Image("search")
                        .Aspect(Aspect.AspectFit)
                        .HeightRequest(30)
                        ,
                        new Entry()
                                 .TextColor(Colors.Black)
                                 .VCenter()
                                 .HCenter()
                                 .HeightRequest(60)
                                 .WidthRequest(200)
                                 .FontFamily(Theme.font)
                                 .FontSize(20)
                                 .Placeholder("Find your stories")
                                 .PlaceholderColor(Colors.Gray)
                                 .BackgroundColor(Colors.Transparent)
                                 .OnTextChanged(v => SetState(s => s.TextSearch = v)),
                    }.Margin(20,0,0,0).Spacing(10)
                }
                .StrokeShape(new RoundRectangle().CornerRadius(30))
                .Stroke(Theme.Tim1).Margin(20).ZIndex(1)
                .HeightRequest(50)
                .StrokeThickness(3)
                .BackgroundColor(Colors.White)
            }
            .GridRow(0),
            new ScrollView
            {
                new Grid("Auto,Auto,Auto,*","*")
                {
                    new Label("Recommendations")
                    .FontFamily(Theme.font)
                    .FontSize(20)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.White)
                    .GridRow(0)
                    .Margin(20,0,0,0),
                    new Border()
                    {
                        new CollectionView()
                        .ItemsSource(State.BookList,RenderItem)
                        .ItemsLayout(new HorizontalLinearItemsLayout().ItemSpacing(15))
                        .Margin(20,20,0,20)
                    }.StrokeShape(new RoundRectangle().CornerRadius(20,0,20,0))
                    .Margin(20,20,0,0)
                    .BackgroundColor(Theme.Hong)
                    .GridRow(1),
                    new Label("Continue Reading")
                    .FontFamily(Theme.font)
                    .FontSize(20)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.White)
                    .GridRow(2)
                    .Margin(20,20,0,0),
                     new CollectionView()
                        .ItemsSource(State.BookList1,RenderItem1)
                        .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(15))
                        .Margin(20)
                        .GridRow(3)
                }
            }.GridRow(1)
        }.GridRow(1);
    }

    private VisualNode RenderItem1(Result item)
    {
        var a = new Random().Next(1, 5);
        var b = new Random().Next(1, 9);
        var c = double.Parse($"{a}.{b}");
        return new Border
        {
            new Grid("*","Auto,*")
            {
                   new Border
                    {
                        new Image(item.formats.imagejpeg)
                        .Aspect(Aspect.Fill)
                    }.HeightRequest(150)
                    .WidthRequest(100)
                    .VCenter().HCenter()
                    .StrokeShape(new RoundRectangle().CornerRadius(10))
                    .GridColumn(0),
                    new VStack
                    {
                        new Label(item.title)
                        .FontFamily(Theme.font)
                        .FontSize(15)
                        .MaxLines(2)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .TextColor(Colors.White)
                        ,
                        new Label(item.authors[0].name)
                        .FontFamily(Theme.font)
                        .FontSize(13)
                        .MaxLines(1)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .TextColor(Colors.Gray),
                        new HStack
                        {
                            new Label($"{a}.{b}")
                            .TextColor(Colors.White)
                            .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                .FontSize(13)
                                .FontFamily(Theme.font),
                             new SimpleRatingControl()
                            .Amount(5)
                            .CurrentValue(c)
                            .RatingType(SimpleRatingControlMaui.RatingType.Star)
                            .AccentColor(Colors.Yellow)
                            .FontSize(13)
                        }
                        .Spacing(10),
                        new Label("hehe")
                        .FontFamily(Theme.font)
                        .FontSize(13)
                        .TextColor(Colors.White),
                        new Border
                        {

                        }.BackgroundColor(Theme.Hong)
                        .Stroke(Colors.White)
                        .StrokeThickness(2)
                        .HeightRequest(30)
                        .StrokeShape(new RoundRectangle().CornerRadius(20))
                    }.GridColumn(1).Margin(15,0,15,0).Spacing(5)
            }.Margin(20)
        }.Margin(15)
        .BackgroundColor(Colors.Transparent)
        .HeightRequest(200)
        .Stroke(Theme.Hong)
        .StrokeDashArray(new MauiControls.DoubleCollection(new double[] {5,5}))
        .StrokeDashOffset(6)
        .StrokeThickness(2)
        .StrokeShape(new RoundRectangle().CornerRadius(20))
        .OnTapped(()=>OpenReadBook(item.id.ToString()));
    }

    private VisualNode RenderItem(Result item)
    {
        var a = new Random().Next(1,5);
        var b = new Random().Next(1,9);
        var c = double.Parse($"{a}.{b}");
        return new Border
        {
            new Grid("Auto,*","*")
            {
                new Border
                {
                    new Image(item.formats.imagejpeg)
                    .Aspect(Aspect.Fill)
                }.HeightRequest(150)
                .WidthRequest(100)
                .VCenter().HCenter()
                .StrokeShape(new RoundRectangle().CornerRadius(10))
                .GridRow(0)
                ,
                new VStack
                {
                    new HStack
                    {
                        new Label($"{a}.{b}")
                        .TextColor(Colors.Black)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                            .FontSize(13)
                            .FontFamily(Theme.font),
                         new SimpleRatingControl()
                        .Amount(5)
                        .CurrentValue(c)
                        .RatingType(SimpleRatingControlMaui.RatingType.Star)
                        .AccentColor(Colors.Yellow)
                        .FontSize(13)
                    }
                    .Spacing(10),
                    new RoundRectangle()
                    .BackgroundColor(Colors.Black)
                    .HeightRequest(1)
                    .Margin(10),
                    new Label(item.title)
                    .FontFamily(Theme.font)
                    .FontSize(15)
                    .MaxLines(1)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.Black)
                    ,
                    new Label(item.authors[0].name)
                    .FontFamily(Theme.font)
                    .FontSize(13)
                    .MaxLines(1)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.Gray)
                }.GridRow(1)
            }.Margin(15,10,15,10)
        }.HeightRequest(250)
        .StrokeShape(new RoundRectangle().CornerRadius(20))
        .WidthRequest(130)
        .OnTapped(() => OpenReadBook(item.id.ToString()));
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
                new Label("EBook")
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .FontSize(30)
                .FontFamily(Theme.font)
                .GridColumn(1)
                .Margin(20,0,0,0)
                ,
            }
            .Margin(10, 0, 0, 0)
            .GridRow(0).ZIndex(1).BackgroundColor(Theme.Bg);
    }
}