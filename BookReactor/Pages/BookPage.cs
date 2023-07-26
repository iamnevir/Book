
using Maui.Skeleton;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using System.Linq;

namespace BookReactor.Pages;

class BookPageState
{
    public List<Item> Books { get; set; }
    public bool IsLoading { get; set; }
    public Item SelectedBook { get;  set; }
    public string TextSearch { get; set; }
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
        var books = await googleBook.GetBook("viet&filter=ebooks", "10");
        SetState(s =>
        {
            s.Books = books.items;
            s.IsLoading = false;
        });
        base.OnMounted();
    }
    protected override async void OnPropsChanged()
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();

        var books = await googleBook.GetBook(State.TextSearch is not null?State.TextSearch:"viet&filter=ebooks", "10");
        SetState(s =>
        {
            s.Books = books.items;
            s.IsLoading = false;
        });
        base.OnPropsChanged();
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid("60,100,*","*")
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
                    }.GridRow(0)
                    .Spacing(50)
                    .Margin(10,10,0,0)
                    .GridRow(0),
                 new Border
                 {
                     new HStack
                     {
                         new Entry()
                         .TextColor(Colors.White)
                         .VCenter()
                         .HCenter()
                         .HeightRequest(60)
                         .WidthRequest(200)
                         .FontFamily (Theme.font)
                         .FontSize(20)
                         .BackgroundColor(Colors.Transparent)
                         .OnTextChanged(v=>SetState(s=>s.TextSearch=v)),
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
                        .OnTapped(() =>
                        {
                            SetState(s=>s.IsLoading=true);
                            OnPropsChanged();
                        })
                     }.Margin(20,0,0,0)
                 }
                 .HeightRequest(80)
                 .WidthRequest(300)
                   .BackgroundColor(Colors.Black)
                   .StrokeShape(new RoundRectangle().CornerRadius(40))
                   .GridRow(1),
                new ScrollView
                {
                    RenderCollection()
                }.GridRow(2)
            }.BackgroundColor(Theme.Bg)
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false);
    }

    private VisualNode RenderCollection()
    {
        if (State.IsLoading)
        {
            return new Grid
            {
                new Label("Thí chú đợi xíu ...")
                .TextColor(Colors.White)
                .FontSize(20)
                .Margin(10,0,0,0)
                .FontFamily(Theme.font)
            };
        }
        else
        {
            return new CollectionView()
                    .ItemsLayout(
                        new VerticalGridItemsLayout(2)
                        .VerticalItemSpacing(20)
                        .HorizontalItemSpacing(0))
                    .ItemsSource(State.Books, RenderBookGrid)
                    ;
        }
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
            return new Border()
            {
                new AcrylicView
                {
                    new Grid("170,*","*")
                    {
                        new Border
                        {
                             new Image(source)
                            
                            .Aspect(Aspect.AspectFill),
                        }.HeightRequest(160)
                        .WidthRequest(130)
                        .HCenter()
                        .StrokeShape(new RoundRectangle().CornerRadius(10))
                        .GridRow(0)
                        .Margin(0,10,0,0),
                        new VStack
                        {
                             new Label(item.volumeInfo.title)
                            .TextColor(Colors.White)
                                    .FontSize(15)
                                    .FontFamily(Theme.font)
                                    .MaxLines(1),
                            new Label(authors)
                            .TextColor(Colors.Gray)
                                    .FontSize(13)
                                    .FontFamily(Theme.font)
                                    .MaxLines(1),
                            new Grid("*","85,*")
                            {
                                 new Label(item.saleInfo.saleability)
                                    .TextColor(Colors.Gray)
                                    .FontSize(13)
                                    .FontFamily(Theme.font)
                                    .GridColumn(0)
                                    .MaxLines(1)
                                    .Margin(0,10,0,0),
                                 new Border
                                 {
                                     new Label("Buy")
                                     .TextColor(Colors.White)
                                    .FontSize(12)
                                    .FontFamily(Theme.font)
                                    .VCenter().HCenter(),
                                 }.BackgroundColor(Colors.Black)
                                 .StrokeShape(new RoundRectangle().CornerRadius(5))
                                 .HCenter()
                                 .HeightRequest(30)
                                 .WidthRequest(50)
                                 .Margin(0,0,15,0)
                                 .GridColumn(1)
                            }
                        }.Spacing(5)
                        .GridRow(1)
                        .Margin(10,10,0,0)
                    }
                    
                }.EffectStyle(Xe.AcrylicView.Controls.EffectStyle.Light),
            }
            .WidthRequest(150)
            .HeightRequest(270)
           .BackgroundColor(Colors.Black)
           .StrokeShape(new RoundRectangle().CornerRadius(10))
           .OnTapped(() =>
           {
               OpenDetailBook(item);
           })
           
           ; 
        }
    }
}
