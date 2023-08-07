//using Microsoft.Maui.ApplicationModel;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace BookReactor.Services;

//public partial class GoogleAuthService
//{
//    private TaskCompletionSource<UserDTO> _taskCompletionSource;
//    private Task<UserDTO> GoogleAuthentication
//    {
//        get => _taskCompletionSource.Task;
//    }
//#if ANDROID
//    public GoogleAuthService()
//    {
//        MainActivity.ResultGoogleAuth += MainActivity_ResultGoogleAuth;
//        // Get current activity
//        _activity = Platform.CurrentActivity;

//        // Config Auth Option
//        _gso = new GoogleSignInOptions.Builder(GoogleSignInOptions.DefaultSignIn)
//                        .RequestIdToken("XXXX")
//                        .RequestEmail()
//                        .RequestId()
//                        .RequestProfile()
//                        .Build();

//        // Get client
//        _googleSignInClient = GoogleSignIn.GetClient(_activity, _gso);
//    }
//    public Task<UserDTO> AuthenticateAsync()
//    { 
//        _taskCompletionSource = new TaskCompletionSource<UserDTO>();
//        _activity.StartActivityForResult(_googleSignInClient.SignInIntent, 9001);

//        return GoogleAuthentication;
//    }
//    private void MainActivity_ResultGoogleAuth(object sender, (bool Success, GoogleSignInAccount Account) e)
//    {
//    if (e.Success)
//        // Set result of Task
//        _taskCompletionSource.SetResult(new UserDTO
//        {
//            Email = e.Account.Email,
//            FullName = e.Account.DisplayName,
//            Id = e.Account.Id,
//            UserName = e.Account.GivenName
//        });
//    else
//        // Set Exception
//        _taskCompletionSource.SetException(new Exception("Error"));
//    }
//    public async Task<UserDTO> GetCurrentUserAsync()
//    {
//        try
//        {
//            var user = await _googleSignInClient.SilentSignInAsync();
//            return new UserDTO
//            {
//                Email = user.Email,
//                FullName = $"{user.DisplayName}",
//                Id = user.Id,
//                UserName = user.GivenName
//            };

//        }
//        catch (Exception)
//        {
//            throw new Exception("Error");
//        }
//    }
//    public Task LogoutAsync() => _googleSignInClient.SignOutAsync();
//#endif
//}
