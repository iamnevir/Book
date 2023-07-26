
using SimpleRatingControlMaui;
using SkiaSharp.Views.Maui.Controls.Hosting;
using System;

namespace BookReactor;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiReactorApp<MainPage>()
            .UseAcrylicView()
            .UseSkiaSharp()
            .UseSimpleRatingControl()
#if DEBUG
        .EnableMauiReactorHotReload()
#endif
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("EmilysCandy-Regular.ttf", "EmilysCandy");
            });
        builder.Services.AddBookServices(new Uri("https://www.googleapis.com/books/v1/"));
        builder.Services.AddGutenbergServices(new Uri("https://www.gutenberg.org/"));
        return builder.Build();
    }
}