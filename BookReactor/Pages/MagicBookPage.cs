using BookReactor.Pages.Component;
using MauiReactor;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Intrinsics.X86;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;
class MagicBookPageState
{
    public bool IsSideMenuShown { get; set; }
    public double TranslationX { get; set; } = 220;

    public double RotationY { get; set; } = -12;
    public double MarginLeft { get; set; } = -30.0;
    public bool IsLoading { get; set; } = true;
    public List<Item> Book { get; set; } = new();
    public List<BaiSelect> Bai { get; set; } = new();
}
class MagicBookPage:Component<MagicBookPageState>
{
    private async void OpenDetailAuthor(AuthorVip author)
    {
        await Navigation.PushAsync<AuthorDetail, AuthorDetailProps>(_ =>
        {
            _.AuthorDetail = author;
        });
    }
    private async void OpenDetailBook(Item item)
    {
        await Navigation.PushAsync<BookDetail, BookDetailProps>(_ =>
        {
            _.Book = item;
        });
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
    private async void OpenFavoritePage()
    {
        await Navigation.PushAsync<FavoritePage>();
    }
    private async void OpenEBookPage()
    {
        await Navigation.PushAsync<EBookPage>();
    }
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
    string TimIdTheoBai(BaiSelect baiSelect)
    {
        switch (baiSelect)
        {
            case BaiSelect.bai1:
                return "PcWrDwAAQBAJ";
            case BaiSelect.bai2:
                return "yzowDwAAQBAJ";
            case BaiSelect.bai3:
                return "uicqDwAAQBAJ";
            case BaiSelect.bai4:
                return "BCgqDwAAQBAJ";
            case BaiSelect.bai5:
                return "gTowDwAAQBAJ";
            case BaiSelect.bai6:
                return "pjowDwAAQBAJ";
            case BaiSelect.bai7:
                return "LS81DwAAQBAJ";
            case BaiSelect.bai8:
                return "FJkAEAAAQBAJ";
            case BaiSelect.bai9:
                return "q7ACEAAAQBAJ";        
        }return null;
    } 
    protected override void OnMounted()
    {
        InitializeState();
        base.OnMounted();
    }
    protected override async void OnPropsChanged()
    {
        InitializeState();
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        var id1 = TimIdTheoBai(State.Bai[0]);
        var id2 = TimIdTheoBai(State.Bai[1]);
        var id3 = TimIdTheoBai(State.Bai[2]);

        var book1 = await googleBook.GetBookById($"{id1}");
        var book2 = await googleBook.GetBookById($"{id2}");
        var book3 = await googleBook.GetBookById($"{id3}");
        SetState(s =>
        {
            s.Book.Add(book1);
            s.Book.Add(book2);
            s.Book.Add(book3);
            s.IsLoading = false;
        });
        base.OnPropsChanged();
    }
    public override VisualNode Render()
    {

        return new ContentPage
        {
            new Grid
            {
                new CardPage()
                .OnSelected(b=>{
                SetState(s=>s.Bai=b);
                OnPropsChanged(); })
                ,
                new SideMenu()
                      .IsShown(State.IsSideMenuShown)
                      .HomePage(OpenHomePage)
                      .OnBookPage(OpenBookPage)
                      .OpenFavoritePage(OpenFavoritePage)
                      .MenuSelect(CommandMenuItem.MagicBook)
                      .OnEBookPage(OpenEBookPage)
                      .OnClose(()=>
                      {
                        SetState(s=>s.IsSideMenuShown=false);
                        InitializeState();
                      }),
                new Grid("60,*","*")
                {
                   RenderHeader(),
                   RenderMain(),
                }.RotationY(State.RotationY)
            .TranslationX(State.TranslationX)
            .WithAnimation(easing: Easing.CubicIn, duration: 300)

            }
        }.BackgroundColor(Theme.Bg)
        .Set(MauiControls.NavigationPage.HasNavigationBarProperty,false);
    }

    private VisualNode RenderMain()
    {
        return new Grid("Auto,Auto,Auto,*","*")
        {
            new Grid
            {
                new Label("Tác giả nổi bật")
                .TextColor(Colors.White)
                            .FontSize(20)

                            .HStart()
                            .VCenter()
                            .HorizontalTextAlignment(TextAlignment.Center)
                            ,
                new Label("Xem thêm")
                .TextColor(Colors.Blue)
                            .FontSize(20)
                            .FontFamily(Theme.font)
                            .HEnd()
                            .VCenter()
                            .HorizontalTextAlignment(TextAlignment.Center)
            }.GridRow(0).Margin(20,30,30,0)
            ,
            new CollectionView()
            .ItemsSource(AuthorVip.authors,RenderAuthorItem)
            .ItemsLayout(new HorizontalLinearItemsLayout().ItemSpacing(15))
            .GridRow(1)
            .Margin(20,10,0,0)
            .VCenter()
            ,
             new Label("Book for you")
                .TextColor(Colors.White)
                            .FontSize(20)
                            .FontFamily(Theme.font)
                            .GridRow(2)
                            .VStart()
                            .Margin(20,20,0,0)
            ,
             State.IsLoading==false?
            new BookForYou()
            .BookList(State.Book)
            .OpenDetail(OpenDetailBook)
            :
            new SKLottieView()
                .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                {
                    File="loading.json"
                })
                .RepeatCount(-1)
                .IsAnimationEnabled(true)
                .IsEnabled(true)
                .IsVisible(true)
                .HeightRequest(200)
                .WidthRequest(200)
                .VCenter().HCenter()
                .BackgroundColor(Colors.Transparent)
                .GridRow(3)
        }.GridRow(1);
    }

