using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public class GetTextServices: IGetTextServices
{
    public const string StringHttpClientName = "GetTextApi";
    readonly IHttpClientFactory _httpClientFactory;
    public GetTextServices(IHttpClientFactory httpClientFactory)
    { _httpClientFactory = httpClientFactory; }
    HttpClient httpClient => _httpClientFactory.CreateClient(StringHttpClientName);
    public async Task<string> GetTextAsync(string link) =>
    await httpClient.GetStringAsync(
       $"{link}");
}
