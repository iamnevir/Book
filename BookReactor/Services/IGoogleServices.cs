using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public interface IGoogleServices
{
    Task<Book> GetBookDetailAsync(string id);
    Task<Book> GetBook(string filter, string resultcount);
    Task<Item> GetBookById(string id);
}
public static class ServiceCollectionExtensions
{
    public static void AddBookServices(this IServiceCollection services, Uri serverUri)
    {
        services.AddSingleton<IGoogleServices, GoogleBookServices>();

        services.AddHttpClient("GoogleBook", httpClient =>
        {
            httpClient.BaseAddress = serverUri;
        });
    }
    public static void AddGutenbergServices(this IServiceCollection services, Uri serverUri)
    {
        services.AddSingleton<IGutenbergApiService, GutenbergApiService>();

        services.AddHttpClient("GutenbergApi", httpClient =>
        {
            httpClient.BaseAddress = serverUri;
        });
    }
}