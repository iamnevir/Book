using MauiReactor.Animations;
using MauiReactor.Canvas;
using MauiReactor.Shapes;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace BookReactor.Pages.Component;


class SideMenuState
{
    public double Opacity { get; set; } = 0.0;

    public double RotationY { get; set; } = 10;

    public double TranslationX { get; set; } = -250;

    public CommandMenuItem SelectedMenuItem { get; set; }
    public string UserName { get; set; }
    public bool IsShown { get; set; }
    public bool? Result { get; set; }
}

class SideMenu : Component<SideMenuState>
{
    private bool _isShown;
    private Action _onClose;
    private Action _openBookPage;
    private Action _openMagicBookPage;
    private Action _homePage;
    private Action _openFavoritePage;
    private Action _openEBookPage;
    private CommandMenuItem _menuSelect;
    public SideMenu MenuSelect(CommandMenuItem com)
    {
        _menuSelect = com;
        return this;
    }
    public SideMenu OnEBookPage(Action action)
    {
        _openEBookPage = action;
        return this;
    }
    public SideMenu HomePage(Action action)
    {
        _homePage = action;
        return this;
    }
    public SideMenu OpenFavoritePage(Action action)
    {
        _openFavoritePage = action;
        return this;
    }
    public SideMenu OnBookPage(Action action)
    {
        _openBookPage = action;
        return this;
    }
    public SideMenu OnMagicBookPage(Action action)
    {
        _openMagicBookPage = action;
        return this;
    }
    public SideMenu OnClose(Action action)
    {
        _onClose = action;
        return this;
    }
    public SideMenu IsShown(bool isShown)
    {
        _isShown = isShown;
        return this;
    }

    protected override async void OnMounted()
    {
        State.UserName=Logger.KiemTra(Logger.user)? await Logger.ReadAsync(Logger.user):"Unknown";
        State.TranslationX = _isShown ? 0 : -250;
        State.Opacity = _isShown ? 1.0 : 0.0;
        State.RotationY = _isShown ? 0.0 : 10;
        SetState(s => s.SelectedMenuItem = _menuSelect);
        base.OnMounted();
    }

    protected override  void OnPropsChanged()
    {
        State.TranslationX = _isShown ? 0 : -250;
        State.Opacity = _isShown ? 1.0 : 0.0;
        State.RotationY = _isShown ? 0.0 : 10;
        SetState(s => s.SelectedMenuItem = _menuSelect);
        base.OnPropsChanged();
    }
    private async void OpenLoginPage()
    {
        await Navigation.PushAsync<LoginPage, LoginPageProps>(_ =>
        {
            _.SauDangNhap = () => OnMounted();
        });
    }
    private CommunityToolkit.Maui.Views.Popup? _popup;
    public override VisualNode Render()
    {
        return new Grid("39, *,50", "250")
        {
            RenderHeader(),

            RenderBrowse(),
             new Label("Made by Nevir with Love!!")
            .FontSize(12)
            .TextColor(Colors.Gray)
                .FontFamily (Theme.font)
                .TextColor(Colors.White.WithAlpha(0.6f))
                .VEnd()
                .HStart()
                .GridRow (2)
                .Margin(30,0,0,0),
             new Grid
                    {
                         new PopupHost(r => _popup = r)
                        {
                            new Border
                            {
                                new Grid("Auto,*,Auto","*")
                                {
                                    new Label("Bạn có muốn đăng xuất?")
                                    .TextColor(Colors.Black)
                                    .FontAttributes(Microsoft.Maui.Controls.FontAttributes.Bold)
                                    .FontSize(18)
                                    .FontFamily(Theme.font)
                                    .Margin(0,0,0,0)
                                    .GridRow(0),
                                    new Grid("*","Auto,*,Auto")
                                    {
                                        new Button("OK", ()=> _popup?.Close(true))
                                        .GridColumn(0)
                                        .TextColor(Colors.White)
                                        .BackgroundColor(Colors.Blue)
                                        .CornerRadius(20),

                                        new Button("Cancel", ()=> _popup?.Close(false))
                                        .TextColor(Colors.Blue)
                                        .BackgroundColor(Colors.Transparent)
                                        .GridColumn(2)
                                        .CornerRadius(20),
                                    }.GridRow(1).Margin(0,30,0,0)
                                }.Margin(30,20,30,20)
                            }.BackgroundColor(Colors.White)
                             .StrokeShape(new RoundRectangle().CornerRadius(20))
                        }
                        .IsShown(State.IsShown)
                        .OnClosed(result =>
                        {
                            SetState(s =>s.IsShown = false);
                            if ((bool)result)
                            {
                                Logout();
                            }
                        }),
                    },
        }
        .Padding(0, 60)
        .RotationY(State.RotationY)
        .TranslationX(State.TranslationX)
        .Opacity(State.Opacity)
        .WithAnimation(easing: Easing.CubicIn, duration: 300)
        .BackgroundColor(Theme.Bg)
        .HStart()
        .ZIndex(2);
    }

