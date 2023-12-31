﻿
using BookReactor.Pages.Component;
using Maui.Skeleton.Animations;
using Maui.Skeleton;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BookReactor.Pages;


[Scaffold(typeof(SkiaSharp.Extended.UI.Controls.SKSurfaceView))]
partial class SKSurfaceView { }

[Scaffold(typeof(SkiaSharp.Extended.UI.Controls.SKAnimatedSurfaceView))]
partial class SKAnimatedSurfaceView { }

[Scaffold(typeof(SkiaSharp.Extended.UI.Controls.SKLottieView))]
partial class SKLottieView { }

[Scaffold(typeof(SimpleRatingControlMaui.SimpleRatingControl))]
partial class SimpleRatingControl { }
class MainPageState
{
    public bool IsShown { get; set; }
    public bool? Result { get; set; }
    public bool IsSideMenuShown { get; set; }
    public Item SelectedBook { get; set; }
    public CommandMenuItem SelectedMenu { get; set; } = CommandMenuItem.Home;
}
class MainPageProps
{
    public bool IsStartPage { get; set; }=true;
    
}
class MainPage : Component<MainPageState, MainPageProps>
{
    private async void OpenDetailBook(Item book)
    {
        await Navigation.PushAsync<BookDetail, BookDetailProps>(_ =>
        {
            _.Book = book;
        });
    }
    private async void OpenMarket()
    {
        await Navigation.PushAsync<BookPage>();
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
    public override VisualNode Render()
    {
        return new NavigationPage
        {
              new ContentPage
              {
                  new Grid("*","*")
                  {
                      new StartPage()
                      .Visible(Props.IsStartPage)
                      
                      ,
                      new HomePage()
                      .IsHidden(State.IsSideMenuShown)
                      .OpenBookDetail(OpenDetailBook)
                      .OnBookPage(OpenMarket)
                      .OpenSideMenu(()=>SetState(s=>s.IsSideMenuShown=true))
                      ,
                      new SideMenu()
                      .MenuSelect(State.SelectedMenu)
                      .IsShown(State.IsSideMenuShown)
                      .OnBookPage(OpenMarket)
                      .OnEBookPage(OpenEBookPage)
                      .OnMagicBookPage(OpenMagicBookPage)
                      .OpenFavoritePage(OpenFavoritePage)
                      .OnClose(()=>SetState(s=>s.IsSideMenuShown=false))
                  }.BackgroundColor(Colors.Transparent)
              }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false)
        };

    }

    
}


class HomePageState
{
    public VolumeInfo HeaderBook { get; set; } = new();
    public string HeaderBookSoure { get; set; } 
    public string HeaderBookAuthor { get; set; }
    public List<Item> Books { get; set; }
    public Item SelectedBook { get; set; }
    public bool IsLoading { get; set; }
    public bool IsCategoryVisible { get; set; }
    public List<CategorySelect> CategorySelected { get; set; } = new();
    public List<Item> Books1 { get; set; }
    public List<Item> Books2 { get; set; }
    public List<Item> Books3 { get; set; }
    public double TranslationX { get; set; } = 220;

    public double RotationY { get; set; } = -12;

