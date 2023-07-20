using MauiReactor;
using MauiReactor.Animations;
using MauiReactor.Shapes;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class MainPageState
{
   
}

class MainPage : Component<MainPageState>
{

    public override VisualNode Render()
    {
        return new ContentPage
        {
               new Grid
               {
                  new StartPage()
                  ,
                  new HomePage()
               }.BackgroundColor(Colors.Black)
        };
    }
}

class HomePageState
{

}
class HomePage:Component<HomePageState>
{
    public override VisualNode Render()
    {
        return new Shell
        {

        }.BackgroundColor(Colors.Black);
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
    bool _isVisible;
    public StartPage Visible(bool isVisible)
    {
        _isVisible = isVisible;
        return this;
    }
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
                                .Duration(500)
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
