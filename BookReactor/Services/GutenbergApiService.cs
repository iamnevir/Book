using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public class GutenbergApiService : IGutenbergApiService
{
    public const string BookHttpClientName = "GutenbergApi";
    readonly IHttpClientFactory _httpClientFactory;
    public GutenbergApiService(IHttpClientFactory httpClientFactory)
    { _httpClientFactory = httpClientFactory; }
    HttpClient httpClient => _httpClientFactory.CreateClient(BookHttpClientName);
    public async Task<GutenbergBook?> GetBookDetailAsync(string id) =>
    await httpClient.GetFromJsonAsync<GutenbergBook>(
       $"?ids={id}");
    public async Task<string> GetTextAsync(string link) =>
    await httpClient.GetStringAsync(
       $"{link}");
}