    public double MarginLeft { get; set; } = -30.0;

}
class HomePage : Component<HomePageState>
{
     bool _isShown;
    Action _action1;
    Action _action2;
    Action _action3;
    Action<Item> _selectBook;
    public HomePage OnReadPage(Action action)
    {
        _action3 = action;
        return this;
    }
    public HomePage OnBookPage(Action action)
    {
        _action2 = action;
        return this;
    }
    public HomePage IsHidden(bool isHidden)
    {
        _isShown = !isHidden;
        return this;
    }
    public HomePage OpenBookDetail(Action<Item> action)
    {
        _selectBook = action;
        return this;
    }
    public HomePage OpenSideMenu(Action action)
    {
        _action1 = action;
        return this;
    }
    protected override async void OnMounted()
    {
        InitializeState();
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        State.IsLoading = true;
        var books = await googleBook.GetBook("Dark Nights: Metal");
        var books1 = await googleBook.GetBookWithCount("Dark Nights: Death Metal",5);
        var books2 = await googleBook.GetBook("+subject:Fiction");
        var books3 = await googleBook.GetBook("+inauthor:\"stephen king\"");
        var headerbook = await googleBook.GetBookById("ubVYEAAAQBAJ");
        SetState(s =>
        {
            s.HeaderBook = headerbook.volumeInfo;
            s.HeaderBookSoure = headerbook.volumeInfo.imageLinks.extraLarge.Replace("http", "https");
            s.HeaderBookAuthor = headerbook.volumeInfo.authors.First();
            s.Books = books.items;
            s.Books1 = books1.items;
            s.Books2 = books2.items;
            s.Books3 = books3.items;
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
        if (State.CategorySelected.Any())
        {

            State.IsLoading = true;
            var search = "";
            foreach (var s in State.CategorySelected)
            {
                search += $"+subject:{s}";
            }
            var books = await googleBook.GetBook($"{search}");
            SetState(s =>
            {
                s.Books = books.items;
                s.IsLoading = false;
            });
        }
        else
        {
            State.IsLoading = true;
            var books = await googleBook.GetBook("Dark Nights: Death Metal");
            SetState(s =>
            {
                s.Books = books.items;
                s.IsLoading = false;
            });
        }
    }
    void InitializeState()
    {
        if (DeviceInfo.Current.Platform == DevicePlatform.Android)
        {
            State.TranslationX = _isShown ? 0 : 220;
            State.MarginLeft = _isShown ? -30 : 0;
        }
        else
        {
            State.TranslationX = _isShown ? 0 : 300;
        }

        State.RotationY = _isShown ? 0.0 : -12;
    }
    public override VisualNode Render()
    {
        return new ScrollView
            {
                 new Grid("60,400,Auto,340,*", "*")
                {
                    RenderMain(),
                    RenderHeader(),
                    new HStack
                    {
                        new Label("Category")
                        .TextColor(Colors.White)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .FontSize(20)
                        .FontFamily(Theme.font)
                        .BackgroundColor(Colors.Transparent)
                        .OnTapped(()=>SetState(s=>s.IsCategoryVisible=!s.IsCategoryVisible)),
                        new Border
                                    {
                                        new Image(State.IsCategoryVisible?"mo":"kmo")
                                        .HCenter().VCenter()
                                        .Aspect(Aspect.AspectFit)
                                        .HeightRequest(20)
                                        .WidthRequest(20)
                                        .ScaleX(0.8)
                                    }
                                    .OnTapped(()=>SetState(s=>s.IsCategoryVisible=!s.IsCategoryVisible))
                                    .BackgroundColor(Colors.Transparent)
                                    .Margin(0,0,0,1)
                    }.GridRow(2)
                    .Margin(0,0,20,-30)
                    .HEnd(),
                   //new CollectionView()
                   //.ItemsSource(Category.All,RenderCategoryItem)
                   //.ItemsLayout(new VerticalGridItemsLayout(3))
                   //.GridRow(3),
                   RenderCategory(),
                       new Grid("Auto,Auto,,Auto,Auto,Auto,Auto,*,Auto","*")
                       {
                           new Label(State.CategorySelected.Any()?"Search Book":"Horror Book")
                            .TextColor(Colors.White)
                            .FontSize(20)
                            .FontFamily(Theme.font)
                            .GridRow(0)
                            .Margin(20,0,0,5),
                           State.IsLoading?
                           new SKLottieView()
                            .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                            {
                                File = "loading.json"
                            })
                            .RepeatCount(-1)
                            .IsAnimationEnabled(true)
                            .IsEnabled(true)
                            .IsVisible(true)
                            .HeightRequest(200)
                            .WidthRequest(200)
                            .VCenter().HCenter()
                            .BackgroundColor(Colors.Transparent):
                           new CollectionView()
                           .ItemsSource(State.Books,RenderBookList)
                           .ItemsLayout(new HorizontalGridItemsLayout(2).HorizontalItemSpacing(10).VerticalItemSpacing(10))
                           .GridRow(1)
                           .Margin(20,10,0,0),
                           new Label("Fiction Book")
                            .TextColor(Colors.White)
                            .FontSize(20)
                            .FontFamily(Theme.font)
                            .GridRow(3)
                            .Margin(20,20,0,15),
                           new CollectionView()
                           .ItemsSource(State.Books2,RenderBookList)
                           .ItemsLayout(new HorizontalGridItemsLayout(2).HorizontalItemSpacing(10).VerticalItemSpacing(10))
                           .GridRow(4)
                           .Margin(20,10,0,0),
                           new CarouselView()
                               .ItemsSource(State.Books3,RenderBookList3)
                               .ItemsLayout(new HorizontalLinearItemsLayout()
                               .SnapPointsType(Microsoft.Maui.Controls.SnapPointsType.MandatorySingle)
                               .SnapPointsAlignment(Microsoft.Maui.Controls.SnapPointsAlignment.Center))
                           .HeightRequest(240)
                           .Margin(0,20,0,0)
                           .GridRow(2)
                           ,
                           new Label("Popular Book")
                            .TextColor(Colors.White)
                            .FontSize(20)
                            .FontFamily(Theme.font)
                            .GridRow(5)
                            .Margin(20,20,0,15),
                           new CollectionView()
                               .ItemsSource(State.Books1,RenderBookList1)
                               .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(10))
                               .GridRow(6)
                               .Margin(10,10,10,0)
                               ,
                           new Grid("Auto,Auto,*","Auto,*,Auto")
                           {
                               new Label("Magic Book")
                                .TextColor(Colors.White)
                                .FontSize(15)
                                .FontFamily(Theme.font)
                                .GridRow(0)
                                .GridColumn(0)
                                .Margin(0,10,0,0),
                               new Label("Made by Nanhdz")
                                .TextColor(Colors.White)
                                .FontSize(15)
                                .FontFamily(Theme.font)
                                .GridRow(1)
                                .GridColumn(0)
                                .Margin(0,10,0,0),
                               new Label("Version 1.0.1")
                                .TextColor(Colors.White)
                                .FontSize(15)
                                .FontFamily(Theme.font)
                                .GridRow(2)
                                .GridColumn(0)
                                .Margin(0,10,0,0),
                               new Label("Thông tin liên hệ")
                                .TextColor(Colors.White)
                                .FontSize(15)
                                .FontFamily(Theme.font)
                                .GridRow(0)
                                .GridColumn(2)
                                .Margin(0,10,0,0),
                               new Label("SDT: 0374168741")
                                .TextColor(Colors.White)
                                .FontSize(15)
                                .FontFamily(Theme.font)
                                .GridRow(1)
                                .GridColumn(2)
                                .Margin(0,10,0,0),
                               new Label("Email: nanhdz@gmail.com")
                                .TextColor(Colors.White)
                                .FontSize(15)
                                .FontFamily(Theme.font)
                                .GridRow(2)
                                .GridColumn(2)
                                .Margin(0,10,0,0),
                           }.GridRow(7).Margin(10,150,10,-450).IsVisible(!State.IsCategoryVisible)
                               
                   }
                   .BackgroundColor(Theme.Bg)
                   .TranslationY(State.IsCategoryVisible?0:-300)
                   .WithAnimation(easing:Easing.CubicIn,duration:300)
                   .GridRow(4)
                }.BackgroundColor(Theme.Bg)
                .ZIndex(0)
            }
         .BackgroundColor(Theme.Bg)
         .RotationY(State.RotationY)
         .TranslationX(State.TranslationX)
         .WithAnimation(easing: Easing.CubicIn, duration: 300)
         ;
    }

