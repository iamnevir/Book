using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public interface IGetTextServices
{
    Task<string> GetTextAsync(string link);
}
