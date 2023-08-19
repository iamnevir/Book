
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class BookDetailState
{
    public bool IsFavorite { get; set; }
    public bool IsRead { get; set; }
}
class BookDetailProps
{
    public Item Book { get; set; }
}
class BookDetail:Component<BookDetailState, BookDetailProps>
{
    private async void Back()
    {
        await Navigation.PopAsync();
    }
    protected override async void OnMounted()
    {
        if (Logger.KiemTra(Logger.favorite))
        {
            var a = await Logger.ReadFavoriteAsync();
            if (a.FirstOrDefault(f => f == Props.Book.id)==Props.Book.id)
            {
                SetState(s => s.IsFavorite = true); 
            }
        }
        base.OnMounted();
    }
    private async void AddToFavorite(string id)
    {
        
        if (Logger.KiemTra(Logger.token))
        {   var googleBook = Services.GetRequiredService<IGoogleServices>();
            var token = await Logger.ReadAsync(Logger.token);
            var add = await googleBook.AddBookToFavoriteAsync(token, id);
            if (add)
            {
                await Logger.ToastButton("Đã thêm vào yêu thích!");
                await Logger.AddFavoriteAsync(id);
            }
            else
            {
                await Logger.ToastButton("Có lỗi xảy ra!");
            }
        }
        else
        {
            SetState(s => s.IsFavorite = false);
            await Logger.ToastButton("Bạn cần đăng nhập!");
        }
    }

    private async void RemoveFromFavorite(string id)
    {
        
        if (Logger.KiemTra(Logger.token))
        {
            var googleBook = Services.GetRequiredService<IGoogleServices>();
            var token = await Logger.ReadAsync(Logger.token);
            var add = await googleBook.RemoveBookToFavoriteAsync(token, id);
            if (add)
            {
                await Logger.ToastButton("Đã bỏ yêu thích!");
                await Logger.RemoveFavoriteAsync(id);
            }
            else
            {
                await Logger.ToastButton("Có lỗi xảy ra!");
            }
        }
        else
        {
            SetState(s=>s.IsFavorite = false);
            await Logger.ToastButton("Bạn cần đăng nhập!");
        }
    }
    
    public override VisualNode Render()
    {
        var preView = $"https://www.google.com.vn/books/edition/The_White_Company/{Props.Book.id}?hl=vi&gbpv=1";
        var source = Props.Book.volumeInfo.imageLinks.thumbnail.Replace("http", "https");
        return new ContentPage
        {
            new Grid
            {
                
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
                 .ZIndex(2),
                 new Grid("*,Auto","")
                {
                    RenderHeader(),
                    new Grid("*","*")
                    {
                             new Image(source)
                             .Aspect(Aspect.Fill)
                             .Opacity(0.2),
                         new Border
                         {
                             new Image(source)
                             .Aspect(Aspect.Fill)
                         ,
                         }.BackgroundColor(Colors.Transparent)
                          .HeightRequest(230).WidthRequest(153)
                          .Margin(0,0,10,70)
                          .ZIndex(1)
                        .GridRow(0),
                        new Border()
                        .Margin(10,0,0,50)
                        .GridRow(0)
                        .BackgroundColor(Colors.Black)
                        .HeightRequest(230).WidthRequest(153)
                        ,
                        new Border()
                        .BackgroundColor(Colors.Black)
                        .HeightRequest(10)
                        .GridRow(0)
                        .WidthRequest(16)
                        .Margin(0,162,145,0)
                        .VCenter()
                        .Rotation(45),
                        new Border()
                        .BackgroundColor(Colors.Black)
                        .HeightRequest(10)
                        .GridRow(0)
                        .WidthRequest(17)
                        .Margin(145,0,0,280)
                        .VCenter()
                        .Rotation(45)
                        ,
                        new Border
                        {
                                new Grid("*", "Auto,*,Auto,*,Auto,*,Auto,*,Auto")
                                {
                                    new VStack
                                    {
                                        new Label(Props.Book.volumeInfo.averageRating)
                                        .FontSize(15).HCenter()
                                        .MaxLines(1)
                                        .TextColor(Colors.White)
                                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                        ,
                                        new Label("Rating")
                                        .FontSize(12).HCenter()
                                        .TextColor(Colors.Gray)
                                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    }.GridColumn(0).VCenter().Spacing(5).Margin(20,0,0,0),
                                    new Border()
                                    .BackgroundColor(Colors.White)
                                    .HeightRequest(50)
                                    .VCenter()
                                    .Opacity(0.5)
                                    .WidthRequest(1)
                                    .GridColumn(2)
                                    ,
                                    new VStack
                                    {
                                        new Label(Props.Book.volumeInfo.pageCount)
                                        .FontSize(15).HCenter()
                                        .TextColor(Colors.White)
                                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                        ,
                                        new Label("Page Count")
                                        .FontSize(12).HCenter()
                                        .TextColor(Colors.Gray)
                                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    }.GridColumn(4).VCenter().Spacing(5),
                                     new Border()
                                    .BackgroundColor(Colors.White)
                                    .HeightRequest(50)
                                    .VCenter()
                                    .Opacity(0.5)
                                    .WidthRequest(1)
                                    .GridColumn(6),
                                    new VStack
                                    {
                                        new Label(Props.Book.volumeInfo.readingModes.image?"Image":"Text")
                                        .FontSize(15)
                                        .TextColor(Colors.White)
                                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                        .HCenter()
                                        ,
                                        new Label("Mode")
                                        .FontSize(12).HCenter()
                                        .TextColor(Colors.Gray)
                                        .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    }.GridColumn(8).VCenter().Spacing(5).Margin(0,0,20,0)
                                }.Margin(10,0,10,0)


                        }.VEnd()
                        .HeightRequest(90)
                        .Margin(30,0,30,20)
                        .StrokeShape(new RoundRectangle().CornerRadius(10))
                        .BackgroundColor(Color.FromUint(0xFF000000).WithAlpha(0.7f))
                    }.GridRow(0).Margin(10,10,10,0),
                    RenderRead()
                }
            }
            
        }
        .BackgroundColor(Theme.BlackBorder3)
        .Set(MauiControls.NavigationPage.HasNavigationBarProperty,false);
    }

