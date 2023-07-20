using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Models;

public record StartPageImage (string Image)
{
    public static StartPageImage[] StartPageImages = new[]
    {
        new StartPageImage("sp3"),
        new StartPageImage("sp1"),
        new StartPageImage("sp2"),
    };
}
