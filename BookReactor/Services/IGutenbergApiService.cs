using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;


public interface IGutenbergApiService
{
    Task<GutenbergBook> GetBookDetailAsync(string id);
    Task<string> GetTextAsync(string link);
}
