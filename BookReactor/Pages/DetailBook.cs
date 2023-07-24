using MauiReactor.Shapes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class DetailBookState
{

}
class DetailBookProps
{
    public Item Book { get; set; }
}
class DetailBook:Component<DetailBookState, DetailBookProps>
{

    public override VisualNode Render()
    {
        var authors = Props.Book.volumeInfo.authors.FirstOrDefault();
        var source = Props.Book.volumeInfo.imageLinks.thumbnail.Replace("&edge=curl&source=gbs_api", "").Replace("http", "https");
        return new ContentPage
        {
            new Grid
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
                    .StrokeShape(new RoundRectangle().CornerRadius(30)),
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
                .ZIndex(1),
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
                new HStack
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
                    }.Spacing(10).VCenter()
                    ,
                    new Image(source)
                    .HeightRequest(200)
                    .WidthRequest(150),
                }.Spacing(40)
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
                }.Spacing(40).Margin(20,0,0,0),
               new VStack
               {
                    new Label(Props.Book.volumeInfo.title)
                    .TextColor(Colors.White)
                        .FontSize(25)
                        .FontFamily(Theme.font).HStart()
                        ,
                    new Label(Props.Book.volumeInfo.description)
                    .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font).HCenter()

               }.Margin(20,0,5,0).Spacing(20),
              
            }.BackgroundColor(Colors.Black).Spacing(20),
            }
            
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false);
    }
}