    private VisualNode RenderBookList3(Item item)
    {
        return new Grid
        {
            new Image(item.volumeInfo.imageLinks.thumbnail.Replace("http", "https"))
            .Aspect(Aspect.Fill).Opacity(0.4)
            ,
            new Border
            {
                new Grid("*","Auto,Auto")
                {
                    new Border
                    {
                        new Image(item.volumeInfo.imageLinks.thumbnail.Replace("http", "https"))
                        .Aspect(Aspect.Fill)
                    }.StrokeShape(new RoundRectangle().CornerRadius(10))
                    .Stroke(Colors.Transparent)
                    .GridColumn(0)
                    .HeightRequest(151)
                    .WidthRequest(110)
                    ,
                    new Grid("Auto,Auto,Auto,Auto","*")
                    {
                         new Label(item.volumeInfo.title)
                        .TextColor(Colors.White)
                        .LineBreakMode(LineBreakMode.TailTruncation)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                        .FontSize(16)
                        .FontFamily(Theme.font)
                        .MaxLines(2)
                        .GridRow(0),
                         new Label($"Tác giả: {item.volumeInfo.authors[0]}")
                        .TextColor(Colors.White)
                        .FontSize(13)
                        .FontFamily(Theme.font)
                        .MaxLines(1)
                        .GridRow(1).Margin(0,10,0,0),
                         new Label($"Thể loại: {item.volumeInfo.categories[0]}")
                        .TextColor(Colors.White)
                        .FontSize(13)
                        .FontFamily(Theme.font)
                        .MaxLines(1)
                        .GridRow(2).Margin(0,10,0,0),
                         new HStack
                         {
                             new Image("heart")
                             .HeightRequest(20)
                             .WidthRequest(20)
                             ,
                             new Label(item .volumeInfo.averageRating)
                             .TextColor(Colors.White)
                            .FontSize(13)
                            .FontFamily(Theme.font).Margin(0,2,0,0)
                         }.Spacing(10).GridRow(3).Margin(0,10,0,0)
                    }.GridColumn(1).Margin(15,0,0,0)
                }.Margin(15)
            }.Margin(40,30,40,30)
            .StrokeShape(new RoundRectangle().CornerRadius(10))
            .BackgroundColor(Color.FromUint(0xFFFFFFFF).WithAlpha(0.3f))

        }.OnTapped(() =>
        {
            SetState(s => s.SelectedBook = item);
            _selectBook(State.SelectedBook);
        });
    }

