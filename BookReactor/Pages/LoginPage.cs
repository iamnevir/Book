
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
    public bool OnLogin { get; set; }
}
class LoginPageProps
{
    public Action SauDangNhap { get; set; }
}
class LoginPage : Component<LoginPageState, LoginPageProps>
{
    
    private async void DaDangNhap()
    {
        Props.SauDangNhap.Invoke();
        await Navigation.PopAsync();
    }
    public async Task LoginCommand()
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
                new VStack
                {
                    new Label("Đăng nhập bằng Google")
                    .FontSize(25)
                    .FontFamily(Theme.font)
                    .TextColor(Colors.White)
                    ,
                    new SKLottieView()
                    .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                    {
                        File="ggicon.json"
                    })
                    .IsAnimationEnabled(State.OnLogin)
                    .IsVisible(true)
                    .HeightRequest(150)
                    .WidthRequest(150)
                    .BackgroundColor(Colors.Transparent)
                    .ZIndex(1)
                    .OnTapped(async ()=>
                    {
                        SetState(s=>s.OnLogin=true);
                       await LoginCommand();
                        DaDangNhap();
                    })
                }.Margin(0,0,0,50)
                .VEnd().HCenter()

            }
        }.Set(MauiControls.NavigationPage.HasNavigationBarProperty, false);
    }
}
