using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Services;

public interface IGoogleAuthService
{
    Task<UserDTO> AuthenticateAsync();
    Task LogoutAsync();
    Task<UserDTO> GetCurrentUserAsync();
}
