
using BookReactor.Auth0;
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
            .UseSkiaSharp()
            .UseSimpleRatingControl()
#if DEBUG
        .EnableMauiReactorHotReload()
#endif
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("EmilysCandy-Regular.ttf", "EmilysCandy");
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSan");
                fonts.AddFont("Poppins-Regular.ttf", "Poppins");
                fonts.AddFont("Roboto-Regular.ttf", "Roboto");
            });
        builder.Services.AddBookServices(new Uri("https://www.googleapis.com/books/v1/"));
        builder.Services.AddGutenbergServices(new Uri("https://gutendex.com/"));
        builder.Services.AddGetTextServices(new Uri("https://www.gutenberg.org/"));
        builder.Services.AddAuth0Services(new Auth0Client(new()
        {
            Domain = "dev-bq2hqdm86wdbgdxd.us.auth0.com",
            ClientId = "u8O4lLxxi9YXp6e2oTGRlVvtRQEaaLVd",
            Scope = "openid profile",
            RedirectUri = "myapp://callback"
        }));
        return builder.Build();
    }
}