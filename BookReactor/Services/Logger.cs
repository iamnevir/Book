using Microsoft.Maui.Storage;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public static class Logger
{
    static string filePath = System.IO.Path.Combine(FileSystem.AppDataDirectory,"logs.txt");
    static string favorite = System.IO.Path.Combine(FileSystem.AppDataDirectory,"favorite.txt");

    public static async Task WriteLogAsync(string text)
    {
        await File.WriteAllTextAsync(filePath, text);
    }
    public static bool KiemTraLogin()
    {
        return File.Exists(filePath);
    }
    public static bool KiemTraFavorite()
    {
        return File.Exists(favorite);
    }
    public static void CreateLogAsync()
    {
        File.Create(filePath);
    }
    public static async Task<string> GetLogAsync()
    {
        return await File.ReadAllTextAsync(filePath);
    }

    public static async Task AddFavoriteAsync(string id)
    {
        if(File.Exists(favorite))
        {
            await File.AppendAllTextAsync(favorite, $",{id}");
        }
        else
        {
            await File.AppendAllTextAsync(favorite, $"{id}");
        }
        
    }
    public static async Task RemoveFavoriteAsync(string id)
    {
       var ids= await File.ReadAllTextAsync(favorite);
       await File.WriteAllTextAsync(favorite, ids.Replace($",{id}",""));

    }
    public static void DeleteFavoriteAsync()
    {
         File.Delete(favorite);
    }
    public static async Task<string> GetFavoriteAsync()
    {
        return await File.ReadAllTextAsync(favorite);
    }
}