    private VisualNode RenderAuthorItem(AuthorVip author)
    {
        return new Grid
        {
            new Grid("*,Auto","*")
            {
                new Border
                {
                    new Image(author.Source)
                    .Aspect(Aspect.AspectFit)
                }.GridRow(0)
                .StrokeShape(new MauiReactor.Shapes.Ellipse())
                .Stroke(Colors.Transparent)
                .HeightRequest(70).WidthRequest(70)
                .OnTapped(()=>OpenDetailAuthor(author))
                ,
                    new Label(author.Name)
                    .TextColor(Colors.Gray)
                            .FontSize(11)
                            .FontFamily(Theme.font)
                            .HCenter()
                            .HorizontalTextAlignment(TextAlignment.Center)
                    .MaxLines(1)
                    .GridRow(1)
                    .WidthRequest(70)
            }
        }.HeightRequest(100).WidthRequest(70)
        ;
    }

    //private VisualNode RenderBookItem(Item item)
    //{
    //    var source = item.volumeInfo.imageLinks.extraLarge is not null? item.volumeInfo.imageLinks.extraLarge.Replace("http", "https"):"";
    //    return new Border
    //            {
    //                new Image(source)
    //                .Aspect(Aspect.Fill)
    //            }.GridRow(0)
    //            .StrokeShape(new RoundRectangle().CornerRadius(30))
    //            .Shadow(new Shadow().Offset(0,12).Opacity((float)0.35).Radius(12))
    //            .HeightRequest(300).WidthRequest(200)
    //            .Stroke(Colors.Transparent)
    //            .OnTapped(()=>OpenDetailEBook(item))
    //    ;
    //}

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
                new Label("Your Nightmare")
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .FontSize(30)
                .FontFamily(Theme.font)
                .GridColumn(1)
                .Margin(20,0,0,0)
                ,
            }
            .Margin(15, 20, 10, 0)
            .BackgroundColor(Colors.Transparent)
            .GridRow(0);
    }
}

