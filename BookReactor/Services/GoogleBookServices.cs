
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
        var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/{id}/volumes");
        request.Headers.Add("Authorization", $"Bearer {token}");
        var response = await httpClient.SendAsync(request);
        response.EnsureSuccessStatusCode();
        var data = await response.Content.ReadAsStringAsync();
        return JsonConvert.DeserializeObject<Book>(data);
    }
    public async Task<bool> AddBookToFavoriteAsync(string token, string id)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/0/addVolume?volumeId={id}");
        request.Headers.Add("Authorization", $"Bearer {token}");
        var content = new StringContent(string.Empty);
        content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
        request.Content = content;
        var response = await httpClient.SendAsync(request);
        return response.IsSuccessStatusCode;
    }
    public async Task<bool> RemoveBookToFavoriteAsync(string token, string id)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/0/removeVolume?volumeId={id}");
        request.Headers.Add("Authorization", $"Bearer {token}");
        var content = new StringContent(string.Empty);
        content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
        request.Content = content;
        var response = await httpClient.SendAsync(request);
        return response.IsSuccessStatusCode;
    }
    public async Task<bool> RemoveAllBookToFavoriteAsync(string token)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, $"https://www.googleapis.com/books/v1/mylibrary/bookshelves/0/removeVolume?clearVolumes");
        request.Headers.Add("Authorization", $"Bearer {token}");
        var content = new StringContent(string.Empty);
        content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
        request.Content = content;
        var response = await httpClient.SendAsync(request);
        return response.IsSuccessStatusCode;
    }
}
