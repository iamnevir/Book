


namespace BookReactor;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiReactorApp<MainPage>()
#if DEBUG
        .EnableMauiReactorHotReload()
#endif
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("EmilysCandy-Regular.ttf", "EmilysCandy");
                fonts.AddFont("EmilysCandy-Regular.ttf", "OpenSansSemiBold");
            });

        return builder.Build();
    }
}