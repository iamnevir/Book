using MauiReactor.Shapes;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class DetailBookState
{
    public bool IsRead { get; set; }
    public int IsFavorite { get; set; } = -1;
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
    private async void AddToFavorite(string id)
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        if (Logger.KiemTra(Logger.token))
        {
            var token = await Logger.ReadAsync(Logger.token);
            await googleBook.AddBookToFavoriteAsync(token, id);
        }
        else
        {
        }
    }
    private async void RemoveFromFavorite(string id)
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        if (Logger.KiemTra(Logger.token))
        {
            var token = await Logger.ReadAsync(Logger.token);
            await googleBook.RemoveBookToFavoriteAsync(token, id);
        }
        else
        {
        }
    }
    public override VisualNode Render()
    {
        var authors = Props.Book.volumeInfo.authors.FirstOrDefault();
        var source = Props.Book.volumeInfo.imageLinks.thumbnail.Replace("http", "https");
        var preView = $"https://www.google.com.vn/books/edition/The_White_Company/{Props.Book.id}?hl=vi&gbpv=1";
        return new ContentPage
        {
            new Grid("*","*")
            {
                 new HStack
                {
                    new Border
                    {
                        new Label("Book Preview")
                        .TextColor(Colors.White)
                            .FontSize(17)
                            .FontFamily(Theme.font)
                            .VCenter().HCenter()
                            .Margin(40,20,40,20)
                    }
                    .Stroke(Colors.White)
                    .StrokeThickness(1)
                    .BackgroundColor(Colors.Black)
                    .StrokeShape(new RoundRectangle().CornerRadius(30))
                    .OnTapped(()=>SetState(s=>s.IsRead=true)),
                    new Border
                    {
                        new Label("Buy Book")
                        .TextColor(Colors.Black)
                            .FontSize(17)
                            .FontFamily(Theme.font)
                            .VCenter().HCenter()
                            .Margin(40,20,40,20)
                    }
                    .BackgroundColor(Colors.White)
                    .StrokeShape(new RoundRectangle().CornerRadius(30)),
                }.VEnd()
                .HCenter().GridRow(0).ZIndex(1)
                .Spacing(5)
                .Margin(0,20,0,5),
                 new Grid("Auto,Auto,Auto,Auto,*","*")
                {
                    new Grid("*","Auto,*,Auto,*,Auto")
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
                        .GridColumn(0)
                        .BackgroundColor(Colors.White),
                        new Label("Book Detail")
                        .TextColor(Colors.White)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .FontSize(25)
                        .FontFamily(Theme.font)
                        .HCenter()
                        .VCenter()
                        .GridColumn(2),
                        new SKLottieView()
                            .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                            {
                                File="yeuthich.json"
                            })
                            .RepeatCount(State.IsFavorite)
                            .IsAnimationEnabled(true)
                            .IsEnabled(true)
                            .IsVisible(true)
                            .HeightRequest(50)
                            .WidthRequest(50)
                            .BackgroundColor(Colors.Transparent)
                            .GridColumn(4)
                            .OnTapped(()=>{
                                if (State.IsFavorite == -1)
                                {
                                    AddToFavorite(Props.Book.id);
                                    SetState(s=>s.IsFavorite=0);
                                }
                                else
                                {
                                    RemoveFromFavorite(Props.Book.id);
                                    SetState(s=>s.IsFavorite=0);
                                }
                            }),
                    }.GridRow(0)
                    .Margin(10,10,0,0),
                    new Grid("*","Auto,*,Auto")
                    {
                        new VStack
                        {
                            new Label(Props.Book.volumeInfo.title)
                            .TextColor(Colors.White)
                            .FontSize(23)
                            .MaxLines(3)
                            .FontFamily(Theme.font),
                            new Label($"By {authors}")
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .MaxLines(2)
                            .FontFamily(Theme.font),
                            new Label($"Published {Props.Book.volumeInfo.publishedDate}")
                            .TextColor(Colors.Gray)
                            .FontSize(15)
                            .MaxLines(1)
                            .FontFamily(Theme.font)
                        }.Spacing(10).GridColumn(0)
                                                .HeightRequest(200)
                        .WidthRequest(150)
                        ,
                        new Image(source)
                        .HeightRequest(200)
                        .WidthRequest(150)
                        .GridColumn(2)
                        .VStart(),
                    }.GridRow(1)
                    .Margin(15,20,0,0)
                    ,
                    new Grid("*","Auto,*,Auto,*,Auto,*,Auto,*,Auto")
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
                        .GridColumn(0)
                        ,
                        new Label("|")
                         .TextColor(Colors.Gray)
                            .FontSize(35)
                            .GridColumn(2)
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
                        .GridColumn(4)
                        ,
                        new Label("|")
                         .TextColor(Colors.Gray)
                            .FontSize(35)
                            .GridColumn(6)
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
                        .GridColumn(8)
                        ,
                    }.Margin(20,20,20,0).GridRow(2),
                   new Grid("Auto,*,60","*")
                   {
                        new Label(Props.Book.volumeInfo.title)
                        .TextColor(Colors.White)
                            .FontSize(25)
                            .FontFamily(Theme.font).HStart()
                            .GridRow(0)
                            .MaxLines(1)
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
                        }.HeightRequest(300)
                        .GridRow(1)
                        .Margin(0,15,0,0),
                   }.Margin(20,20,15,0).GridRow(3),
                }.HCenter().GridRow(0),
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
                 .GridRowSpan(2)
                 .ZIndex(2)
            }.Margin(5,0,5,0),
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false).BackgroundColor(Theme.Bg);
    }
}
