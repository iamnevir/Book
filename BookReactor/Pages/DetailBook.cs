using MauiReactor.Shapes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class DetailBookState
{
    public bool IsRead { get; set; }
}
class DetailBookProps
{
    public Item Book { get; set; }
}
class DetailBook:Component<DetailBookState, DetailBookProps>
{
    private async void Back()
    {
        await Navigation.PopAsync();
    }
    public override VisualNode Render()
    {
        var authors = Props.Book.volumeInfo.authors.FirstOrDefault();
        var source = Props.Book.volumeInfo.imageLinks.thumbnail.Replace("&edge=curl&source=gbs_api", "").Replace("http", "https");
        var preView = $"https://www.google.com.vn/books/edition/The_White_Company/{Props.Book.id}?hl=vi&gbpv=1";
        return new ContentPage
        {
            new Grid("*,60","*")
            {
                 new HStack
                {
                    new Border
                    {
                        new Label("Read Book")
                        .TextColor(Colors.White)
                            .FontSize(17)
                            .FontFamily(Theme.font)
                            .VCenter().HCenter()
                    }
                    .HeightRequest(60)
                    .WidthRequest(180)
                    .Stroke(Colors.White)
                    .StrokeThickness(1)
                    .BackgroundColor(Colors.Black)
                    .StrokeShape(new RoundRectangle().CornerRadius(30))
                    .OnTapped(()=>SetState(s=>s.IsRead=true)),
                    new Border
                    {
                        new Label("Play Book")
                        .TextColor(Colors.Black)
                            .FontSize(17)
                            .FontFamily(Theme.font)
                            .VCenter().HCenter()
                    }
                    .HeightRequest(60)
                    .WidthRequest(180)
                    .BackgroundColor(Colors.White)
                    .StrokeShape(new RoundRectangle().CornerRadius(30)),
                }.VEnd().HCenter()
                .Spacing(5)
                .ZIndex(1)
                .GridRow(1)
                .HeightRequest(60),
                 new ScrollView
                 {
                    new VStack
                {
                    new HStack
                    {
                        new Border
                        {
                            new SKLottieView()
                            .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                            {
                                File="back.json"
                            })
                            .RepeatCount(-1)
                            .IsAnimationEnabled(true)
                            .IsEnabled(true)
                            .IsVisible(true)
                            .BackgroundColor(Colors.Transparent),
                        }.StrokeShape(new RoundRectangle().CornerRadius(50))
                        .HeightRequest(50)
                        .WidthRequest(50)
                        .OnTapped(Back)
                        .BackgroundColor(Colors.White),
                        new Label("Book Detail")
                        .TextColor(Colors.White)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .FontSize(25)
                        .FontFamily(Theme.font)
                        .HCenter()
                        .VCenter(),
                        new SKLottieView()
                            .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                            {
                                File="yeuthich.json"
                            })
                            .RepeatCount(-1)
                            .IsAnimationEnabled(true)
                            .IsEnabled(true)
                            .IsVisible(true)
                            .HeightRequest(50)
                            .WidthRequest(50)
                            .BackgroundColor(Colors.Transparent),
                    }.GridRow(0)
                    .Spacing(70)
                    .Margin(10,10,0,0),
                    new Grid("*","210,150")
                    {
                        new VStack
                        {
                            new Label(Props.Book.volumeInfo.title)
                            .TextColor(Colors.White)
                            .FontSize(23)
                            .FontFamily(Theme.font),
                            new Label($"By {authors}")
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font),
                            new Label($"Published {Props.Book.volumeInfo.publishedDate}")
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font)
                        }.Spacing(10).GridColumn(0)
                        ,
                        new Image(source)
                        .HeightRequest(200)
                        .WidthRequest(150)
                        .GridColumn(1)
                        .VStart(),
                    }
                    .Margin(15,0,0,0)
                    ,
                    new HStack
                    {
                        new VStack
                        {
                             new Label("Rating")
                            .TextColor(Colors.White)
                            .FontSize(15)
                            .FontFamily(Theme.font).HCenter(),
                            new Label(Props.Book.volumeInfo.averageRating)
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font).HCenter()
                        }.Spacing(10)
                        ,
                        new Label("|")
                         .TextColor(Colors.Gray)
                            .FontSize(35)
                        ,
                        new VStack
                        {
                              new Label("Page Count")
                            .TextColor(Colors.White)
                            .FontSize(15)
                            .FontFamily(Theme.font).HCenter(),
                            new Label(Props.Book.volumeInfo.pageCount)
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font).HCenter()
                        }.Spacing(10)
                        ,
                        new Label("|")
                         .TextColor(Colors.Gray)
                            .FontSize(35)
                        ,
                        new VStack
                        {
                              new Label("Like")
                            .TextColor(Colors.White)
                            .FontSize(15)
                            .FontFamily(Theme.font).HCenter(),
                            new Label(Props.Book.volumeInfo.ratingsCount)
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font)
                            .HCenter()
                        }.Spacing(10)
                        ,
                    }.Spacing(43).Margin(20,0,0,0),
                   new VStack
                   {
                        new Label(Props.Book.volumeInfo.title)
                        .TextColor(Colors.White)
                            .FontSize(25)
                            .FontFamily(Theme.font).HStart()
                            ,
                        new Grid
                        {
                            new ScrollView
                            {
                                 new Label(Props.Book.volumeInfo.description)
                                .TextColor(Colors.Gray)
                                .FontSize(15)
                                .FontFamily(Theme.font).HCenter()
                            }
                        }.HeightRequest(286),
                        //new Label("...Read More")
                        //.TextColor(Colors.Gray)
                        //        .FontSize(15)
                        //        .FontFamily(Theme.font).HEnd()
                        //        .Margin(0,-22,30,0)
                        //        .IsVisible(State.ReadMore==false)
                        //        .OnTapped(()=>SetState(s=>s.ReadMore=true))
                   }.Margin(20,0,15,0).Spacing(20),

                }.Spacing(20).HCenter(),
                 },
                  new Grid
                 {
                     new WebView(preView),
                     new Border
                     {
                     }.HeightRequest(40)
                     .WidthRequest(40)
                     .VStart().HStart()
                     .BackgroundColor(Colors.Transparent)
                     .Margin(10,10,0,0)
                     .OnTapped(()=>SetState(s=>s.IsRead=false))
                 }.IsVisible(State.IsRead)
                 .GridRow(0)
                 .GridRowSpan(2)
                 .ZIndex(2)
            }.Margin(5,0,0,0),
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false).BackgroundColor(Theme.Bg);
    }
}
