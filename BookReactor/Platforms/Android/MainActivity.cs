using Android.App;
using Android.Content.PM;
using Android.Content;
using Android.OS;
using System;
using System.Threading.Tasks;
using Microsoft.Maui.ApplicationModel;

namespace BookReactor;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{
    
}
