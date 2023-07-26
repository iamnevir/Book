using MauiReactor;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class ReadPageState
{
    public string Font { get; set; } 
    public double FontSize { get; set; }
    public double LineHeight { get; set; }
    public double CharacterSpacing { get; set; }
    public Color TextColor { get; set; } = Colors.Black;
    public Color BgColor { get; set; } 
    [MaxLength(int.MaxValue)]
    public string Text { get; set; }
    public bool IsLoading { get; set; }
}
class ReadPage:Component<ReadPageState>
{
    protected override async void OnMounted()
    {
        var gutenberg = Services.GetRequiredService<IGutenbergApiService>();
        State.IsLoading = true;
        var text = await gutenberg.GetTextAsync("files/1513/1513-0.txt");
        SetState(s =>
        {
            s.Text = text;
            s.IsLoading = false;
        });
        base.OnMounted();
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
                        .TextColor(State.TextColor)
                        .FontSize(State.FontSize)
                        .FontFamily(Theme.font)
                        .LineHeight(1.2)
                        .CharacterSpacing(1)
                }.Margin(30).BackgroundColor(Colors.Transparent),
                new Border
                {
                    new Grid
                    {
                        new VStack
                        {
                            new HStack
                            {
                                new VStack
                                {
                                     new Label("Cỡ chữ")
                                    .TextColor(Colors.White)
                                    .HCenter(),
                                     new Slider()
                                    .HeightRequest(50)
                                    .WidthRequest(100)
                                    .OnValueChanged(v=>SetState(s=>s.FontSize=v))
                                    .Maximum(30)
                                    .HCenter()
                                    .BackgroundColor(Colors.Aqua)
                                    .Minimum(10)
                                    .Rotation(-90)
                                    ,
                                }.Spacing(40),
                                new VStack
                                {
                                     new Label("Dãn dòng")
                                .TextColor(Colors.White).HCenter(),
                                     new Slider()
                                    .HeightRequest(50)
                                    .WidthRequest(100)
                                    .OnValueChanged(v=>SetState(s=>s.LineHeight=v))
                                    .Maximum(30).HCenter()
                                    .BackgroundColor(Colors.Aqua)
                                    .Minimum(10)
                                    .Rotation(-90),
                                }.Spacing(40),
                                new VStack
                                {
                                    new Label("Dãn chữ")
                                .TextColor(Colors.White).HCenter(),
                                     new Slider()
                                    .HeightRequest(50)
                                    .WidthRequest(100).HCenter()
                                    .OnValueChanged(v=>SetState(s=>s.CharacterSpacing=v))
                                    .Maximum(30)
                                    .BackgroundColor(Colors.Aqua)
                                    .Minimum(10)
                                    .Rotation(-90)
                                    ,
                                }.Spacing(40)

                            },
                            new HStack
                            {
                                new MauiReactor.Shapes.Ellipse
                                {
                                    new Image()
                                }
                                ,

                            }
                        }.Spacing(20)
                    }
                }.HeightRequest(400).VStart().BackgroundColor(Theme.Bg)
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false)
        .BackgroundColor(State.BgColor)
        .HeightRequest(DeviceDisplay.MainDisplayInfo.Height);
    }
}
public enum MauNen
{
    Trang,
    Den,
    Xam,
    Kem
}
