
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Authentication;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
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
    public async void LoginCommand()
                {
                    var authUrl = $"{Constants.Google.auth_uri}?response_type=code" +
                                  $"&redirect_uri=com.company.magicbook://" +
                                  $"&client_id={Constants.Google.client_id}" +
                                  $"&scope=https://www.googleapis.com/auth/books" +
                                  $"&include_granted_scopes=true" +
                                  $"&state=state_parameter_passthrough_value";


                    var callbackUrl = "com.company.magicbook://";

                    try
                    {
                        var response = await WebAuthenticator.AuthenticateAsync(new WebAuthenticatorOptions()
                        {
                            Url = new Uri(authUrl),
                            CallbackUrl = new Uri(callbackUrl)
                        });

                        var codeToken = response.Properties["code"];

                        var parameters = new FormUrlEncodedContent(new[]
                        {
                        new KeyValuePair<string,string>("grant_type","authorization_code"),
                        new KeyValuePair<string,string>("client_id",Constants.Google.client_id),
                        new KeyValuePair<string,string>("redirect_uri",callbackUrl),
                        new KeyValuePair<string,string>("code",codeToken),
                    });


                        HttpClient client = new();
                        var accessTokenResponse = await client.PostAsync(Constants.Google.token_ur, parameters);

                        LoginResponse loginResponse;

                        if (accessTokenResponse.IsSuccessStatusCode)
                        {
                            var data = await accessTokenResponse.Content.ReadAsStringAsync();

                            loginResponse = JsonConvert.DeserializeObject<LoginResponse>(data);
                            await Logger.WriteAsync(Logger.token,$"{loginResponse.AccessToken}");
                            await Logger.WriteAsync(Logger.refreshtoken,$"{loginResponse.RefreshToken}");
                            await Logger.WriteAsync(Logger.user,Logger.GetName(loginResponse.IdToken));
                        }
                    }
                    catch (TaskCanceledException)
                    {
                        // Use stopped auth
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
                .OnTapped(LoginCommand)
            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty, false);
    }
}
