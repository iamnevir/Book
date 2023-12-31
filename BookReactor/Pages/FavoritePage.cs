﻿using BookReactor.Pages.Component;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System.Collections.Generic;

namespace BookReactor.Pages;

class FavoritePageState
{
    public bool IsSideMenuShown { get; set; }
    public double TranslationX { get; set; } = 220;

    public double RotationY { get; set; } = -12;
    public double MarginLeft { get; set; } = -30.0;
    public bool IsLoading { get; set; }


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
    private async void OpenMagicBookPage()
    {
        await Navigation.PushAsync<MagicBookPage>();
    }
    private async void OpenEBookPage()
    {
        await Navigation.PushAsync<EBookPage>();
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
                      .OnMagicBookPage(OpenMagicBookPage)
                      .MenuSelect(CommandMenuItem.Favorites)
                      .OnEBookPage(OpenEBookPage)
                      .OnClose(()=>
                      {
                            SetState(s=>s.IsSideMenuShown=false);
                            InitializeState();
                      }),
              
                new Grid("Auto,*","*")
                {
                    RenderFavorite(),
                    RenderHeader()
                }.RotationY(State.RotationY)
                .TranslationX(State.TranslationX)
                .WithAnimation(easing: Easing.CubicIn, duration: 300)

            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty, false)
        .BackgroundColor(Theme.Bg);
    }

    private VisualNode RenderFavorite()
    {
        return new VStack
        {
            RenderBookshelf(0,Theme.Bookshelf1,"Yêu thích","tủ sách ưa thích của bạn"),
            RenderBookshelf(3,Theme.Bookshelf2,"Đang đọc","chứa sách bạn đang đọc nè"),
            RenderBookshelf(4,Theme.Bookshelf3,"Đã đọc","tủ sách mà bạn đã đọc"),
            RenderBookshelf(8,Theme.Bookshelf4,"Gợi ý","gợi ý sách cho bạn"),
            RenderBookshelf(2,Theme.Bookshelf5,"Để đọc","tủ sách để đọc"),
        }.GridRow(1).Margin(5,125,5,0);
    }

    VisualNode RenderBookshelf(int id,Color bg, string bookshelf, string description)
    {
        return new BookshelfItem()
            .GetBookshelfId(id)
            .GetBookshelf(bookshelf)
            .GetBg(bg)
            .GetText(description);
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
            .Margin(10, 0, 0, 0)
            .GridRow(0).ZIndex(1).BackgroundColor(Theme.Bg);
    }
}
class BookshelfItemState
{
    public double Height { get; set; }
    public double Margin { get; set; }
    public List<Item> Books { get; set; } = new();
    public bool OnXoa { get; set; }
    public bool ChuaDangNhap { get; set; }
    public bool IsShown { get; set; }

}
class BookshelfItem:Component<BookshelfItemState>
{
    
