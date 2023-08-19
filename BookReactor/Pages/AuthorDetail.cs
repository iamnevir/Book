using Maui.Skeleton.Animations;
using Maui.Skeleton;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class AuthorDetailState
{
    public List<Item> Books { get; set; }
    public bool IsLoading { get; set; }
    public Item SelectedBook { get; set; }
}
class AuthorDetailProps
{
    public AuthorVip AuthorDetail { get; set; }
}
class AuthorDetail:Component<AuthorDetailState, AuthorDetailProps>
{
    private async void OpenDetailBook(Item book)
    {
        await Navigation.PushAsync<BookDetail, BookDetailProps>(_ =>
        {
            _.Book = book;
        });
    }
    protected override async void OnMounted()
    {
        var googleBook = Services.GetRequiredService<IGoogleServices>();
        State.IsLoading = true;
        var books = await googleBook.GetBook($"inauthor:\"{Props.AuthorDetail.Name}\"");
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
        State.IsLoading = true;
        var books = await googleBook.GetBook($"inauthor:\"{Props.AuthorDetail.Name}\"");
        SetState(s =>
        {
            s.Books = books.items;
            s.IsLoading = false;
        });
        base.OnPropsChanged();
    }
    private async void Back()
    {
        await Navigation.PopAsync();
    }
    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid("Auto,Auto,Auto,*,Auto,Auto","*")
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
                        new Label("Author Detail")
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
                            .RepeatCount(-1)
                            .IsAnimationEnabled(true)
                            .IsEnabled(true)
                            .IsVisible(true)
                            .HeightRequest(50)
                            .WidthRequest(50)
                            .BackgroundColor(Colors.Transparent)
                            .GridColumn(4),
                    }.GridRow(0).Margin(10,10,10,0),
                  new Grid("*","Auto,*,Auto")
                  {
                      new Border
                      {
                          new Image(Props.AuthorDetail.Source).Aspect(Aspect.AspectFill)
                      }.HeightRequest(230)
                      .WidthRequest(160)
                      .StrokeShape(new RoundRectangle().CornerRadius(30))
                      .Stroke(Colors.Transparent)
                      ,
                      new VStack
                      {
                          new Border
                          {
                              new VStack
                              {
                                  new Label(Props.AuthorDetail.Name)
                                  .TextColor(Colors.White)
                                    .FontSize(15)
                                    .FontFamily(Theme.font)
                                    .HCenter(),
                                  new Label(Props.AuthorDetail.Alias)
                                  .TextColor(Colors.Gray)
                                    .FontSize(13)
                                    .FontFamily(Theme.font)
                                    .HCenter()
                              }.HCenter().VCenter().Margin(10).Spacing(5)
                          }.StrokeShape(new RoundRectangle().CornerRadius(30))
                          .WidthRequest(150)
                          .HeightRequest(70)
                          .BackgroundColor(Theme.BlackBorder1),
                          new Border
                          {
                              new VStack
                              {
                                  new Label("Born")
                                  .TextColor(Colors.Gray)
                                    .FontSize(13)
                                    .FontFamily(Theme.font)
                                    .HCenter(),
                                  new Label(Props.AuthorDetail.Born)
                                  .TextColor(Colors.White)
                                    .FontSize(15)
                                    .FontFamily(Theme.font)
                                    .HCenter()
                              }.HCenter().VCenter().Margin(10).Spacing(5)
                          }.StrokeShape(new RoundRectangle().CornerRadius(30))
                          .WidthRequest(150)
                          .HeightRequest(70)
                          .BackgroundColor(Theme.BlackBorder1),
                                                    new Border
                          {
                              new VStack
                              {
                                  new Label("Live")
                                  .TextColor(Colors.Gray)
                                    .FontSize(13)
                                    .FontFamily(Theme.font)
                                    .HCenter(),
                                  new Label(Props.AuthorDetail.BornPlace)
                                  .TextColor(Colors.White)
                                    .FontSize(15)
                                    .FontFamily(Theme.font)
                                    .HCenter()
                              }.HCenter().VCenter().Margin(10).Spacing(5)
                          }.StrokeShape(new RoundRectangle().CornerRadius(30))
                          .WidthRequest(150)
                          .HeightRequest(70)
                          .BackgroundColor(Theme.BlackBorder1),
                      }.GridColumn(2).Spacing(10)
                  }.GridRow(1).Margin(10,10,20,0),
                  new Rectangle().Fill(Color.FromArgb("#E6E6E6"))
                    .HeightRequest(1).GridRow(2).Margin(20),
                  new ScrollView
                  {
                      new Label(Props.AuthorDetail.Description)
                                .TextColor(Colors.Gray)
                                    .FontSize(18)
                                    .FontFamily("Poppins")
                  }.GridRow(3)
                   .Margin(20,0,20,0),
                  new Label("Book of Author")
                  .TextColor(Colors.White)
                                    .FontSize(20)
                                    .FontFamily(Theme.font)
                                    .GridRow(4)
                                    .Margin(20,10,0,10),
                  new CollectionView()
                       .ItemsSource(State.Books,RenderBookList)
                       .ItemsLayout(new HorizontalLinearItemsLayout().ItemSpacing(10))
                       .GridRow(5)
                       .Margin(20,0,0,10)
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty,false)
        .BackgroundColor(Colors.Black);
    }
    private VisualNode RenderBookList(Item item)
    {
        if (item.volumeInfo.authors is null || item.volumeInfo.imageLinks is null)
        {
            return null;
        }
        else
        {
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
               OpenDetailBook(State.SelectedBook);
           });
        }

    }
}