    VisualNode RenderHeader()
    {
        return new Grid("20, 18", "36, *,30")
        {
            new Image("user_dark.png")
                .Aspect(Aspect.Center)
                .GridRowSpan(2)
                .HeightRequest(36)
                .WidthRequest(36)
                .VStart()
                .Clip(new EllipseGeometry().RadiusX(18).RadiusY(18).Center(18,18)),

            new Label(State.UserName)
                .FontSize(17)
                .TextColor(Colors.White)
                .FontFamily(Theme.font)
                .VEnd()
                .GridColumn(1)
                .Margin(5,0),

            new Label("Software Engineer")
                .FontSize(13)
                .TextColor(Colors.White.WithAlpha(0.5f))
                .VStart()
                .FontFamily(Theme.font)
                .GridColumn(1)
                .GridRow(2)
                .Margin(5,0),
            new SKLottieView()
            .Source(new SkiaSharp.Extended.UI.Controls.SKFileLottieImageSource()
                {
                    File="close.json"
                })
                .RepeatCount(0)
                .IsAnimationEnabled(true)
                .IsEnabled(true)
                .IsVisible(true)
                .HeightRequest(40)
                .WidthRequest(40)
                .BackgroundColor(Colors.Transparent)
                .OnTapped(_onClose)
                .GridColumn(3)
                .GridRowSpan(2)
        }
        .Margin(18, 0);
    }
    async void Logout()
    {
        await Logger.Logout(); 
        OnMounted(); 
    }
    VisualNode RenderBrowse()
    {
        return new Grid("16, 180,16,240", "*")
        {
            new Label("BROWSE")
                .FontSize(12)
                .FontFamily (Theme.font)
                .TextColor(Colors.White.WithAlpha(0.6f))
                .FontAttributes(MauiControls.FontAttributes.Bold)
                .VEnd(),

            new VStack(spacing: 0)
            {
                RenderMenuItem("Home", "homeback.png", CommandMenuItem.Home,_homePage),
                RenderMenuItem("Favorites", "favorites_img.png", CommandMenuItem.Favorites,_openFavoritePage),
                RenderMenuItem("Help", "help_img.png", CommandMenuItem.Help),
            }
            .Margin(20,8,0,0)
            .GridRow(1),
            new Label("BOOK")
                .FontSize(12)
                .FontFamily (Theme.font)
                .TextColor(Colors.White.WithAlpha(0.6f))
                .FontAttributes(MauiControls.FontAttributes.Bold)
                .VEnd()
                .Margin(0,0,0,0)
                .GridRow(2),
            new Grid("60,60,60,60","*")
            {
                new VStack
                {
                    RenderMenuItem("Books Market", "book_img.png", CommandMenuItem.Book,_openBookPage),
                }.GridRow(0),
                new VStack
                {
                    RenderMenuItem("Magic Book", "magicbook_img.png", CommandMenuItem.MagicBook,_openMagicBookPage),
                }.GridRow(1),
                new VStack
                {
                    RenderMenuItem("EBook", "ebook_img.png", CommandMenuItem.EBook,_openEBookPage),
                }.GridRow(2),
                new VStack
                {
                    RenderMenuItem("Logout", "logout.png", CommandMenuItem.Logout,()=>SetState(s=>s.IsShown=true),logout:true)
                }.GridRow(3),
                new VStack
                {
                    RenderMenuItem("Login", "login.png", CommandMenuItem.Login,OpenLoginPage)
                }.GridRow(3),
            }.GridRow(3)
            .Margin(20,10,0,0)
            ,
        }
        .Margin(30, 37)
        .GridRow(1);
    }


    VisualNode RenderMenuItem(string title, string icon, CommandMenuItem command,Action action=null, bool firstItem = false,bool logout=false)
    {
        return new SideMenuItem()
            .Label(title)
            .Icon(icon)
            .IsLogout(logout)
            .FirstItem(firstItem)
            .IsSelected(State.SelectedMenuItem == command)
            .OnSelect(() =>
            {
                action?.Invoke();
                SetState(s => s.SelectedMenuItem = command);
            });
    }
}

class SideMenuItemState
{
    public float ScaleX { get; set; } = 0.5f;
    public bool IsSelected { get; set; }
}

class SideMenuItem : Component<SideMenuItemState>
{
    private string _label;
    private string _icon;
    private bool _logout;
    private bool _isVisible;
    private bool _selected;
    private Action _selectAction;
    private bool _firstItem;
    public SideMenuItem IsLogout(bool logout)
    {
        _logout = logout;
        return this;
    }
    public SideMenuItem Label(string label)
    {
        _label = label;
        return this;
    }