    private VisualNode RenderBookList1(Item item)
    {
        return new Border
        {
            new Grid("*","128,*")
            {
                
                 new Image(item.volumeInfo.imageLinks.thumbnail.Replace("http", "https")).Aspect(Aspect.Fill)
                .HeightRequest(176)
                .WidthRequest(128)
                .GridColumn(0)
               ,
                new VStack
                {
                    new Label(item.volumeInfo.title)
                    .TextColor(Colors.White)
                        .FontSize(20)
                        .LineBreakMode(LineBreakMode.TailTruncation)
                        .FontFamily(Theme.font)
                        .MaxLines(1),
                    new Label(item.volumeInfo.authors[0])
                    .TextColor(Colors.Gray)
                        .FontSize(15)
                        .FontFamily(Theme.font),
                    new HStack
                    {
                         new SimpleRatingControl()
                        .Amount(5)
                        .CurrentValue(item.volumeInfo.averageRating)
                        .RatingType(SimpleRatingControlMaui.RatingType.Star)
                        .AccentColor(Colors.Yellow)
                        .FontSize(15)
                        ,
                        new Label($"Rating : {item.volumeInfo.ratingsCount}")
                        .TextColor(Colors.Gray)
                            .FontSize(15)
                            .FontFamily(Theme.font)
                            ,
                    }.Spacing(10)
                }.GridColumn(1).Spacing(15).Margin(20,0,0,0)
            }
        }.BackgroundColor(Colors.Transparent)
        .OnTapped(() =>
        {
            SetState(s => s.SelectedBook = item);
            _selectBook(State.SelectedBook);
        }); 
    }

    private VisualNode RenderBookList(Item item)
    {
        if (item.volumeInfo.authors is null|| item.volumeInfo.imageLinks is null)
        {
            return null;
        }
        else
        {
            var authors = item.volumeInfo.authors.FirstOrDefault();
            var source = item.volumeInfo.imageLinks.thumbnail.Replace("http", "https");
            return new Border
            {
                new VStack
                {
                    new Image(source)
                    .HeightRequest(150)
                    .Aspect(Aspect.AspectFill),
                    new Label(item.volumeInfo.title)
                    .TextColor(Colors.White)
                    .LineBreakMode(LineBreakMode.TailTruncation)
                            .FontSize(13)
                            .FontFamily(Theme.font)
                            .MaxLines(1),
                    new Label(authors)
                    .TextColor(Colors.Gray)
                            .FontSize(10)
                            .FontFamily(Theme.font),
                }.Spacing(10)
            }
            .Set(Skeleton.IsBusyProperty, State.IsLoading)
                    .Set(Skeleton.BackgroundColorProperty, Theme.Bg)
                    .Set(Skeleton.AnimationProperty, new VerticalShakeAnimation(500, null))
                    .Set(Skeleton.IsParentProperty, true)
           .WidthRequest(115)
           .BackgroundColor(Colors.Transparent)
           .OnTapped(() =>
           {
               SetState(s => s.SelectedBook = item);
               _selectBook(State.SelectedBook);
           });
        }
       
    }

