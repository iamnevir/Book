
using Microsoft.Extensions.DependencyInjection;
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
            
#if DEBUG
        .EnableMauiReactorHotReload()
#endif
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("EmilysCandy-Regular.ttf", "EmilysCandy");
            });
        builder.Services.AddBookServices(new Uri("https://www.googleapis.com/books/v1/"));
        return builder.Build();
    }
}