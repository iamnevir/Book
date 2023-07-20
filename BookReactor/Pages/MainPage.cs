
using MauiReactor;
using MauiReactor.Animations;
using MauiReactor.Shapes;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;


[Scaffold(typeof(Xe.AcrylicView.AcrylicView))]
public partial class AcrylicView { }
[Scaffold(typeof(SkiaSharp.Extended.UI.Controls.SKSurfaceView))]
partial class SKSurfaceView { }

[Scaffold(typeof(SkiaSharp.Extended.UI.Controls.SKAnimatedSurfaceView))]
partial class SKAnimatedSurfaceView { }

[Scaffold(typeof(SkiaSharp.Extended.UI.Controls.SKLottieView))]
partial class SKLottieView { }

class MainPageState
{
    public Book HeaderBook { get; set; }
}

class MainPage : Component<MainPageState>
{
    GoogleBookServices _googleBookServices;
    protected override async void OnMounted()
    {
        State.HeaderBook = await _googleBookServices.GetBookDetailAsync("twm-qEmxw38C");
        Debug.WriteLine("hehe");
        base.OnMounted();
    }
    public override VisualNode Render()
    {
        return new NavigationPage
        {
              new ContentPage
              {
                  new Grid
                  {
                     
                      new NavBar()
                  }.BackgroundColor(Colors.Black)
              }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false)
        };

    }
}

class NavBarState
{
    public bool HomeSelected { get; set; }
    public bool BookSelected { get; set; }
    public bool FavoriteSelected { get; set; }
    public bool UserSelected { get; set; }
}
class NavBar : Component<NavBarState>
{
    public override VisualNode Render()
    {
        return new Border
        {
            new AcrylicView
            {
                new HStack
                {
                    new Image(State.HomeSelected?"nha":"inha")
                    .HeightRequest(30),
                    new Image(State.BookSelected?"sach":"isach")
                    .HeightRequest(30),
                    new Image(State.FavoriteSelected?"favorite":"ifavorite")
                    .HeightRequest(30),
                    new Image(State.UserSelected?"user":"iuser")
                    .HeightRequest(30),
                }.Spacing(35)
                .HCenter()
            }.EffectStyle(Xe.AcrylicView.Controls.EffectStyle.ExtraLight)
            .HFill()
            .VFill()
        }.BackgroundColor(Colors.White)
        .VEnd()
        .Stroke(Colors.Transparent)
        .HCenter()
        .StrokeShape(new RoundRectangle().CornerRadius(70))
        .HeightRequest(50)
        .WidthRequest(300)
        .Margin(0, 0, 0, 50);
    }
}

class HomePageState
{
    
}
class HomePage : Component<HomePageState>
{
    Book _headerBook;
    public HomePage GetBook(Book book)
    {
        _headerBook = book;
        return this;
    }
    public override VisualNode Render()
    {
        return 
             new Grid("50,400","*")
            {
                RenderHeader(),
                new Border
                {
                    new Grid
                    {
                        new Image(_headerBook.items.FirstOrDefault().volumeInfo.imageLinks.thumbnail)
                        .Aspect(Aspect.Fill)
                        ,
                        new Border
                        {

                        }.VEnd()
                    }
                }.GridRow(1)
            }.BackgroundColor(Colors.Black)
        ;
           
    }

    private VisualNode RenderHeader()
    {
        return new HStack
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
                ,
                new Label("Stories")
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .FontSize(30)
                .FontFamily(Theme.font)
                .HCenter()

                ,
                 new SKLottieView()
                .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                {
                    File="tb.json"
                })
                .RepeatCount(-1)
                .IsAnimationEnabled(true)
                .IsEnabled(true)
                .IsVisible(true)
                .HeightRequest(70)
                .WidthRequest(70)
                .BackgroundColor(Colors.Transparent)
                .HEnd()
                .Margin(100,10,0,0)
                ,
                  new SKLottieView()
                .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                {
                    File="search.json"
                })
                .RepeatCount(-1)
                .IsAnimationEnabled(true)
                .IsEnabled(true)
                .IsVisible(true)
                .HeightRequest(60)
                .WidthRequest(60)
                .BackgroundColor(Colors.Transparent)
                .HEnd()
                .Margin(-25,0,0,0)
                ,
            }.Spacing(10)
            .Margin(15, 20, 0, 0)
            .GridRow(0);
    }
}

