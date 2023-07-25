using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
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

    public async Task<Book?> GetBookDetailAsync(string id) =>
       await httpClient.GetFromJsonAsync<Book>(
           $"volumes?q={id}&key={ApiKey}");
    public async Task<Book> GetBook(string filter, string resultcount) =>
       await httpClient.GetFromJsonAsync<Book>(
           $"volumes?q={filter}&maxResults={resultcount}&key={ApiKey}");
    public async Task<Item> GetBookById(string id) =>
       await httpClient.GetFromJsonAsync<Item>(
           $"volumes/{id}");
    public static class ServiceUrl
    {
        public const string header = "/volumes?q=id=";
    }
}