    int _id;
    string _bookshelf;
    Color _bg;
    string _description;
    public BookshelfItem GetBookshelfId(int id)
    {
        _id = id;
        return this;
    }
    public BookshelfItem GetBookshelf(string bookshelf)
    {
        _bookshelf = bookshelf;
        return this;
    }
    public BookshelfItem GetBg(Color bg)
    {
        _bg = bg;
        return this;
    }
    public BookshelfItem GetText(string text)
    {
        _description = text;
        return this;
    }
    async void Load()
    {
        if (Logger.KiemTra(Logger.token))
        {
            var googleBook = Services.GetRequiredService<IGoogleServices>();
            var token = await Logger.ReadAsync(Logger.token);
            var bookshelf = await googleBook.GetBookFromBookshelfAsync(token, _id);
            if (bookshelf.items != null)
            {
                SetState(s => s.Books = bookshelf.items);
            }
            else
            {
                SetState(s => s.Books = new());
            }
        }
        else
        {
            SetState(s => s.ChuaDangNhap = true);
        }
    }
    void OnClick()
    {
        double margin=0;
        switch (_id)
        {
            case 0:
                margin = 0;
                break;
            case 3:
                margin = 0;
                break;
            case 4:
                margin = 125;
                break;
            case 8:
                margin = 250;
                break;
            case 2:
                margin = 375;
                break;
        }
        if (State.Height > 0)
        {
            SetState(s => {
                s.Height = 0;
                s.Margin = 0;
            });
        }
        else
        {
            SetState(s => {
                s.Height = 400;
                s.Margin = margin;
            });
        }
    }
    private CommunityToolkit.Maui.Views.Popup? _popup;
    public override VisualNode Render() => new Border
        {
            new Grid("Auto,Auto,*","*,Auto")
            {
                new Label(_description)
                .FontFamily(Theme.font)
                .FontSize(16)
                .TextColor(Colors.Black)
                .GridRow(0)
                ,
                new Label(_bookshelf.ToUpper())
                .FontFamily(Theme.font)
                .FontSize(35)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .TextColor(Colors.Black)
                .Margin(0,5,0,0)
                .GridRow(1)
                ,
                new VStack
                {
                    new Label("books")
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .FontFamily(Theme.font)
                    .FontSize(18)
                    .HCenter()
                    .TextColor(Colors.Black),
                     new Label("shelf")
                    .FontFamily(Theme.font)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .FontSize(18)
                    .TextColor(Colors.Black)
                    .HCenter(),
                }.Spacing(5)
                .GridColumn(1)
                .GridRowSpan(2)
                ,
                new Grid("Auto,*","*")
                {
                    new Grid
                    {
                         new PopupHost(r => _popup = r)
                        {
                            new Border
                            {
                                new Grid("Auto,*,Auto","*")
                                {
                                    new Label("Bạn có muốn xóa hết?")
                                    .TextColor(Colors.Black)
                                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    .FontSize(18)
                                    .FontFamily(Theme.font)
                                    .Margin(0,0,0,0)
                                    .GridRow(0),
                                    new Grid("*","Auto,*,Auto")
                                    {
                                        new Button("OK", ()=> _popup?.Close(true))
                                        .GridColumn(0)
                                        .TextColor(Colors.White)
                                        .BackgroundColor(Colors.Blue)
                                        .CornerRadius(20),

                                        new Button("Cancel", ()=> _popup?.Close(false))
                                        .TextColor(Colors.Blue)
                                        .BackgroundColor(Colors.Transparent)
                                        .GridColumn(2)
                                        .CornerRadius(20),
                                    }.GridRow(1).Margin(0,30,0,0)
                                }.Margin(30,20,30,20)
                            }.BackgroundColor(Colors.White)
                             .StrokeShape(new RoundRectangle().CornerRadius(20))
                        }
                        .IsShown(State.IsShown)
                        .OnClosed(result =>
                        { 
                            SetState(s =>s.IsShown = false);
                            if ((bool)result)
                            {
                                ClearAll();
                            }
                        }),
                    },
                    new Grid("*","Auto,*,Auto")
                    {
                        new Label(State.ChuaDangNhap?"Bạn chưa đăng nhập!":State.Books.Count==0?"Không có cuốn sách nào!":$"Danh sách {_bookshelf.ToLower()} ({State.Books.Count})")
                        .FontFamily(Theme.font)
                        .FontSize(20)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .Margin(0,6,0,0)
                        .TextColor(Colors.Black).GridColumn(0),
                        new Button("Clear")
                        .CornerRadius(30)
                        .HeightRequest(40)
                        .WidthRequest(80)
                        .FontFamily(Theme.font)
                        .FontSize(16)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .BackgroundColor(Theme.Do)
                        .TextColor(Colors.White)
                        .IsVisible(State.Books.Count>0)
                        .OnTapped(()=>SetState(s=>s.IsShown=true))
                        .GridColumn(2),

                    }
                    .GridRow(0)
                    ,
                    new CollectionView()
                    .ItemsSource(State.Books,RenderBookItem)
                    .ItemsLayout(new HorizontalLinearItemsLayout().ItemSpacing(10))
                    .GridRow(1)
                    .Margin(0,0,0,50)
                }.Margin(0,30,0,0)
                .GridRow(2).VCenter()
                .BackgroundColor(Colors.Transparent)
                .IsVisible(State.Height>0)
                .GridColumnSpan(2)

            }.Margin(30,30,20,0)
            .OnTapped(()=>{
                    OnClick();
                    Load();
            })
        }
        .StrokeShape(new RoundRectangle().CornerRadius(40))
            .HeightRequest(195 + State.Height)
            .Margin(0, -70 - State.Margin, 0, 0)
            .WithAnimation(easing: Easing.CubicInOut, duration: 600)
            .BackgroundColor(_bg)
            ;

