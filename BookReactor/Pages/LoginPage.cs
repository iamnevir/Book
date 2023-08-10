
using BookReactor.Auth0;
using Microsoft.Extensions.DependencyInjection;
using System.Threading.Tasks;

namespace BookReactor.Pages;

class LoginPageState
{
}
class LoginPage : Component<LoginPageState>
{
    private async void DaDangNhap()
    {
        await Navigation.PopAsync();
    }
    private async Task OnLoginClicked()
    {
        var googleBook = Services.GetRequiredService<IAuth0Client>();
        var loginResult = await googleBook.LoginAsync();

        if (!loginResult.IsError)
        {
           await Logger.WriteLogAsync(loginResult.User.Identity.Name);
        }
        else
        {

        }
    }

    public override VisualNode Render()
    {
        return new ContentPage
        {
            new Grid
            {
                new Image("loginbg").Aspect(Aspect.Fill),
                new SKLottieView()
                .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                {
                    File="ggicon.json"
                })
                .IsAnimationEnabled(true)
                .IsEnabled(true)
                .IsVisible(true)
                .HeightRequest(150)
                .WidthRequest(150)
                .VEnd().HCenter()
                .Margin(0,0,0,50)
                .BackgroundColor(Colors.Transparent)
                .ZIndex(1)
                .OnTapped(async () =>
                {
                    await OnLoginClicked();
                    DaDangNhap();
                })
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty, false);
    }
}
