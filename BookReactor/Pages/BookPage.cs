
using BookReactor.Pages.Component;
using Maui.Skeleton;
using Maui.Skeleton.Animations;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BookReactor.Pages;

class BookPageState
{
    public List<Item> Books { get; set; }
    public bool IsLoading { get; set; }
    public bool IsSearching { get; set; }
    public Item SelectedBook { get;  set; }
    public string TextSearch { get; set; }
    public Category CategorySelected { get; set; }
    public bool IsSideMenuShown { get; set; }
    public double TranslationX { get; set; } = 220;
    public double RotationY { get; set; } = -12;
    public double MarginLeft { get; set; } = -30.0;
    public List<Item> BookHelp { get; set; } = new();

}
public class BookPageProps
{
    public int InitialValue { get; set; }

    public Action<bool> OnValueSet { get; set; }
}
class BookPage:Component<BookPageState, BookPageProps>
{
    private async void Back()
    {
        await Navigation.PushAsync<MainPage,MainPageProps>(_ =>
        {
            _.IsStartPage = false;
        });
    }
    private async void OpenDetailBook(Item book)
    {
        await Navigation.PushAsync<BookDetail, BookDetailProps>(_ =>
        {
            _.Book = book;
        });
    }
    private async void OpenMagicBookPage()
    {
        await Navigation.PushAsync<MagicBookPage>();
    }
    private async void OpenFavoritePage()
    {
        await Navigation.PushAsync<FavoritePage>();
    }
    private async void OpenEBookPage()
    {
        await Navigation.PushAsync<EBookPage>();
    }
    protected override async void OnMounted()
    {
        InitializeState();
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        State.IsLoading = true;
        var books = await googleBook.GetBook("the dark knight");
        SetState(s =>
        {
            s.Books = books.items;
            s.IsLoading = false;
        });
        base.OnMounted();
    }
    protected override void OnPropsChanged()
    {
        InitializeState();
        base.OnPropsChanged();
    }
    async void Search()
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        State.IsLoading = true;
        var books = await googleBook.GetBook(State.TextSearch is not null ? State.TextSearch : State.CategorySelected is not null ? $"subject:{State.CategorySelected.Name}" : "the dark knight");
        SetState(s =>
        {
            s.Books = books.items;
            s.IsLoading = false;
        });
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
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid("*","*")
            {
                new SideMenu()
                      .IsShown(State.IsSideMenuShown)
                      .HomePage(Back)
                      .OnMagicBookPage(OpenMagicBookPage)
                      .OpenFavoritePage(OpenFavoritePage)
                      .MenuSelect(CommandMenuItem.Book)
                      .OnEBookPage(OpenEBookPage)
                      .OnClose(()=>
                      {
                        SetState(s=>s.IsSideMenuShown=false);
                        InitializeState();
                      })
                ,
                new Grid("60,100,Auto,*","*")
                {
                     new HStack
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
                                    }),

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
                             .FontFamily(Theme.font)
                             .FontSize(20)
                             .BackgroundColor(Colors.Transparent)
                             .OnTextChanged(v =>
                             {
                                 SetState(s => s.TextSearch = v);
                                 SearchHelp();
                             }),
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
                                SetState(s=>
                                {
                                    s.IsLoading=true;
                                    s.IsSearching=false; 
                                });
                                Search();
                            })
                         }.Margin(20,0,0,0)
                     }
                     .HeightRequest(80)
                     .WidthRequest(300)
                       .BackgroundColor(Colors.Black)
                       .StrokeShape(new RoundRectangle().CornerRadius(40))
                       .GridRow(1),
                     new Grid("20,*","")
                     {
                         new Grid().GridRow(0).BackgroundColor(Colors.Black)
                         ,
                         new CollectionView()
                         .ItemsSource(State.BookHelp,RenderSearchHelp)
                         .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(5))
                         .BackgroundColor(Colors.Black)
                         .GridRow(1)
                     }.Margin(0,-180,0,0)
                     .ZIndex(1)
                     .WidthRequest(250)
                     .HeightRequest(500)
                     .HCenter()
                     .GridRow(2)
                     .GridRowSpan(2)
                     .IsVisible(State.IsSearching&&State.TextSearch!="")
                     .BackgroundColor(Colors.Black)

                     ,
                     new CollectionView()
                     .ItemsSource(Category.All,RenderCategorySearch)
                     .ItemsLayout(new HorizontalLinearItemsLayout().ItemSpacing(5))
                     .GridRow(2)
                     .Margin(20,5,0,10)
                     ,
                    new ScrollView
                    {
                        RenderCollection()
                    }.GridRow(3)

                }
                .RotationY(State.RotationY)
            .TranslationX(State.TranslationX)
            .WithAnimation(easing: Easing.CubicIn, duration: 300)
            }
        .BackgroundColor(Theme.Bg)
        }
        .Set(MauiControls.NavigationPage.HasNavigationBarProperty,false);
    }

    private VisualNode RenderSearchHelp(Item item)
    {
        if(item.volumeInfo.imageLinks is not null)
        {
            return new Border
            {
                new Grid("*","Auto,*")
                {
                    new Image(item.volumeInfo.imageLinks.thumbnail.Replace("http","https"))
                    .HeightRequest(133)
                    .WidthRequest(100)
                    .GridColumn(0)
                    ,
                    new Label(item.volumeInfo.title)
                    .MaxLines(2)
                    .FontFamily(Theme.font)
                    .FontSize(17)
                    .TextColor(Colors.White)
                    .GridColumn(2)
                }.WidthRequest(250)
                .HeightRequest(133)
            }.BackgroundColor(Colors.Black)
            .OnTapped(() => OpenDetailBook(item));
        }
        else
        {
            return null;
        }
       
    }

    private async void SearchHelp()
    {
        if(State.TextSearch is not null&&State.TextSearch!="")
        {
            
            var googleBook = Services.GetRequiredService<IGoogleServices>();
            var books = await googleBook.GetBook(State.TextSearch);
            SetState(s =>
            {
                s.IsSearching = true;
                s.BookHelp = books.items;
            });
        }
        else
        {
            SetState(s => s.IsSearching = false);
        }
        
    }

    private VisualNode RenderCategorySearch(Category item)
    {
        return new Border
        {
            new Label(item.Name)
             .TextColor(State.CategorySelected == item ? Colors.Black:Colors.White)
                .FontFamily(Theme.font)
                .HCenter().VCenter()
                .MaxLines(1)
                .Margin(35,15,35,15)
        }.BackgroundColor(State.CategorySelected == item ? Colors.White:Theme.BlackBorder)
        .StrokeShape(new RoundRectangle().CornerRadius(20))
        .Stroke(State.CategorySelected==item?Colors.Transparent:Colors.White)
        .StrokeThickness(0.5)
        .OnTapped(()=> {
            if(State.CategorySelected != item)
            {
                SetState(s => {
                    s.CategorySelected = item;
                    s.TextSearch = null;
                    });
            }
            else
            {
                SetState(s => s.CategorySelected = null);
            }

            Search();
        })
        ;

    }

    private VisualNode RenderCollection()
    {
            return new CollectionView()
                    .ItemsLayout(
                        new VerticalGridItemsLayout(2)
                        .VerticalItemSpacing(20)
                        .HorizontalItemSpacing(0))
                    .ItemsSource(State.Books, RenderBookGrid)
                    ;
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
            var source = item.volumeInfo.imageLinks.thumbnail.Replace("http", "https");
            return new Border()
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
            }
            .Set(Skeleton.IsBusyProperty, State.IsLoading)
                    .Set(Skeleton.BackgroundColorProperty, Theme.Bg)
                    .Set(Skeleton.AnimationProperty, new FadeAnimation(500, null))
                    .Set(Skeleton.IsParentProperty, true)
            .WidthRequest(150)
            .HeightRequest(270)
           .BackgroundColor(Theme.BlackBorder3)
           .StrokeShape(new RoundRectangle().CornerRadius(10))
           .OnTapped(() =>
           {
               OpenDetailBook(item);
           })
           
           ; 
        }
    }
}
