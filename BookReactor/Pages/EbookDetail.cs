
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class EbookDetailState
{
    public bool IsFavorite { get; set; }
}
class EbookDetailProps
{
    public Item Book { get; set; }
}
class EbookDetail:Component<EbookDetailState, EbookDetailProps>
{
    private async void Back()
    {
        await Navigation.PopAsync();
    }
    private async void OpenReadEBook()
    {
        await Navigation.PushAsync<ReadPage, ReadPageProps>(_ =>
        {
            switch(Props.Book.id)
            {
                case "PcWrDwAAQBAJ":
                    _.Id = "5201";
                    break;
                case "yzowDwAAQBAJ":
                    _.Id = "7849";
                    break;
                case "BCgqDwAAQBAJ":
                    _.Id = "68283";
                    break;
                case "uicqDwAAQBAJ":
                    _.Id = "6087";
                    break;
                case "gTowDwAAQBAJ":
                    _.Id = "71085";
                    break;
                case "pjowDwAAQBAJ":
                    _.Id = "71180";
                    break;
                case "LS81DwAAQBAJ":
                    _.Id = "2701";
                    break;
                case "FJkAEAAAQBAJ":
                    _.Id = "31619";
                    break;
                case "q7ACEAAAQBAJ":
                    _.Id = "69087";
                    break;
            }
        });
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
        var source = Props.Book.volumeInfo.imageLinks.extraLarge.Replace("http", "https");
        return new ContentPage
        {
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
                                    new Label(Props.Book.volumeInfo.publisher)
                                    .FontSize(15)
                                    .TextColor(Colors.White)
                                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    .HCenter()
                                    ,
                                    new Label("Publisher")
                                    .FontSize(12).HCenter()
                                    .TextColor(Colors.Gray)
                                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                }.GridColumn(8).VCenter().Spacing(5).Margin(0,0,20,0)
                            }
                       
                        
                    }.VEnd()
                    .HeightRequest(90)
                    .Margin(30,0,30,20)
                    .StrokeShape(new RoundRectangle().CornerRadius(10))
                    .BackgroundColor(Colors.Black).Opacity(0.6)
                }.GridRow(0).Margin(10,10,10,0),
                RenderRead()
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
                    .OnClicked(OpenReadEBook),
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
            new Label("Detail eBook")
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
            .GridColumn(4)

        }.ZIndex(1).Margin(15,15,15,0).HeightRequest(50).VStart();
    }
}
