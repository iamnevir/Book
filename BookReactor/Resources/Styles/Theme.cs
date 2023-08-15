 using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Resources.Styles;

public class Theme
{
    public static Color BlackBorder = Color.FromArgb("#1D1C23");
    public static Color BlackBorder1 = Color.FromArgb("#161E26");
    public static Color BlackBorder2 = Color.FromArgb("#292D36");
    public static Color BlackBorder3 = Color.FromArgb("#1D212B");
    public static Color Bg = Color.FromArgb("#17161E");
    public static Color Kem = Color.FromArgb("#FFFAF0");
    public static Color XanhDam = Color.FromArgb("#1A193B");
    public static Color Vien = Color.FromArgb("#5F65A5");
    public static Color Xanh = Color.FromArgb("#272BA6");
    public static Color Tim = Color.FromArgb("#651D80");
    public static Color Cam = Color.FromArgb("#FA784A");
    public static Color XanhKem = Color.FromArgb("#CBFF37");
    public static Color Do = Color.FromArgb("#DB3A3C");
    public static string font = "OpenSan";
    public static Color Background { get; } = Color.FromUint(0xFFF2F6FF);
    public static Color Shadow { get; } = Color.FromUint(0xFF4A5367);
    public static MauiControls.Brush ShadowBrush { get; } = new MauiControls.SolidColorBrush(Shadow);
    public static Color ShadowDark { get; } = Color.FromUint(0xFF000000);
    public static MauiControls.Brush ShadowDarkBrush { get; } = new MauiControls.SolidColorBrush(Shadow);
    public static Color Background2 { get; } = Color.FromUint(0xFF17203A);

    public static Color Bookshelf1 = Color.FromArgb("#BAFF34");
    public static Color Bookshelf2 = Color.FromArgb("#0EFF61");
    public static Color Bookshelf3 = Color.FromArgb("#5263FF");
    public static Color Bookshelf4 = Color.FromArgb("#C379FF");
    public static Color Bookshelf5 = Color.FromArgb("#FF33FF");
}
