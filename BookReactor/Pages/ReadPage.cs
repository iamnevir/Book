using MauiReactor;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using Plugin.Maui.ScreenBrightness;
using System.ComponentModel.DataAnnotations;

namespace BookReactor.Pages;

class ReadPageState
{
    public string Font { get; set; } = Theme.font;
    public double FontSize { get; set; } = 15;
    public double LineHeight { get; set; } = 1;
    public double CharacterSpacing { get; set; } = 1;
    public Color TextColor { get; set; } = Colors.Black;
    public Color BgColor { get; set; } 
    [MaxLength(int.MaxValue)]
    public string Text { get; set; }
    public bool IsLoading { get; set; }
    public MauNen Mau { get; set; }
    public int FontChu { get; set; } = 1;
    public bool OpenSetting { get; set; }
    public bool OpenBorder { get; set; }
}
class ReadPageProps
{
    public string Id { get; set; }
}
class ReadPage:Component<ReadPageState, ReadPageProps>
{
    private async void Back()
    {
        await Navigation.PopAsync();
    }
    protected override async void OnMounted()
    {
        var gutenberg = Services.GetRequiredService<IGetTextServices>();
        State.IsLoading = true;
        var text = await gutenberg.GetTextAsync($"cache/epub/{Props.Id}/pg{Props.Id}.txt");
        SetState(s =>
        {
            s.Text = text;
            s.IsLoading = false;
        });
        base.OnMounted();
    }
    void ChangeFontSize()
    {
        switch (State.FontChu)
        {
            case 1:
                SetState(s => s.Font = Theme.font);
                break;
            case 2:
                SetState(s => s.Font = "OpenSan");
                break;
            case 3:
                SetState(s => s.Font = "Poppins");
                break;
            case 4:
                SetState(s => s.Font = "Roboto");
                break;
        }
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid
            {
                new ScrollView
                {
                    new Label(State.Text)
                        .TextColor(State.Mau==MauNen.Trang?Colors.Black:State.Mau==MauNen.Den?Colors.White:State.Mau==MauNen.Xam?Colors.White:Colors.Black)
                        .FontSize(State.FontSize)
                        .FontFamily(State.Font)
                        .LineHeight(State.LineHeight)
                        .CharacterSpacing(State.CharacterSpacing)
                        .OnTapped(()=>SetState(s=>s.OpenBorder=!s.OpenBorder))
                }.Margin(30)
                .BackgroundColor(Colors.Transparent)
                .VerticalScrollBarVisibility(ScrollBarVisibility.Never)
                ,
                new Border
                {
                        new VStack
                        {
                            new Border().HeightRequest(30).BackgroundColor(Colors.Transparent)
                            ,
                            new HStack
                            {
                               RenderColorPicker(Colors.Black,State.Mau==MauNen.Trang,Colors.White,MauNen.Trang),
                               RenderColorPicker(Colors.Black,State.Mau==MauNen.Kem,Theme.Kem,MauNen.Kem),
                               RenderColorPicker(Colors.White,State.Mau==MauNen.Xam,Theme.Bg,MauNen.Xam),
                               RenderColorPicker(Colors.White,State.Mau==MauNen.Den,Colors.Black,MauNen.Den),
                            }.VStart().HCenter().Spacing(35),
                            new Grid("*","100,200")
                            {
                                new Label("Phông chữ")
                                .TextColor(Colors.Gray)
                                .GridColumn(0)
                                .VCenter()
                                .Margin(-10,0,0,0),
                                new Border
                                {
                                     new Label($"{State.Font} ⇵")
                                    .TextColor(Colors.White)
                                    .FontSize(20)
                                    .FontFamily(State.Font)
                                    .VCenter()
                                    .OnTapped(() =>
                                    {
                                        SetState(s =>
                                        {
                                            if (s.FontChu < 4)
                                            {
                                                s.FontChu++;
                                            }
                                            else
                                            {
                                                s.FontChu=1;
                                            }
                                        });
                                        ChangeFontSize();
                                    })
                                }.BackgroundColor(Colors.Transparent)
                                .GridColumn(1)
                                .VCenter()
                                .Margin(0,0,0,0)
                                .HCenter()
                                .HeightRequest(30)
                            }
                            .HCenter()
                            .HeightRequest(30)
                            .BackgroundColor(Colors.Transparent)
                            .WidthRequest(300),
                            new HStack
                            {
                                new VStack
                                {
                                    
                                    new Border
                                     {
                                          new Slider()
                                        .HeightRequest(60)
                                        .WidthRequest(100)
                                        .OnValueChanged(v=>SetState(s=>s.FontSize=v))
                                        .Maximum(30).HCenter()
                                        .Minimum(10)
                                        .MaximumTrackColor(Colors.Gray)
                                        .Value(State.FontSize)
                                        .ThumbColor(Colors.White)
                                     }.HeightRequest(60)
                                        .WidthRequest(100)
                                        .Rotation(-90)
                                        .StrokeShape(new RoundRectangle().CornerRadius(20))
                                        .Stroke(Theme.Vien)
                                        .BackgroundColor(Theme.Xanh),
                                    new Label("Cỡ chữ")
                                    .TextColor(Colors.Gray)
                                    .HCenter()
                                    ,
                                }.Spacing(20),
                                new VStack
                                {
                                    
                                     new Border
                                     {
                                          new Slider()
                                        .HeightRequest(60)
                                        .WidthRequest(100)
                                        .OnValueChanged(v=>SetState(s=>s.LineHeight=v))
                                        .Maximum(2).HCenter()
                                        .Minimum(1)
                                        .Value(State.LineHeight)
                                        .MaximumTrackColor(Colors.Gray)
                                        .ThumbColor(Colors.White)
                                     }.HeightRequest(60)
                                        .WidthRequest(100)
                                        .Rotation(-90)
                                        .StrokeShape(new RoundRectangle().CornerRadius(20))
                                        .Stroke(Theme.Vien)
                                        .BackgroundColor(Theme.Xanh)
                                    ,
                                      new Label("Dãn dòng")
                                .TextColor(Colors.Gray).HCenter(),
                                }.Spacing(20),
                                new VStack
                                {
                                   
                                     new Border
                                     {
                                          new Slider()
                                        .HeightRequest(60)
                                        .WidthRequest(100)
                                        .OnValueChanged(v=>SetState(s=>s.CharacterSpacing=v))
                                        .Maximum(3).HCenter()
                                        .Minimum(1)
                                        .MaximumTrackColor(Colors.Gray)
                                        .ThumbColor(Colors.White)
                                        .Value(State.CharacterSpacing)
                                     }.HeightRequest(60)
                                        .WidthRequest(100)
                                        .Rotation(-90)
                                        .StrokeShape(new RoundRectangle().CornerRadius(20))
                                        .Stroke(Theme.Vien)
                                        .BackgroundColor(Theme.Xanh),
                                      new Label("Dãn chữ")
                                .TextColor(Colors.Gray).HCenter(),
                                }.Spacing(20),

                                 new VStack
                                {
                                   
                                     new Border
                                     {
                                          new Slider()
                                        .HeightRequest(60)
                                        .WidthRequest(100)
                                        .OnValueChanged(v=>ScreenBrightness.Default.Brightness=(float)v)
                                        .Maximum(100).HCenter()
                                        .Minimum(10)
                                        .MaximumTrackColor(Colors.Gray)
                                        .ThumbColor(Colors.White)
                                     }.HeightRequest(60)
                                        .WidthRequest(100)
                                        .Rotation(-90)
                                        .StrokeShape(new RoundRectangle().CornerRadius(20))
                                        .Stroke(Theme.Vien)
                                        .BackgroundColor(Theme.Xanh),
                                      new Label("Độ sáng")
                                .TextColor(Colors.Gray).HCenter(),
                                }.Spacing(20)

                            }.Spacing(-15)
                            .Margin(0,20,0,0)
                            .HCenter(),
                             new Grid("*","*,Auto,Auto")
                            {
                                new Border
                                {
                                    new Image(State.OpenSetting?"kmo":"mo")
                                    .HCenter().VCenter()
                                    .Aspect(Aspect.AspectFit)
                                    .HeightRequest(20)
                                    .WidthRequest(20)
                                }.HeightRequest(40)
                                .WidthRequest(40)
                                .OnTapped(()=>SetState(s=>s.OpenSetting=!s.OpenSetting))
                                .BackgroundColor(Theme.Bg)
                                .StrokeShape(new MauiReactor.Shapes.Ellipse())
                                .Margin(0,0,10,0)
                                .GridColumn(2),
                                new Label("Cài đặt")
                                .TextColor(Theme.Xanh)
                                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                .FontSize(20)
                                .Margin(0,5,10,0)
                                .GridColumn(1),
                            }.Margin(0,10,0,0)
                            ,
                        }.Spacing(20)
                        .Margin(0,10,0,0)
                        .VStart()
                }.HeightRequest(400)
                .VStart()
                .StrokeShape(new RoundRectangle().CornerRadius(5))
                .BackgroundColor(Theme.XanhDam)
                .TranslationY(State.OpenSetting?-330: 0)
                .IsVisible(State.OpenBorder)
                .WithAnimation(easing:Easing.BounceOut,duration:600)
                ,

                 new Border
                 {
                      new Image("trove")
                                    .HCenter().VCenter()
                                    .Aspect(Aspect.AspectFit)
                                    .HeightRequest(20)
                                    .WidthRequest(20)
                 }.HeightRequest(50)
                                .WidthRequest(50)
                                .OnTapped(Back)
                                .BackgroundColor(Theme.Bg)
                                .StrokeShape(new MauiReactor.Shapes.Ellipse())
                                .Margin(10,10,0,0)
                                .IsVisible(State.OpenBorder)
                                .VStart()
                                .HStart(),
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false)
        .BackgroundColor(State.Mau == MauNen.Trang ? Colors.White : State.Mau == MauNen.Den ? Colors.Black : State.Mau == MauNen.Xam ? Theme.Bg : Theme.Kem)
        .HeightRequest(DeviceDisplay.MainDisplayInfo.Height);
    }
    Border RenderColorPicker(Color textcolor,bool ontick,Color bg,MauNen theme) =>
        new Border
                                {
                                    new Label("L")
                                    .HCenter().VCenter()
                                    .TextColor(textcolor)
                                    .RotationX(180)
                                    .Rotation(130)
                                    .FontSize(20)
                                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    .IsVisible(ontick)
                                }.HeightRequest(ontick?60:50)
                                .WidthRequest(ontick ? 60 : 50)
                                .Background(bg)
                                .Stroke(ontick?Theme.Vien:Colors.Gray)
                                .StrokeThickness(ontick?3:1)
                                .StrokeShape(new MauiReactor.Shapes.Ellipse())
                                .OnTapped(()=>SetState(s=>s.Mau=theme));
                                
}

class ReadPageHtmlProps
{
    public string Id { get; set; }
}
class ReadPageHtmlState
{
}
class ReadPageHtml:Component<ReadPageHtmlState, ReadPageHtmlProps>
{
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid
            {
                new WebView($"https://www.gutenberg.org/cache/epub/{Props.Id}/pg{Props.Id}-images.html")
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty, false);
    }
}
public enum MauNen
{
    Trang,
    Den,
    Xam,
    Kem
}
