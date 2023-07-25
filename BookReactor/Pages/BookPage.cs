using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class BookPageState
{
    public List<Item> Books { get; set; }
    public bool IsLoading { get; set; }
    public List<CategorySelect> CategorySelected { get; set; } = new();
    public Item SelectedBook { get;  set; }
}
class BookPage:Component<BookPageState>
{
    private async void Back()
    {
        await Navigation.PopAsync();
    }
    private async void OpenDetailBook(Item book)
    {
        await Navigation.PushAsync<DetailBook, DetailBookProps>(_ =>
        {
            _.Book = book;
        });
    }
    protected override async void OnMounted()
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        State.IsLoading = true;
        var search = "";
        foreach (var s in State.CategorySelected)
        {
            search += $"+subject:{s}";
        }
        var books = await googleBook.GetBook(State.CategorySelected.Any() ? $"{search}" : "viet&filter=ebooks", "10");
        SetState(s =>
        {
            s.Books = books.items;
            s.IsLoading = false;
        });
        base.OnMounted();
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid("60,*","*")
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
                        new Label("Explore Market")
                        .TextColor(Colors.White)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .FontSize(25)
                        .FontFamily(Theme.font)
                        .HCenter()
                        .VCenter(),
                          new SKLottieView()
                        .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                        {
                            File="search.json"
                        })
                        .RepeatCount(0)
                        .IsAnimationEnabled(true)
                        .IsEnabled(true)
                        .IsVisible(true)
                        .HeightRequest(70)
                        .WidthRequest(70)
                        .BackgroundColor(Colors.Transparent)
                    }.GridRow(0)
                    .Spacing(50)
                    .Margin(10,10,0,0)
                    .GridRow(0),
                new ScrollView
                {
                    new CollectionView()
                    .ItemsLayout(
                        new VerticalGridItemsLayout(2)
                        .VerticalItemSpacing(20)
                        .HorizontalItemSpacing(0))
                    .ItemsSource(State.Books,RenderBookGrid)
                }.GridRow(1)
            }.BackgroundColor(Theme.Bg)
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false);
    }

    private VisualNode RenderBookGrid(Item item)
    {
        if (item.volumeInfo.authors is null || item.volumeInfo.imageLinks is null)
        {
            return null;
        }
        else
        {
            var authors = item.volumeInfo.authors.FirstOrDefault();
            var source = item.volumeInfo.imageLinks.thumbnail.Replace("&edge=curl&source=gbs_api", "").Replace("http", "https");
            return new Border
            {
                new VStack
                {
                    new Image(source)
                    .HeightRequest(150)
                    .Aspect(Aspect.AspectFill),
                     new Label(item.volumeInfo.title)
                    .TextColor(Colors.White)
                            .FontSize(13)
                            .FontFamily(Theme.font)
                            .MaxLines(1),
                    new Label(authors)
                    .TextColor(Colors.Gray)
                            .FontSize(10)
                            .FontFamily(Theme.font),
                    new Grid("*","70,45")
                    {
                         new Label(item.saleInfo.saleability)
                            .TextColor(Colors.Gray)
                            .FontSize(10)
                            .FontFamily(Theme.font)
                            .GridColumn(0),
                         new Border
                         {
                             new Label("Buy")
                             .TextColor(Colors.Black)
                            .FontSize(10)
                            .FontFamily(Theme.font)
                            .VCenter().HCenter(),
                         }.BackgroundColor(Colors.White)
                         .StrokeShape(new RoundRectangle().CornerRadius(5))
                         .HCenter()
                         .HeightRequest(20)
                         .WidthRequest(30)
                         .GridColumn(1)
                    }
                }.Spacing(10)

            }.WidthRequest(115)
           .BackgroundColor(Colors.Transparent)
           .OnTapped(() =>
           {
               OpenDetailBook(item);

           }); ;
        }
    }
}
