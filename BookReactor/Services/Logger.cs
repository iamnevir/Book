using CommunityToolkit.Maui.Core;
using IdentityModel.OidcClient;
using Microsoft.IdentityModel.Tokens;
using Microsoft.Maui.Storage;
using Newtonsoft.Json;
using SkiaSharp;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BookReactor.Services;

public static class Logger
{
    public static string user = System.IO.Path.Combine(FileSystem.AppDataDirectory, "user.txt");
    public static string token = System.IO.Path.Combine(FileSystem.AppDataDirectory, "token.txt");
    public static string refreshtoken = System.IO.Path.Combine(FileSystem.AppDataDirectory, "refreshtoken.txt");
    public static string favorite = System.IO.Path.Combine(FileSystem.AppDataDirectory, "favorite.txt");
    public static string continueRead = System.IO.Path.Combine(FileSystem.AppDataDirectory, "continueRead.txt");

    public static async Task WriteAsync(string path, string text)
    {
        try
        {
            var textMaHoa = GenerateToken(text);
            await File.WriteAllTextAsync(path, textMaHoa);
        }
        catch (Exception)
        {
        }
        
    }
    public static async Task WriteFavoriteAsync(string text)
    {
        try
        {
            await File.WriteAllTextAsync(favorite, text);
        }
        catch (Exception)
        {
        }
       
    }
    public static async Task AddFavoriteAsync( string file,string text)
    {
        try
        {
            if (File.Exists(file))
            {
                await File.AppendAllTextAsync(file, $",{text}");
            }
            else
            {
                await File.AppendAllTextAsync(file, $"{text}");
            }
        }
        catch (Exception)
        {
        }
       
        
    }
    public static async Task RemoveFavoriteAsync(string file,string id)
    {
        try
        {
            var a = await File.ReadAllTextAsync(file);
            var list = a.Split(",");
            if (list[0] == id)
            {
                a = a.Replace($"{id}", string.Empty);
            }
            else
            {
                a = a.Replace($",{id}", string.Empty);
            }
            await File.WriteAllTextAsync(file, a);
        }
        catch (Exception)
        {
        }
        

    }
    public static async Task<string[]> ReadFavoriteAsync(string file)
    {
        try
        {
            var a = await File.ReadAllTextAsync(file);
            return a.Split(",");
        }
        catch (Exception)
        {
            return null;
        }
       
    }
    public static bool KiemTra(string path)
    {
        try
        {
            return File.Exists(path);
        }
        catch (Exception)
        {
            return false;
        }
        
    }
    public static async Task<string> ReadAsync(string path)
    {
        try
        {
            var jwt = await File.ReadAllTextAsync(path);
            var decodedToken = JWTDecoder.Decoder.DecodeToken(jwt);
            string payload = decodedToken.Payload;
            var token = JsonConvert.DeserializeObject<Token>(payload);
            return token.token;
        }
        catch (Exception)
        {
            return null;
        }
        
    }
    public static string GetName(string jwt)
    {
        try
        {
            var decodedToken = JWTDecoder.Decoder.DecodeToken(jwt);
            string payload = decodedToken.Payload;
            var jsonObject = JsonConvert.DeserializeObject<UserInfo>(payload);
            return jsonObject.name;
        }
        catch (Exception)
        {
            return null;
        }
        
    }
    public static async void RemoveAllFavorite()
    {
        try
        {
            await File.WriteAllTextAsync(favorite, string.Empty);
        }
        catch (Exception)
        {
        }
       
    }
    public static async Task Logout()
    {
        try
        {
            await Task.Run(() =>
            {
                File.Delete(user);
                File.Delete(refreshtoken);
                File.Delete(token);
                File.Delete(favorite);
            });
        }
        catch(Exception)
        {

        }
    }
    public static string GenerateToken(string text)
    {
        try
        {
            var claims = new[]
            {
                new Claim("token", text),
            };
            var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("anh060522@gmail.comanh060522@gmail.com"));
            var signingCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);
            var token = new JwtSecurityToken(
                claims: claims,
                signingCredentials: signingCredentials
                );
            var tokenString = new JwtSecurityTokenHandler().WriteToken(token);
            return tokenString;
        }
        catch (Exception)
        {
            return null;
        }
       
    }
    public static async Task ToastButton(string text)
    {
        try
        {
            CancellationTokenSource cancellationToken = new();
            ToastDuration duration = ToastDuration.Short;
            double fontsize = 18;
            var toast = CommunityToolkit.Maui.Alerts.Toast.Make(text, duration, fontsize);
            await toast.Show(cancellationToken.Token);
        }
        catch (Exception)
        {
        }
        
    }
}

