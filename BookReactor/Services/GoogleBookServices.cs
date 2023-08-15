
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public class GoogleBookServices: IGoogleServices
{
    const string ApiKey = "AIzaSyCm_ILfFTaN8gCC72EMq6xt5_kfP5lCZXg";
    public const string BookHttpClientName = "GoogleBook";
    readonly IHttpClientFactory _httpClientFactory;
    public GoogleBookServices(IHttpClientFactory httpClientFactory)
    { _httpClientFactory = httpClientFactory; }
    HttpClient httpClient => _httpClientFactory.CreateClient(BookHttpClientName);
    public async Task<Book> GetBook(string filter) =>
       await httpClient.GetFromJsonAsync<Book>(
           $"volumes?q={filter}&key={ApiKey}");
    public async Task<Item> GetBookById(string id) =>
       await httpClient.GetFromJsonAsync<Item>(
           $"volumes/{id}?key={ApiKey}");
    public async Task<BookshelfList> GetBookshelfListAsync(string token)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, "https://www.googleapis.com/books/v1/mylibrary/bookshelves");
        request.Headers.Add("Authorization", $"Bearer {token}");
        var response = await httpClient.SendAsync(request);
        response.EnsureSuccessStatusCode();
        var data = await response.Content.ReadAsStringAsync();
        return JsonConvert.DeserializeObject<BookshelfList>(data);
    }
    public async Task<Book> GetBookFromBookshelfAsync(string token,int id)
    {
        try
        {
            var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/{id}/volumes");
            request.Headers.Add("Authorization", $"Bearer {token}");
            var response = await httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var data = await response.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<Book>(data);
        }
        catch (TaskCanceledException)
        {
            return null;
        }
        
    }
    public async Task<bool> AddBookToFavoriteAsync(string token, string id)
    {
        try
        {
            var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/0/addVolume?volumeId={id}");
            request.Headers.Add("Authorization", $"Bearer {token}");
            var content = new StringContent(string.Empty);
            content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            request.Content = content;
            var response = await httpClient.SendAsync(request);
            return response.IsSuccessStatusCode;

        }
        catch (TaskCanceledException)
        {
            return false;
        }
        
    }
    public async Task<bool> RemoveBookToFavoriteAsync(string token, string id)
    {
        try
        {
            var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/0/removeVolume?volumeId={id}");
            request.Headers.Add("Authorization", $"Bearer {token}");
            var content = new StringContent(string.Empty);
            content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            request.Content = content;
            var response = await httpClient.SendAsync(request);
            return response.IsSuccessStatusCode;
        }
        catch (TaskCanceledException)
        {

            return false;
        }
    }
    public async Task<bool> RemoveAllBookToFavoriteAsync(string token)
    {
        try
        {
            var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/0/removeVolume?clearVolumes");
            request.Headers.Add("Authorization", $"Bearer {token}");
            var content = new StringContent(string.Empty);
            content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            request.Content = content;
            var response = await httpClient.SendAsync(request);
            return response.IsSuccessStatusCode;
        }
        catch (TaskCanceledException)
        {

            return false;
        }
        
    }
    public async Task RefreshTokenAsync()
    {
        try
        {
            string refreshToken = await Logger.ReadAsync(Logger.refreshtoken);
            var request = new HttpRequestMessage(HttpMethod.Post, "https://oauth2.googleapis.com/token");
            var collection = new List<KeyValuePair<string, string>>
            {
                new("client_id", Constants.Google.client_id),
                new("grant_type", "refresh_token"),
                new("refresh_token", $"{refreshToken}")
            };
            var content = new FormUrlEncodedContent(collection);
            request.Content = content;
            var response = await httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var token = await response.Content.ReadAsStringAsync();
            var token1 = JsonConvert.DeserializeObject<LoginResponse>(token);
            await Logger.WriteAsync(Logger.token, token1.AccessToken);
            await Logger.WriteAsync(Logger.refreshtoken, token1.RefreshToken);
        }
        catch (TaskCanceledException )
        {
        }
        
    }
}