    private VisualNode RenderRead()
    {
        return new Border
        {
            new Grid("Auto,*,Auto","Auto,*")
            {
                new Border()
                .GridColumn(0)
                .WidthRequest(2)
                .StrokeShape(new RoundRectangle().CornerRadius(10))
                .BackgroundColor(Colors.White)
                .GridRow(0)
                .Margin(5,15,15,15)
                .GridRowSpan(2)
                ,
                new Label("Description")
                .FontSize(20)
                .TextColor(Colors.White)
                .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                .Margin(0,10,0,0)
                .GridRow(0)
                .GridColumn(1)
                ,
                new Grid
                {
                     new ScrollView
                    {
                        new Label(Props.Book.volumeInfo.description)
                        .FontSize(15)
                        .TextColor(Colors.Gray).HCenter()
                    }
                }.GridRow(1)
                .GridColumn(1)
                .HeightRequest(110),
                new Grid("*","Auto,*")
                {
                    new Border
                    {
                        new Image(State.IsFavorite?"ifavori":"favori")
                        .Aspect(Aspect.AspectFit)
                        .HeightRequest(20)
                        .WidthRequest(20)
                        
                    }.BackgroundColor(Theme.BlackBorder2)
                    .StrokeShape(new RoundRectangle().CornerRadius(10))
                    .HeightRequest(50)
                    .WidthRequest(50)
                    .GridColumn(0)
                    .OnTapped(() =>
                    {
                        if(State.IsFavorite)
                        {
                            SetState(s=>s.IsFavorite=false);
                            RemoveFromFavorite(Props.Book.id);
                        }
                        else
                        {
                            SetState(s=>s.IsFavorite=true);
                            AddToFavorite(Props.Book.id);
                        }
                    }),
                    new Button("Start Reading")
                    .TextColor(Colors.White)
                    .BackgroundColor(Theme.Cam)
                    .FontSize(15)
                    .CornerRadius(10)
                    .HeightRequest(50)
                    .GridColumn(1)
                    .Margin(20,0,10,0)
                    .OnClicked(()=>SetState(s=>s.IsRead=true)),
                }
                .GridRow(2)
                .GridColumnSpan(2)
                .Margin(0,0,20,10)
            }
        }.HeightRequest(245)
        .BackgroundColor(Theme.BlackBorder3)
        .Margin(30,10,30,0)
        .GridRow(1)
        ;
    }

    private VisualNode RenderHeader()
    {
        return new Grid("*","Auto,*,Auto,*,Auto")
        {
            new ImageButton("back")
            .HeightRequest(30)
            .WidthRequest(40)
            .VCenter()
            .GridColumn(0)
            .OnClicked(Back),
            new Label("Book Detail")
            .FontSize(20)
            .TextColor(Colors.White)
            .GridColumn(2)
            .VCenter()
            ,
            new Label("..")
            .FontSize(40)
            .Margin(0,-13,0,0)
            .VStart()
            .TextColor(Colors.White)
            .GridColumn(4),
        }.ZIndex(1).Margin(15,15,15,0).HeightRequest(50).VStart();
    }
}
