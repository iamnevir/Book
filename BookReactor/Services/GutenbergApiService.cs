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
    public async Task<GutenbergBook?> GetBookDetailAsync(string id)
    {
        try
        {
            if (id is not null)
            {
                if (id.FirstOrDefault() == char.Parse(","))
                {
                    id=id.Remove(0, 1);
                }
            }
            return await httpClient.GetFromJsonAsync<GutenbergBook>(
                    $"books?ids={id}");
        }
        catch (Exception)
        {

            return null;
        }
        
    }
    public async Task<GutenbergBook?> SearchBookAsync(string text)
    {
        try
        {
            return await httpClient.GetFromJsonAsync<GutenbergBook>(
                    $"books?search=+{text}");
        }
        catch (Exception)
        {

            return null;
        }

    }
}
