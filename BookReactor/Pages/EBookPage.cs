using BookReactor.Pages.Component;
using CommunityToolkit.Maui.Converters;
using CommunityToolkit.Maui.Core.Primitives;
using CommunityToolkit.Maui.Storage;
using EpubSharp;
using IdentityModel.OidcClient;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Devices;
using Microsoft.Maui.Storage;
using SkiaSharp;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class EBookPageState
{
    public bool IsSideMenuShown { get; set; }
    public double TranslationX { get; set; } = 220;

    public double RotationY { get; set; } = -12;
    public double MarginLeft { get; set; } = -30.0;
    public bool IsLoading { get; set; }
    public string TextSearch { get; set; }
    public List<string> ListFile { get; set; } = new();
    public List<Result> BookList { get; set; }
    public List<Result> BookList1 { get; set; } = new();
    public List<Result> BookSearch { get; set; } = new();
    public List<EpubBook> BookList2 { get; set; } = new();
    public bool IsSearching { get; set; }
}
class EBookPage : Component<EBookPageState>
{
    async void OnEpubReader()
    {
        try
        {
            var result = await FilePicker.PickAsync(new PickOptions
            {
                PickerTitle = "Pick a epub file"
            });
            if (result is null) { return; }
            var stream = await result.OpenReadAsync();
            string targetFile = System.IO.Path.Combine(FileSystem.Current.AppDataDirectory, result.FileName);
            using FileStream outputStream = File.Create(targetFile);
            await stream.CopyToAsync(outputStream);
            outputStream.Close();
            var book2 = EpubReader.Read(targetFile);
            File.Move(targetFile, System.IO.Path.Combine(FileSystem.Current.AppDataDirectory, $"{book2.Title.Trim().ToLower().Replace(" ", "").Remove(5).Replace("'", "")}.epub"), true);
            Load();
        }
        catch (Exception)
        {

        }


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
    void Load()
    {
        SetState(s =>
        {
            s.BookList2.Clear();
        });
        foreach (var file in Directory.EnumerateFiles(FileSystem.AppDataDirectory, "*.epub"))
        {
            var book2 = EpubReader.Read(file);
            SetState(s =>
            {
                s.BookList2.Add(book2);
            });
        }

    }
    async void Load1Async()
    {
        var gutendex = Services.GetRequiredService<IGutenbergApiService>();
        if (Logger.KiemTra(Logger.continueRead))
        {
            var book1 = await gutendex.GetBookDetailAsync(await File.ReadAllTextAsync(Logger.continueRead));
            if (book1 is not null)
            {
                SetState(s =>
                {
                    s.BookList1 = book1.results;
                });
            }
        }

    }
    protected override async void OnMounted()
    {
        InitializeState();
        var gutendex = Services.GetRequiredService<IGutenbergApiService>();
        var book = await gutendex.GetBookDetailAsync("11,12,71180,1661,39341");
        Load1Async();
        Load();
        if (book is not null)
        {
            SetState(s =>
            {
                s.BookList = book.results;
            });
        }
        base.OnMounted();
    }
    protected override void OnPropsChanged()
    {
        InitializeState();

        base.OnPropsChanged();
    }
    private async void OpenHomePage()
    {
        await Navigation.PushAsync<MainPage, MainPageProps>(_ =>
        {
            _.IsStartPage = false;
        });
    }
    private async void OpenBookPage()
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
    private async void OpenReadBook(string id, string name)
    {
        await Navigation.PushAsync<ReadPage, ReadPageProps>(_ =>
        {
            _.Id = id;
            _.Name = name;
        });
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid
            {
                new Grid("Auto,*","*")
                {
                    RenderHeader(),
                    RenderMain(),
                    new Border
                    {
                        new Label("+")
                        .FontSize(35)
                        .TextColor(Colors.White)
                        .VCenter()
                        .HCenter()
                        .ZIndex(3)
                    }.BackgroundColor(Theme.Hong)
                    .HeightRequest(60)
                    .WidthRequest(60)
                    .StrokeShape(new RoundRectangle().CornerRadius(50))
                    .GridRow(1)
                    .VEnd()
                    .HEnd()
                    .OnTapped(OnEpubReader)
                    .Margin(0,0,15,15)
                    .ZIndex(2)
                }
                .RotationY(State.RotationY)
                .TranslationX(State.TranslationX)
                .WithAnimation(easing: Easing.CubicIn, duration: 300),
                 new SideMenu()
                      .IsShown(State.IsSideMenuShown)
                      .HomePage(OpenHomePage)
                      .OnBookPage(OpenBookPage)
                      .OnMagicBookPage(OpenMagicBookPage)
                      .MenuSelect(CommandMenuItem.EBook)
                      .OpenFavoritePage(OpenFavoritePage)
                      .OnClose(()=>
                      {
                            SetState(s=>s.IsSideMenuShown=false);
                            InitializeState();
                      }),
            }

        }.BackgroundColor(Theme.Bg)
        .Set(MauiControls.NavigationPage.HasNavigationBarProperty, false);
    }
    private async void SearchHelp()
    {
        if (State.TextSearch is not null && State.TextSearch != "")
        {

            var googleBook = Services.GetRequiredService<IGutenbergApiService>();
            var books = await googleBook.SearchBookAsync(State.TextSearch);
            SetState(s =>
            {
                s.IsSearching = true;
                s.BookSearch = books.results;
            });
        }
        else
        {
            SetState(s => s.IsSearching = false);
        }

    }
    private VisualNode RenderMain()
    {
        return new Grid("Auto,*", "*")
        {
            new Grid
            {
                new Border()
                .StrokeShape(new RoundRectangle().CornerRadius(30))
                .BackgroundColor(Theme.Tim1).Margin(40,15,40,0)
                .HeightRequest(50),
                new Border
                {
                    new HStack
                    {
                        new Image("search")
                        .Aspect(Aspect.AspectFit)
                        .HeightRequest(30)
                        ,
                        new Entry()
                                 .TextColor(Colors.Black)
                                 .VCenter()
                                 .HCenter()
                                 .HeightRequest(60)
                                 .WidthRequest(200)
                                 .FontFamily(Theme.font)
                                 .FontSize(20)
                                 .Placeholder("Find your stories")
                                 .PlaceholderColor(Colors.Gray)
                                 .BackgroundColor(Colors.Transparent)
                                 .OnTextChanged(v =>
                                 {
                                     SetState(s => s.TextSearch = v);
                                     SearchHelp();
                                 }),
                    }.Margin(20,0,0,0).Spacing(10)
                }
                .StrokeShape(new RoundRectangle().CornerRadius(30))
                .Stroke(Theme.Tim1).Margin(20).ZIndex(1)
                .HeightRequest(50)
                .StrokeThickness(3)
                .BackgroundColor(Colors.White)
            }
            .GridRow(0),
             new Grid("20,*","")
                     {
                         new Grid().GridRow(0).BackgroundColor(Theme.Tim1)
                         ,
                         new CollectionView()
                         .ItemsSource(State.BookSearch,RenderSearchHelp)
                         .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(5))
                         .BackgroundColor(Theme.Tim1)
                         .GridRow(1)
                     }.Margin(58,-16,58,0)
                     .ZIndex(1)
                     .HCenter()
                     .GridRow(1)
                     .IsVisible(State.IsSearching&&State.TextSearch!="")
                     .BackgroundColor(Theme.Tim1),
            new ScrollView
            {
                new Grid("Auto,Auto,Auto,Auto,Auto,Auto","*")
                {
                    new Label("Recommendations")
                    .FontFamily(Theme.font)
                    .FontSize(20)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.White)
                    .GridRow(0)
                    .Margin(20,0,0,0),
                    new Border()
                    {
                        new CollectionView()
                        .ItemsSource(State.BookList,RenderItem)
                        .ItemsLayout(new HorizontalLinearItemsLayout().ItemSpacing(15))
                        .Margin(20,20,0,20)
                    }.StrokeShape(new RoundRectangle().CornerRadius(20,0,20,0))
                    .Margin(20,20,0,0)
                    .BackgroundColor(Theme.Hong)
                    .GridRow(1),
                    State.BookList1.Count>0?
                    new Label("Continue Reading")
                    .FontFamily(Theme.font)
                    .FontSize(20)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.White)
                    .GridRow(2)
                    .Margin(20,20,0,0):null,
                     new CollectionView()
                        .ItemsSource(State.BookList1,RenderItem1)
                        .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(15))
                        .Margin(20)
                        .GridRow(3),
                     State.BookList2.Count>0?
                     new Label("Local Book")
                    .FontFamily(Theme.font)
                    .FontSize(20)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.White)
                    .GridRow(4)
                    .Margin(20,20,0,0):null,
                    new CollectionView()
                        .ItemsSource(State.BookList2,RenderItem2)
                        .ItemsLayout(new VerticalLinearItemsLayout().ItemSpacing(15))
                        .Margin(20)
                        .GridRow(5)
                }
            }.GridRow(1)
        }.GridRow(1);
    }
    private VisualNode RenderSearchHelp(Result item)
    {
            return new Border
            {
                new Grid("*","Auto,*")
                {
                    new Image(item.formats.imagejpeg)
                    .HeightRequest(133)
                    .WidthRequest(100)
                    .GridColumn(0)
                    ,
                    new Label(item.title)
                    .FontFamily(Theme.font)
                    .MaxLines(5)
                    .Margin(10,0,0,0)
                    .FontSize(17)
                    .TextColor(Colors.White)
                    .GridColumn(2)
                }
                .HeightRequest(133)
            }.BackgroundColor(Theme.Tim1)
            .OnTapped(() => {
                AddContinuteRead(item.id.ToString());
                OpenReadBook(item.id.ToString(), null);
            });

    }
    MauiControls.Command<string> RemoveFromFavoriteAsync => new(Loaded);
    MauiControls.Command<string> RemoveContinuteReadAsync => new(RemoveContinuteRead);
    private void Loaded(string id)
    {
        File.Delete(id);
        Load();
    }
    async void AddContinuteRead(string id)
    {
        await Logger.AddFavoriteAsync(Logger.continueRead, id);
        Load1Async();
    }
    async void RemoveContinuteRead(string id)
    {
        await Logger.RemoveFavoriteAsync(Logger.continueRead, id);
        Load1Async();
    }
    private VisualNode RenderItem1(Result item)
    {
        var a = new Random().Next(1, 5);
        var b = new Random().Next(1, 9);
        var c = double.Parse($"{a}.{b}");
        return new Border
        {
            new SwipeView
            {
                new Grid("*","Auto,*")
                {
                       new Border
                        {
                            new Image(item.formats.imagejpeg)
                            .Aspect(Aspect.Fill)
                        }.HeightRequest(150)
                        .WidthRequest(100)
                        .VCenter().HCenter()
                        .StrokeShape(new RoundRectangle().CornerRadius(10))
                        .GridColumn(0),
                        new VStack
                        {
                            new Label(item.title)
                            .FontFamily(Theme.font)
                            .FontSize(15)
                            .MaxLines(2)
                            .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                            .TextColor(Colors.White)
                            ,
                            new Label(item.authors[0].name)
                            .FontFamily(Theme.font)
                            .FontSize(13)
                            .MaxLines(1)
                            .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                            .TextColor(Colors.Gray),
                            new HStack
                            {
                                new Label($"{a}.{b}")
                                .TextColor(Colors.White)
                                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    .FontSize(13)
                                    .FontFamily(Theme.font),
                                 new SimpleRatingControl()
                                .Amount(5)
                                .CurrentValue(c)
                                .RatingType(SimpleRatingControlMaui.RatingType.Star)
                                .AccentColor(Colors.Yellow)
                                .FontSize(13)
                            }
                            .Spacing(10),
                            new Label("hehe")
                            .FontFamily(Theme.font)
                            .FontSize(13)
                            .TextColor(Colors.White),
                            new Border
                            {
                                
                            }.BackgroundColor(Theme.Hong)
                            .Stroke(Colors.White)
                            .StrokeThickness(2)
                            .HeightRequest(30)
                            .StrokeShape(new RoundRectangle().CornerRadius(20))
                        }.GridColumn(1).Margin(15,0,15,0).Spacing(5)
                }.Margin(20).OnTapped(()=>OpenReadBook(item.id.ToString(),null))
            }
                        .RightItems(new MauiControls.SwipeItems(new List<MauiControls.SwipeItem>()
                                {
                                    new MauiControls.SwipeItem
                                    {
                                        BackgroundColor = Theme.Bg,
                                        Command = RemoveContinuteReadAsync,
                                        CommandParameter = item.id.ToString(),
                                    }
                                })
                        {
                            SwipeBehaviorOnInvoked = SwipeBehaviorOnInvoked.Close,
                            Mode = SwipeMode.Execute,
                        }
                        )
                        .Set(MauiControls.PlatformConfiguration.AndroidSpecific.SwipeView.SwipeTransitionModeProperty, SwipeTransitionMode.Reveal)
        }.Margin(15)
        .BackgroundColor(Colors.Transparent)
        .HeightRequest(200)
        .Stroke(Theme.Hong)
        .StrokeDashArray(new MauiControls.DoubleCollection(new double[] { 5, 5 }))
        .StrokeDashOffset(6)
        .StrokeThickness(2)
        .StrokeShape(new RoundRectangle().CornerRadius(20))
        .OnTapped(() => OpenReadBook(item.id.ToString(), null));
    }
    private VisualNode RenderItem2(EpubBook item)
    {
        var a = new Random().Next(1, 5);
        var b = new Random().Next(1, 9);
        var c = double.Parse($"{a}.{b}");
        var author = item.Authors.FirstOrDefault();
        var image = new ByteArrayToImageSourceConverter().ConvertFrom(item.CoverImage);
        return new Border
        {
            new SwipeView
            {
                new Grid("*","Auto,*")
                {
                       new Border
                        {
                            new Image()
                            .Source(image)
                            .Aspect(Aspect.Fill)
                        }.HeightRequest(150)
                        .WidthRequest(100)
                        .VCenter().HCenter()
                        .StrokeShape(new RoundRectangle().CornerRadius(10))
                        .GridColumn(0),
                        new VStack
                        {
                            new Label(item.Title)
                            .FontFamily(Theme.font)
                            .FontSize(15)
                            .MaxLines(2)
                            .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                            .TextColor(Colors.White)
                            ,
                            new Label(author)
                            .FontFamily(Theme.font)
                            .FontSize(13)
                            .MaxLines(1)
                            .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                            .TextColor(Colors.Gray),
                            new HStack
                            {
                                new Label($"{a}.{b}")
                                .TextColor(Colors.White)
                                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    .FontSize(13)
                                    .FontFamily(Theme.font),
                                 new SimpleRatingControl()
                                .Amount(5)
                                .CurrentValue(c)
                                .RatingType(SimpleRatingControlMaui.RatingType.Star)
                                .AccentColor(Colors.Yellow)
                                .FontSize(13)
                            }
                            .Spacing(10),
                            new Label("hehe")
                            .FontFamily(Theme.font)
                            .FontSize(13)
                            .TextColor(Colors.White),
                            new Border
                            {

                            }.BackgroundColor(Theme.Hong)
                            .Stroke(Colors.White)
                            .StrokeThickness(2)
                            .HeightRequest(30)
                            .StrokeShape(new RoundRectangle().CornerRadius(20))
                        }.GridColumn(1).Margin(15,0,15,0).Spacing(5)
                }.Margin(20).OnTapped(() => OpenReadBook(null, System.IO.Path.Combine(FileSystem.Current.AppDataDirectory, $"{item.Title.Trim().ToLower().Replace(" ", "").Remove(5).Replace("'", "")}.epub")))
            }
                        .RightItems(new MauiControls.SwipeItems(new List<MauiControls.SwipeItem>()
                                {
                                    new MauiControls.SwipeItem
                                    {
                                        BackgroundColor = Theme.Bg,
                                        Command = RemoveFromFavoriteAsync,
                                        CommandParameter = System.IO.Path.Combine(FileSystem.Current.AppDataDirectory, $"{item.Title.Trim().ToLower().Replace(" ", "").Remove(5).Replace("'", "")}.epub"),
                                    }
                                })
                        {
                            SwipeBehaviorOnInvoked = SwipeBehaviorOnInvoked.Close,
                            Mode = SwipeMode.Execute,
                        }
                        )
                        .Set(MauiControls.PlatformConfiguration.AndroidSpecific.SwipeView.SwipeTransitionModeProperty, SwipeTransitionMode.Reveal)
        }.Margin(15)
        .BackgroundColor(Colors.Transparent)
        .HeightRequest(200)
        .Stroke(Theme.Hong)
        .StrokeDashArray(new MauiControls.DoubleCollection(new double[] { 5, 5 }))
        .StrokeDashOffset(6)
        .StrokeThickness(2)
        .StrokeShape(new RoundRectangle().CornerRadius(20))
        .OnTapped(() => OpenReadBook(null, System.IO.Path.Combine(FileSystem.Current.AppDataDirectory, $"{item.Title.Trim().ToLower().Replace(" ", "").Remove(5).Replace("'", "")}.epub")));
    }
    private VisualNode RenderItem(Result item)
    {
        var a = new Random().Next(1, 5);
        var b = new Random().Next(1, 9);
        var c = double.Parse($"{a}.{b}");
        return new Border
        {
            new Grid("Auto,*","*")
            {
                new Border
                {
                    new Image(item.formats.imagejpeg)
                    .Aspect(Aspect.Fill)
                }.HeightRequest(150)
                .WidthRequest(100)
                .VCenter().HCenter()
                .StrokeShape(new RoundRectangle().CornerRadius(10))
                .GridRow(0)
                ,
                new VStack
                {
                    new HStack
                    {
                        new Label($"{a}.{b}")
                        .TextColor(Colors.Black)
                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                            .FontSize(13)
                            .FontFamily(Theme.font),
                         new SimpleRatingControl()
                        .Amount(5)
                        .CurrentValue(c)
                        .RatingType(SimpleRatingControlMaui.RatingType.Star)
                        .AccentColor(Theme.Tim1)
                        .FontSize(13)
                    }
                    .Spacing(10),
                    new RoundRectangle()
                    .BackgroundColor(Colors.Black)
                    .HeightRequest(1)
                    .Margin(10),
                    new Label(item.title)
                    .FontFamily(Theme.font)
                    .FontSize(15)
                    .MaxLines(1)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.Black)
                    ,
                    new Label(item.authors[0].name)
                    .FontFamily(Theme.font)
                    .FontSize(13)
                    .MaxLines(1)
                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                    .TextColor(Colors.Gray)
                }.GridRow(1)
            }.Margin(15,10,15,10)
        }.HeightRequest(250)
        .StrokeShape(new RoundRectangle().CornerRadius(20))
        .WidthRequest(130)
        .OnTapped(() =>
        {
            AddContinuteRead(item.id.ToString());
            OpenReadBook(item.id.ToString(), null);
        });
    }

    private VisualNode RenderHeader()
    {
        return new Grid("*", "Auto,Auto,*")
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
                 })
                .GridColumn(0)
                ,
                new Label("EBook")
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .FontSize(30)
                .FontFamily(Theme.font)
                .GridColumn(1)
                .Margin(20,0,0,0)
                ,
            }
            .Margin(10, 0, 0, 0)
            .GridRow(0).ZIndex(1).BackgroundColor(Theme.Bg);
    }
}
class TienDoState
{
}
class TienDo:Component<TienDoState>
{
    int _tienDoDoc;
    public TienDo TienDoDoc(int value)
    {
        _tienDoDoc = value;
        return this;
    }
    public override VisualNode Render()
    {
        return new CanvasView
        {
            new Group
            {

            }
        };
    }
}