    public SideMenuItem Icon(string icon)
    {
        _icon = icon;
        return this;
    }
    public SideMenuItem IsVisible(bool visible)
    {
        _isVisible = visible;
        return this;
    }
    public SideMenuItem IsSelected(bool selected)
    {
        _selected = selected;
        return this;
    }

    public SideMenuItem OnSelect(Action selectAction)
    {
        _selectAction = selectAction;
        return this;
    }

    public SideMenuItem FirstItem(bool firstItem)
    {
        _firstItem = firstItem;
        return this;
    }

    protected override void OnMounted()
    {
        State.ScaleX = _selected ? 1.0f : 0.0f;
        State.IsSelected = _selected;
        base.OnMounted();
    }

    protected override void OnPropsChanged()
    {
        State.ScaleX = _selected ? 1.0f : 0.0f;
        State.IsSelected = _selected;
        base.OnPropsChanged();
    }

    public override VisualNode Render()
    {
        return new CanvasView
        {
            new Group
            {
                !_firstItem ?
                new Align()
                {
                    new Box()
                        .BackgroundColor(Theme.Background.WithAlpha(0.1f))
                }
                .Margin(5,0)
                .Height(1)
                .VStart() : null,

                new Align
                {
                    new Align
                    {
                        new Box()
                            .CornerRadius(12)
                            .BackgroundColor(Color.FromUint(0xFF6792FF).WithLuminosity(0.6f))
                    }
                    .HorizontalAlignment(Microsoft.Maui.Primitives.LayoutAlignment.Start)
                    .Width(State.ScaleX * 225.0f)
                    .WithAnimation(duration: 200)
                }
                .HStart()

                .Width(225.0f),

                new Row("24,*")
                {
                    new AnimatedIcon()
                        .Icon(_icon)
                        .IsSelected(_selected)
                    ,
                    new Text(_label)
                        .FontSize(17)
                        .FontStyle(FontStyleType.Normal)
                        .FontColor(Colors.LightGray)
                        .VerticalAlignment (VerticalAlignment.Center)
                        .Margin(8,0)

                }
                .Margin(8,0,8,0)
            }
        }
        .Margin(-8, -2)
        .BackgroundColor(Colors.Transparent)
        .OnTapped(_selectAction)
        .WidthRequest(225.0)
        .HeightRequest(52)
        .IsVisible(_logout?Logger.KiemTra(Logger.user):_label=="Login"?!Logger.KiemTra(Logger.user):true);
    }
}

class AnimatedIconState
{
    public PointF TranslatePoint { get; set; }
    public bool IsAnimating { get; set; }
    public bool IsSelected { get; set; }
}

class AnimatedIcon : Component<AnimatedIconState>
{
    private string _icon;
    private bool _isSelected;

    public AnimatedIcon Icon(string icon)
    {
        _icon = icon;
        return this;
    }

    public AnimatedIcon IsSelected(bool selected)
    {
        _isSelected = selected;
        return this;
    }

    protected override void OnMounted()
    {
        State.IsSelected = _isSelected;
        State.IsAnimating = _isSelected;

        base.OnMounted();
    }

    protected override void OnPropsChanged()
    {
        if (_isSelected && !State.IsSelected)
        {
            State.IsAnimating = true;
            State.IsSelected = true;
        }
        else if (!_isSelected && State.IsSelected)
        {
            State.IsAnimating = false;
            State.IsSelected = false;
        }

        base.OnPropsChanged();
    }

    public override VisualNode Render()
    {
        return new Align
        {
            new Picture($"BookReactor.Resources.Images.SideMenu.{_icon}")
                .Aspect(Aspect.Fill),

            new AnimationController
            {
                new SequenceAnimation
                {
                    new CubicBezierPathAnimation()
                        .StartPoint(0,0)
                        .EndPoint(0,5)
                        .ControlPoint1(5,0)
                        .ControlPoint2(5,5)
                        .OnTick(v => SetState(s => s.TranslatePoint = v))
                        .Duration(200),

                    new CubicBezierPathAnimation()
                        .StartPoint(0,5)
                        .EndPoint(0,0)
                        .ControlPoint1(-5,5)
                        .ControlPoint2(-5,0)
                        .OnTick(v => SetState(s => s.TranslatePoint = v))
                        .Duration(200),
                }
                .IterationCount(1)
            }
            .IsEnabled(State.IsAnimating)
            .OnIsEnabledChanged(animating => State.IsAnimating = animating)
        }
        .Height(24)
        .Width(24)
        .TranslationX(() => State.TranslatePoint.X)
        .TranslationY(() => State.TranslatePoint.Y)
        .HCenter()
        .VCenter();
    }
}
enum CommandMenuItem
{
    None,
    Home,

    Favorites,

    Help,

    Book,

    MagicBook,
    EBook,
    Logout,
    Login,

    Hehe
}