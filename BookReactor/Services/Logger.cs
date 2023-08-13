using Microsoft.Maui.Storage;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public static class Logger
{
    public static string user = System.IO.Path.Combine(FileSystem.AppDataDirectory, "user.txt");
    public static string token = System.IO.Path.Combine(FileSystem.AppDataDirectory, "token.txt");
    public static string refreshtoken = System.IO.Path.Combine(FileSystem.AppDataDirectory, "refreshtoken.txt");

    public static async Task WriteAsync(string path, string text)
    {
        await File.WriteAllTextAsync(path, text);
    }
    public static bool KiemTra(string path)
    {
        return File.Exists(path);
    }
    public static async Task<string> ReadAsync(string path)
    {
        return await File.ReadAllTextAsync(path);
    }
    public static string GetName(string jwt)
    {
        var decodedToken = JWTDecoder.Decoder.DecodeToken(jwt);
        string payload = decodedToken.Payload;
        var jsonObject = JsonConvert.DeserializeObject<UserInfo>(payload);
        return jsonObject.name;
    }
    public static async Task Logout()
    {
        await Task.Run(() =>
        {
            File.Delete(user);
            File.Delete(refreshtoken);
            File.Delete(token);
        });
    }
}