class BookForYouState
{
    public double PanX { get; set; }
    public Size ImageSize { get; set; }
    public ScrollToMode ScrollTo { get; set; }
    public int ImageIndex { get; set; } = 1;
    public bool IsPanning { get; set; }
    public DateTime StartDragTime { get; set; }
    public bool StartPageVisible { get; set; } = true;
}
class BookForYou : Component<BookForYouState>
{
    List<Item> _bookList;
    Action<Item> _action;
    public BookForYou OpenDetail(Action<Item> action)
    {
        _action = action;
        return this;
    }
    public BookForYou BookList(List<Item> item)
    {
        _bookList = item;
        return this;
    }
    private static string GetSource(string source) => source.Replace("http", "https");
    public override VisualNode Render()
    {
        var currentImage = _bookList[State.ImageIndex];
        var leftImage = _bookList[State.ImageIndex > 0 ? State.ImageIndex - 1 : _bookList.Count - 1];
        var rightImage = _bookList[State.ImageIndex < _bookList.Count - 1 ? State.ImageIndex + 1 : 0];
        return new Grid("*,Auto","*")
        {
            new Grid
            {
                    new Border
                    {
                        new Image(GetSource(rightImage.volumeInfo.imageLinks.extraLarge))
                        .Aspect(Aspect.Fill)
                    }
                    .StrokeShape(new RoundRectangle().CornerRadius(30))
                    .Shadow(new Shadow().Offset(0,12).Opacity((float)0.35).Radius(12))
                    .HeightRequest(300).WidthRequest(200)
                    .Stroke(Colors.Transparent)
                    .TranslationX(State.ImageSize.Width + State.PanX)
                    .OnTapped(()=>_action(rightImage))
                    .Rotation(10)
                    .Opacity(0.5).OnPanUpdated(OnPan)
                    .Margin(0,10,200,0),
                    new Border
                    {
                        new Image(GetSource(leftImage.volumeInfo.imageLinks.extraLarge))
                        .Aspect(Aspect.Fill)
                    }
                    .StrokeShape(new RoundRectangle().CornerRadius(30))
                    .Shadow(new Shadow().Offset(0,12).Opacity((float)0.35).Radius(12))
                    .HeightRequest(300).WidthRequest(200)
                    .Stroke(Colors.Transparent)
                    .TranslationX(-State.ImageSize.Width + State.PanX)
                    .OnTapped(()=>_action(leftImage))
                    .Rotation(-10).Margin(200,60,0,0)
                    .Opacity(0.5).OnPanUpdated(OnPan),
                    new Border
                    {
                        new Image(GetSource(currentImage.volumeInfo.imageLinks.extraLarge))
                        .Aspect(Aspect.Fill)
                    }
                    .StrokeShape(new RoundRectangle().CornerRadius(30))
                    .Shadow(new Shadow().Offset(0,12).Opacity((float)0.35).Radius(12))
                    .HeightRequest(300).WidthRequest(200)
                    .Margin(0,0,0,10)
                    .Stroke(Colors.Transparent)
                    .TranslationX(State.PanX)
                    .OnTapped(()=>_action(currentImage))
                    .OnPanUpdated(OnPan),
                    new AnimationController
                    {
                        new SequenceAnimation
                        {
                            new DoubleAnimation()
                                    .StartValue(State.PanX)
                                    .TargetValue(State.ScrollTo == ScrollToMode.Right ? State.ImageSize.Width : -State.ImageSize.Width)
                                    .OnTick(v => SetState(s => s.PanX = v))
                                    .Duration(0)
                        }
                    }.IsEnabled(State.ScrollTo != ScrollToMode.None)
                    .OnIsEnabledChanged(enabled =>
                    {
                        SetState(s =>
                        {
                            if (!enabled)
                            {
                                s.ImageIndex = s.ScrollTo == ScrollToMode.Left ?
                                    (s.ImageIndex < _bookList.Count - 1 ? s.ImageIndex + 1 : 0)
                                    :
                                    (s.ImageIndex > 0 ? s.ImageIndex - 1 : _bookList.Count - 1);
                                s.ScrollTo = ScrollToMode.None;
                                s.PanX = 0;
                            }
                        });
                    })
            }.GridRow(0)
            .OnPanUpdated(OnPan)
            .OnSizeChanged(imageSize =>
                 {
                     SetState(s => s.ImageSize = new Size(imageSize.Width, imageSize.Height));
                 })
                ,
            new Border
            {
                new HStack
                {
                    new RoundRectangle()
                          .HeightRequest(10)
                          .WidthRequest(State.ImageIndex==0 ?30:10)
                          .Stroke(State.ImageIndex == 0 ? Colors.White : Colors.Gray)
                          .StrokeThickness(1)
                          .CornerRadius(10)
                          .Fill(State.ImageIndex == 0 ? Colors.White : Colors.Transparent)
                          .WithAnimation(easing:Easing.CubicInOut,duration:500)
                          ,
                    new RoundRectangle()
                           .HeightRequest(10)
                          .WidthRequest(State.ImageIndex==1 ?30:10)
                          .Stroke(State.ImageIndex == 1 ? Colors.White : Colors.Gray)
                          .StrokeThickness(1).CornerRadius(10)
                          .Fill(State.ImageIndex == 1 ? Colors.White : Colors.Transparent)
                          .WithAnimation(easing:Easing.CubicInOut,duration:500),
                    new RoundRectangle()
                           .HeightRequest(10)
                          .WidthRequest(State.ImageIndex==2 ?30:10)
                          .Stroke(State.ImageIndex == 2 ? Colors.White : Colors.Gray)
                          .StrokeThickness(1).CornerRadius(10)
                          .Fill(State.ImageIndex == 2 ? Colors.White : Colors.Transparent)
                          .WithAnimation(easing:Easing.CubicInOut,duration:500),
                }.Spacing(10).HCenter()
            }.HeightRequest(50)
                  .WidthRequest(100)
                  .BackgroundColor(Colors.Transparent)
                  .VEnd().HCenter()
                  .Margin(0, 0, 0, 40)
                  .GridRow(1),
        }.GridRow(3).Margin(0,0,0,0);
        void OnPan(object? sender, MauiControls.PanUpdatedEventArgs args)
        {
            if (State.ImageSize.IsZero)
            {
                return;
            }

            if (State.ScrollTo != ScrollToMode.None)
            {
                return;
            }

            if (args.StatusType == GestureStatus.Started ||
                args.StatusType == GestureStatus.Running)
            {
                if (args.StatusType == GestureStatus.Started)
                {
                    State.StartDragTime = DateTime.Now;
                }

                SetState(s =>
                {
                    s.PanX = args.TotalX;
                    s.IsPanning = true;
                });
            }
            else if (args.StatusType == GestureStatus.Canceled)
            {
                SetState(s =>
                {
                    s.PanX = 0;
                    s.IsPanning = true;
                });
            }
            else// if (args.StatusType == GestureStatus.Completed)
            {
                if (Math.Abs(State.PanX) > State.ImageSize.Width / 4.0 ||
                    (Math.Abs(State.PanX) > 10 && (DateTime.Now - State.StartDragTime).TotalMilliseconds < 100))
                {
                    SetState(s =>
                    {
                        s.IsPanning = false;
                        s.ScrollTo = State.PanX > 0 ? ScrollToMode.Right : ScrollToMode.Left;
                    });
                }
                else
                {
                    SetState(s =>
                    {
                        s.PanX = 0;
                        s.IsPanning = false;
                    });
                }
            }
        }
    }
}