    private VisualNode RenderCategory()
    {
        return new Border
        {
            new Grid("Auto,Auto,Auto","*")
            {
                new HStack
                {
                    new Border
                    {
                        new Label("Philosophy")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c=>c==CategorySelect.Philosophy).FirstOrDefault()==CategorySelect.Philosophy? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c=>c==CategorySelect.Philosophy).FirstOrDefault()==CategorySelect.Philosophy? Colors.White:Theme.BlackBorder)
                    .HeightRequest(80)
                    .Stroke(State.CategorySelected.Where(c=>c==CategorySelect.Philosophy).FirstOrDefault()==CategorySelect.Philosophy?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .WidthRequest(160)
                    .StrokeShape(new RoundRectangle().CornerRadius(80))
                    .OnTapped(() =>
                    {

                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Philosophy).FirstOrDefault() ==CategorySelect.Philosophy) { s.CategorySelected.Remove(CategorySelect.Philosophy); }
                            else { s.CategorySelected.Add(CategorySelect.Philosophy); }
                        });
                         Search();
                    }),
                    new Border
                    {
                        new Label("Science")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c=>c==CategorySelect.Science).FirstOrDefault()==CategorySelect.Science? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c=>c==CategorySelect.Science).FirstOrDefault()==CategorySelect.Science? Colors.White:Theme.BlackBorder)
                    .Stroke(State.CategorySelected.Where(c=>c==CategorySelect.Science).FirstOrDefault()==CategorySelect.Science?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .HeightRequest(80)
                    .WidthRequest(80)
                    .StrokeShape(new RoundRectangle().CornerRadius(100))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Science).FirstOrDefault() ==CategorySelect.Science) { s.CategorySelected.Remove(CategorySelect.Science); }
                            else { s.CategorySelected.Add(CategorySelect.Science); }
                        });
                        Search();
                    }),
                    new Border
                    {
                        new Label("Fiction")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c=>c==CategorySelect.Fiction).FirstOrDefault()==CategorySelect.Fiction? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c=>c==CategorySelect.Fiction).FirstOrDefault()==CategorySelect.Fiction? Colors.White:Theme.BlackBorder)
                    .Stroke(State.CategorySelected.Where(c=>c==CategorySelect.Fiction).FirstOrDefault()==CategorySelect.Fiction?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .HeightRequest(80)
                    .WidthRequest(80)
                    .StrokeShape(new RoundRectangle().CornerRadius(100))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Fiction).FirstOrDefault() ==CategorySelect.Fiction) { s.CategorySelected.Remove(CategorySelect.Fiction); }
                            else { s.CategorySelected.Add(CategorySelect.Fiction); }
                        });
                        Search();
                    })
                }.GridRow(0),
                new HStack
                {
                    new Border
                    {
                        new Label("Nature")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c=>c==CategorySelect.Nature).FirstOrDefault()==CategorySelect.Nature? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c=>c==CategorySelect.Nature).FirstOrDefault()==CategorySelect.Nature? Colors.White:Theme.BlackBorder)
                    .HeightRequest(80)
                    .WidthRequest(80)
                    .Stroke(State.CategorySelected.Where(c=>c==CategorySelect.Nature).FirstOrDefault()==CategorySelect.Nature?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .StrokeShape(new RoundRectangle().CornerRadius(100))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Nature).FirstOrDefault() ==CategorySelect.Nature) { s.CategorySelected.Remove(CategorySelect.Nature); }
                            else { s.CategorySelected.Add(CategorySelect.Nature); }
                        });
                        Search();
                    }),
                    new Border
                    {
                        new Label("Family")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c=>c==CategorySelect.Family).FirstOrDefault()==CategorySelect.Family? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c=>c==CategorySelect.Family).FirstOrDefault()==CategorySelect.Family? Colors.White:Theme.BlackBorder)
                    .HeightRequest(80)
                    .WidthRequest(160)
                    .Stroke(State.CategorySelected.Where(c => c == CategorySelect.Family).FirstOrDefault() == CategorySelect.Family?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .StrokeShape(new RoundRectangle().CornerRadius(80))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Family).FirstOrDefault() ==CategorySelect.Family) { s.CategorySelected.Remove(CategorySelect.Family); }
                            else { s.CategorySelected.Add(CategorySelect.Family); }
                        });
                        Search();
                    }),
                    new Border
                    {
                        new Label("Travel")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c => c == CategorySelect.Travel).FirstOrDefault() == CategorySelect.Travel? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c => c == CategorySelect.Travel).FirstOrDefault() == CategorySelect.Travel? Colors.White:Theme.BlackBorder)
                    .HeightRequest(80)
                    .WidthRequest(80)
                    .Stroke(State.CategorySelected.Where(c => c == CategorySelect.Travel).FirstOrDefault() == CategorySelect.Travel?Colors.Gray:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .StrokeShape(new RoundRectangle().CornerRadius(100))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Travel).FirstOrDefault() ==CategorySelect.Travel) { s.CategorySelected.Remove(CategorySelect.Travel); }
                            else { s.CategorySelected.Add(CategorySelect.Travel); }
                        });
                        Search();
                    })
                }.GridRow(1),
                new HStack
                {
                   new Border
                    {
                        new Label("Love")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c => c == CategorySelect.Love).FirstOrDefault() == CategorySelect.Love? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c => c == CategorySelect.Love).FirstOrDefault() == CategorySelect.Love? Colors.White:Theme.BlackBorder)
                    .HeightRequest(80)
                    .Stroke(State.CategorySelected.Where(c => c == CategorySelect.Love).FirstOrDefault() == CategorySelect.Love?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .WidthRequest(80)
                    .StrokeShape(new RoundRectangle().CornerRadius(100))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Love).FirstOrDefault() ==CategorySelect.Love) { s.CategorySelected.Remove(CategorySelect.Love); }
                            else { s.CategorySelected.Add(CategorySelect.Love); }
                        });
                        Search();
                    }),
                   new Border
                    {
                        new Label("Drama")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c => c == CategorySelect.Drama).FirstOrDefault() == CategorySelect.Drama? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c => c == CategorySelect.Drama).FirstOrDefault() == CategorySelect.Drama? Colors.White:Theme.BlackBorder)
                    .Stroke(State.CategorySelected.Where(c => c == CategorySelect.Drama).FirstOrDefault() == CategorySelect.Drama?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .HeightRequest(80)
                    .WidthRequest(80)
                    .StrokeShape(new RoundRectangle().CornerRadius(100))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Drama).FirstOrDefault() ==CategorySelect.Drama) { s.CategorySelected.Remove(CategorySelect.Drama); }
                            else { s.CategorySelected.Add(CategorySelect.Drama); }
                        });
                        Search();
                    }),
                   new Border
                    {
                        new Label("Comedy")
                        .HCenter().VCenter()
                        .FontFamily(Theme.font)
                        .TextColor(State.CategorySelected.Where(c => c == CategorySelect.Comedy).FirstOrDefault() == CategorySelect.Comedy? Colors.Black:Colors.White)
                    }.BackgroundColor(State.CategorySelected.Where(c => c == CategorySelect.Comedy).FirstOrDefault() == CategorySelect.Comedy? Colors.White:Theme.BlackBorder)
                    .Stroke(State.CategorySelected.Where(c => c == CategorySelect.Comedy).FirstOrDefault() == CategorySelect.Comedy?Colors.White:Colors.Transparent)
                    .StrokeThickness(0.5)
                    .HeightRequest(80)
                    .WidthRequest(160)
                    .StrokeShape(new RoundRectangle().CornerRadius(80))
                    .OnTapped(() =>
                    {
                        SetState(s=>
                        {
                                if (s.CategorySelected.Where(c=>c==CategorySelect.Comedy).FirstOrDefault() ==CategorySelect.Comedy) { s.CategorySelected.Remove(CategorySelect.Comedy); }
                            else { s.CategorySelected.Add(CategorySelect.Comedy); }
                        });
                        Search();
                    })
                }.GridRow(2)
            }.HCenter().VCenter(),
            //new Grid
            //{
            //    new CollectionView().ItemsSource(Category.All,RenderCategoryItem)
            //                .ItemsLayout(new VerticalGridItemsLayout(3).VerticalItemSpacing(0))
            //                .SelectionMode(Microsoft.Maui.Controls.SelectionMode.Multiple)
            //}
            
        }.HeightRequest(260)
        .Margin(20, 0, 20, 0)
        .BackgroundColor(Colors.Transparent)
        .GridRow(3)

        ;
    }

    //private VisualNode RenderCategoryItem(Category item) =>
    //    new Border
    //                {
    //                new Label(item.Name)
    //                    .MaxLines(1)
    //                    .HCenter().VCenter()
    //                    .FontFamily(Theme.font)
    //                    .TextColor(Colors.White)
    //                    .HorizontalTextAlignment(TextAlignment.Center)
    //                    .Margin(20,10,20,10)
    //                }.BackgroundColor(Colors.Black)
    //                .Stroke(Colors.White)
    //                .StrokeThickness(0.5)
    //                .StrokeShape(new RoundRectangle().CornerRadius(80));

    private VisualNode RenderMain()
    {
        return
        new Border
                {
                    new Grid
                    {
                        new Image(State.HeaderBookSoure)
                        .Aspect(Aspect.AspectFill)
                        ,
                        //new Border
                        //{
                        //    new HStack
                        //        {
                        //            new Border
                        //            {
                        //                 new Label(State.HeaderBook.title)
                        //                .FontFamily(Theme.font)
                        //                .TextColor(Colors.White)
                        //                .FontSize(18)
                        //                .MaxLines(2)
                        //            }.BackgroundColor(Colors.Transparent)
                        //            .WidthRequest(150)
                        //           ,
                        //            new VStack
                        //            {
                        //                new Label(State.HeaderBookAuthor)
                        //                .FontFamily(Theme.font)
                        //                .TextColor(Colors.White)
                        //                .FontSize(15),
                        //                new Label(State.HeaderBook.publishedDate)
                        //                .FontFamily(Theme.font)
                        //                .TextColor(Colors.White)
                        //                .FontSize(15),
                        //            }.Spacing(10)
                        //        }.Spacing(10).Margin(15,15,0,0)
                        //}.HeightRequest(90)
                        //.BackgroundColor(Theme.BlackBorder3)
                        //.StrokeShape(new RoundRectangle().CornerRadius(15))
                        //.VEnd()
                        //.Margin(-2,0,-2,-2),
                        new Border
                        {
                                new Image("favorite")
                                .HeightRequest(20)
                                .WidthRequest(20)
                        }.HeightRequest(40)
                        .WidthRequest(40)
                        .HEnd().VStart()
                        .Stroke(Colors.Transparent)
                        .BackgroundColor(Colors.WhiteSmoke)
                        .Margin(0,10,10,0)
                        .StrokeShape(new RoundRectangle().CornerRadius(5))
                    }
                }.HeightRequest(340)
                .StrokeShape(new RoundRectangle().CornerRadius(15))
                .Margin(30,0,30,0)
                .BackgroundColor(Colors.Transparent)
        .GridRow(1);
    }

    private VisualNode RenderHeader()
    {
        return new Grid("*","Auto,Auto,*,Auto,Auto")
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
                .OnTapped(_action1)
                .GridColumn(0)
                ,
                new Label("Stories")
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .FontSize(30)
                .FontFamily(Theme.font)
                .GridColumn(1)
                .Margin(10,0,0,0)
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
                .GridColumn(3)
                .Margin(0,10,0,0)
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
                .GridColumn(4)
                .Margin(-25,0,0,0)
                .OnTapped(_action2)
                ,
            }
            .Margin(15, 20, 10, 0)
            .BackgroundColor(Colors.Transparent)
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
    bool _isVisible;
    public StartPage Visible(bool isVisible)
    {
        _isVisible= isVisible;
        return this;
    }
    protected override void OnMounted()
    {
        SetState(s=>s.StartPageVisible=_isVisible);
        if (Logger.KiemTra(Logger.token) && State.StartPageVisible)
        {
            var googleBook = Services.GetRequiredService<IGoogleServices>();
            googleBook.RefreshTokenAsync();
        }
        base.OnMounted();
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
                              new RoundRectangle()
                              .HeightRequest(10)
                              .WidthRequest(State.ImageIndex==0?30:10)
                              .Stroke(State.ImageIndex==0?Colors.White: Colors.Gray)
                              .StrokeThickness(1).CornerRadius(10)
                              .Fill(State.ImageIndex==0?Colors.White:Colors.Transparent)
                              .WithAnimation(easing:Easing.CubicInOut,duration:500)
                              ,
                              new RoundRectangle()
                               .HeightRequest(10)
                              .WidthRequest(State.ImageIndex==1?30:10)
                              .Stroke(State.ImageIndex==1?Colors.White: Colors.Gray)
                              .StrokeThickness(1).CornerRadius(10)
                              .Fill(State.ImageIndex==1?Colors.White:Colors.Transparent)
                              .WithAnimation(easing:Easing.CubicInOut,duration:500),
                              new RoundRectangle()
                               .HeightRequest(10)
                              .WidthRequest(State.ImageIndex==2?30:10)
                              .Stroke(State.ImageIndex==2?Colors.White: Colors.Gray)
                              .StrokeThickness(1)
                              .CornerRadius(10)
                              .Fill(State.ImageIndex==2?Colors.White:Colors.Transparent)
                              .WithAnimation(easing:Easing.CubicInOut,duration:500),
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
                             .FontSize(27)
                             .MaxLines(1)
                             .FontFamily(Theme.font)
                             .VCenter().HCenter()
                             .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                             .TextColor(Colors.White),
                            new Label("The books contain stories that have never been told, mysteries that lie deep in the dark waiting to be answered")
                             .FontSize(13)
                             .MaxLines(3)
                             .FontFamily(Theme.font)
                             .VCenter().HCenter()
                             .HorizontalTextAlignment(TextAlignment.Center)
                             .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                             .TextColor(Colors.Gray)
                        }
                    }.HeightRequest(120)
                      .WidthRequest(State.ImageSize.Width-80)
                      .BackgroundColor(Colors.Transparent)
                      .VEnd().HCenter()
                      .Margin(0,0,0,130),
                    new Button("Skip")
                         .FontSize(18)
                         .FontFamily(Theme.font)
                         .TextColor(Colors.Black)
                         .VEnd().HCenter()
                         .BackgroundColor(Colors.White)
                         .HeightRequest(50)
                         .WidthRequest(100)
                         .CornerRadius(30)
                         .Margin(0,0,0,50)
                         .OnClicked(()=>SetState(s=>s.StartPageVisible=false))
            }.ZIndex(1)
            .IsVisible(State.StartPageVisible)
            .Margin(0, 0, 0, -2)
              ;
       
    }
    //private VisualNode RenderStartItem(Start start)
    //{
    //    return new Grid
    //    {
    //        new Image(start.Source).Aspect(Aspect.Fill),
    //                     new Border
    //                    {
    //                        new VStack
    //                        {
    //                              new Label(start.Title)
    //                             .FontSize(27)
    //                             .MaxLines(1)
    //                             .FontFamily("EmilysCandy")
    //                             .VCenter().HCenter()
    //                             .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
    //                             .TextColor(Colors.White),
    //                            new Label(start.Description)
    //                             .FontSize(13)
    //                             .MaxLines(3)
    //                             .FontFamily("EmilysCandy")
    //                             .VCenter().HCenter()
    //                             .HorizontalTextAlignment(TextAlignment.Center)
    //                             .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
    //                             .TextColor(Colors.Gray)
    //                        }
    //                    }.HeightRequest(120)
    //                      .BackgroundColor(Colors.Transparent)
    //                      .VEnd().HCenter()
    //                      .Margin(50,0,50,130),
    //    };
    //}
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

    Right,
    Top,
    Bottom
}
enum CategorySelect
{
    category,
    Fiction,

    Science,
    Travel,

    Philosophy,
    Nature,
    Love,
    Family,
    Drama,
    Comedy,
}