    private async void ClearAll()
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        var token = await Logger.ReadAsync(Logger.token);
        var kq =await googleBook.RemoveAllBookToFavoriteAsync(token);
        if (kq)
        {
            Load();
            Logger.RemoveAllFavorite();
        }
    }

    private async void OpenDetailBook(Item item)
    {
        await Navigation.PushAsync<BookDetail, BookDetailProps>(_ =>
        {
            _.Book = item;
        });
    }
    MauiControls.Command<string> RemoveFromFavoriteAsync => new MauiControls.Command<string>(Loaded);

    private async void Loaded(string id)
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        var token = await Logger.ReadAsync(Logger.token);
        await googleBook.RemoveBookToFavoriteAsync(token, id);
        await Logger.RemoveFavoriteAsync(Logger.favorite,id);
        Load();
    }
    private VisualNode RenderBookItem(Item item)
    {
        return new Grid
        {
             new Border
                    {
                        new SwipeView
                        {
                            new Grid
                            {

                                 new Image(item.volumeInfo.imageLinks.thumbnail.Replace("http","https"))
                                .Aspect(Aspect.Fill)
                                ,
                                 new HStack()
                                 {
                                     new SimpleRatingControl()
                                    .Amount(5)
                                    .CurrentValue(item.volumeInfo.averageRating)
                                    .RatingType(SimpleRatingControlMaui.RatingType.Star)
                                    .AccentColor(Colors.White)
                                    .FontSize(13),
                                     new Label(item.volumeInfo.averageRating)
                                     .FontFamily(Theme.font)
                                     .TextColor(Colors.White)
                                     .FontSize(13)
                                 }.VEnd().HCenter().Margin(0,0,0,10).Spacing(15)
                            }
                        }
                        .BottomItems(new MauiControls.SwipeItems(new List<MauiControls.SwipeItem>()
                                {
                                    new MauiControls.SwipeItem
                                    {
                                        BackgroundColor = Theme.Do,
                                        IconImageSource = "delet.png",
                                        Command = RemoveFromFavoriteAsync,
                                        CommandParameter = item.id,
                                        Text="Xóa",
                                    }
                                })
                            {
                                SwipeBehaviorOnInvoked = SwipeBehaviorOnInvoked.RemainOpen,
                                Mode = SwipeMode.Reveal,
                            }
                        )
                        .Set(MauiControls.PlatformConfiguration.AndroidSpecific.SwipeView.SwipeTransitionModeProperty,SwipeTransitionMode.Reveal)
                        
                    }.StrokeShape(new RoundRectangle().CornerRadius(20))
                    .Stroke(Colors.Transparent)
                    .Margin(0,-120,0,0)
                     .HeightRequest(180)
                    .WidthRequest(135)
                    .ZIndex(1),
             new Border
            {
                new Grid
                {
                     new VStack
                     {
                        new Label(item.volumeInfo.title)
                                 .FontFamily(Theme.font)
                                 .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                 .TextColor(Colors.Black)
                                 .MaxLines(1)
                                 .FontSize(17),
                        new Label(item.volumeInfo.authors[0])
                                 .FontFamily(Theme.font)
                                 .MaxLines(1)
                                 .TextColor(Colors.Black)
                                 .FontSize(13),
                     }.Margin(20,0,20,15)
                     .Spacing(5)
                     .VEnd()
                     .HCenter()
                }
            }
            .HeightRequest(200)
            .WidthRequest(170)
            .StrokeShape(new RoundRectangle().CornerRadius(20))
            .BackgroundColor(Colors.White)
        }
        .HeightRequest(250)
         .WidthRequest(180)
         .OnTapped(()=>OpenDetailBook(item));
    }

}