class StartPageState
{
    public double PanX { get; set; }
    public Size ImageSize { get; set; }
    public ScrollToMode ScrollTo { get; set; }
    public int ImageIndex { get; set; }
    public bool IsPanning { get; set; }
    public DateTime StartDragTime { get; set; }
    public bool StartPageVisible { get; set; } = true;
}
class StartPage : Component<StartPageState>
{
    public override VisualNode Render()
    {
        var currentImage = StartPageImage.StartPageImages[State.ImageIndex];
        var leftImage = StartPageImage.StartPageImages[State.ImageIndex > 0 ? State.ImageIndex - 1 : StartPageImage.StartPageImages.Length - 1];
        var rightImage = StartPageImage.StartPageImages[State.ImageIndex < StartPageImage.StartPageImages.Length - 1 ? State.ImageIndex + 1 : 0];
        return new Grid
        {
              new Grid
                {
                    new Image(leftImage.Image)
                    .TranslationX(-State.ImageSize.Width+State.PanX)
                    .Aspect(Aspect.Fill),

                    new Image(rightImage.Image)
                    .Aspect(Aspect.Fill)
                    .TranslationX(State.ImageSize.Width+State.PanX),

                    new Image(currentImage.Image)
                    .Aspect(Aspect.Fill)
                    .TranslationX(State.PanX),
                     new AnimationController
                    {
                        new SequenceAnimation
                        {
                            new DoubleAnimation()
                                .StartValue(State.PanX)
                                .TargetValue(State.ScrollTo == ScrollToMode.Right ? State.ImageSize.Width : -State.ImageSize.Width)
                                .OnTick(v => SetState(s => s.PanX = v))
                                .Duration(300)
                        }
                    }
                      .IsEnabled(State.ScrollTo != ScrollToMode.None)
                    .OnIsEnabledChanged(enabled =>
                    {
                        SetState(s =>
                        {
                            if (!enabled)
                            {
                                s.ImageIndex = s.ScrollTo == ScrollToMode.Left ?
                                    (s.ImageIndex < StartPageImage.StartPageImages.Length-1 ? s.ImageIndex + 1 : 0)
                                    :
                                    (s.ImageIndex >0 ? s.ImageIndex-1 :StartPageImage.StartPageImages.Length-1);
                                s.ScrollTo = ScrollToMode.None;
                                s.PanX=0;
                            }
                        });
                    })
                }
                 .OnSizeChanged(imageSize =>
                 {
                     SetState(s => s.ImageSize = new Size(imageSize.Width, imageSize.Height));
                 })
                .OnPanUpdated(OnPan),
             new Border
                  {
                      new HStack
                      {
                          new Ellipse()
                          .HeightRequest(10)
                          .WidthRequest(10)
                          .Stroke(State.ImageIndex==0?Colors.White: Colors.Gray)
                          .StrokeThickness(1)
                          .Fill(State.ImageIndex==0?Colors.White:Colors.Transparent)
                          ,
                          new Ellipse()
                           .HeightRequest(10)
                          .WidthRequest(10)
                          .Stroke(State.ImageIndex==1?Colors.White: Colors.Gray)
                          .StrokeThickness(1)
                          .Fill(State.ImageIndex==1?Colors.White:Colors.Transparent),
                          new Ellipse()
                           .HeightRequest(10)
                          .WidthRequest(10)
                          .Stroke(State.ImageIndex==2?Colors.White: Colors.Gray)
                          .StrokeThickness(1)
                          .Fill(State.ImageIndex==2?Colors.White:Colors.Transparent),
                      }.Spacing(10).HCenter()
                  }.HeightRequest(50)
                  .WidthRequest(100)
                  .BackgroundColor(Colors.Transparent)
                  .VEnd().HCenter()
                  .Margin(0,0,0,100),
                new Border
                {
                    new VStack
                    {
                          new Label("Immerse in the story")
                         .FontSize(30)
                         .FontFamily("EmilysCandy")
                         .VCenter().HCenter()
                         .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                         .TextColor(Colors.White),
                        new Label("The books contain stories that have never been told, mysteries that lie deep in the dark waiting to be answered")
                         .FontSize(13)
                         .FontFamily("EmilysCandy")
                         .VCenter().HCenter()
                         .HorizontalTextAlignment(TextAlignment.Center)
                         .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                         .TextColor(Colors.Gray)
                    }
                }.HeightRequest(120)
                  .WidthRequest(State.ImageSize.Width-100)
                  .BackgroundColor(Colors.Transparent)
                  .VEnd().HCenter()
                  .Margin(0,0,0,130),
                new Button("Skip")
                     .FontSize(18)
                     .FontFamily("EmilysCandy")
                     .TextColor(Colors.Black)
                     .VEnd().HCenter()
                     .BackgroundColor(Colors.White)
                     .HeightRequest(50)
                     .WidthRequest(100)
                     .CornerRadius(30)
                     .Margin(0,0,0,50)
                     .OnClicked(()=>SetState(s=>s.StartPageVisible=false))
        }.IsVisible(State.StartPageVisible).ZIndex(1)
          ;
    }
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
enum ScrollToMode
{
    None,

    Left,

    Right
}
