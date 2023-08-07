using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Pages.Component;


class CardPageState
{
    public List<BaiSelect> BaiSelected { get; set; } = new();
    public bool BaiVisible { get; set; } = true;
}

class CardPage:Component<CardPageState>
{
    public Action<List<BaiSelect>> _action;
    public CardPage OnSelected(Action<List<BaiSelect>> action)
    {
        _action = action;
        return this;
    }
    public override VisualNode Render()
    {
        return new Grid
        {
            new Label("Con đường nào rồi cũng sẽ dẫn đến bóng tối, hãy chọn 3 lá bài cho riêng mình ta sẽ ban cho cậu 3 trong 9 con quỷ trong đa vũ trụ tối.")
            .FontFamily(Theme.font)
            .FontSize(13)
            .Margin(20,20,20,10)
            .TextColor(Colors.Gray)
            .HorizontalTextAlignment(TextAlignment.Center)
            .VStart()
            .HCenter()
            .ZIndex(1)
            ,
            new Image("backgroundbai")
            .Aspect(Aspect.Fill)
            ,
            new VStack
            {
                new HStack
                {
                    RenderCard("bai1",BaiSelect.bai1),
                    RenderCard("bai2",BaiSelect.bai2),
                    RenderCard("bai3",BaiSelect.bai3),
                    
                }.Spacing(10),
                new HStack
                {
                    RenderCard("bai4",BaiSelect.bai4),
                    RenderCard("bai5",BaiSelect.bai5),
                    RenderCard("bai6",BaiSelect.bai6),
                }.Spacing(10),
                new HStack
                {
                    RenderCard("bai7",BaiSelect.bai7),
                    RenderCard("bai8",BaiSelect.bai8),
                    RenderCard("bai9",BaiSelect.bai9),
                }.Spacing(10),
            }.VCenter().HCenter().Spacing(10),
            new Button("Start Your Nightmare")
            .VEnd().HCenter()
            .FontFamily(Theme.font)
            .FontSize(15)
            .BackgroundColor(Theme.Tim)
            .HeightRequest(60)
            .WidthRequest(300)
            .Margin(20,0,20,20)
            .CornerRadius(50)
            .OnClicked(()=>{
                SetState(s=>s.BaiVisible=false);
                _action(State.BaiSelected);
            })
            .IsVisible(State.BaiSelected.Count>2)
        }.BackgroundColor(Theme.Tim).ZIndex(1).IsVisible(State.BaiVisible);
    }
    VisualNode RenderCard(string source, BaiSelect baiSelect)
    {
        return new Border
        {
            new Image(State.BaiSelected.Where(b => b == baiSelect).FirstOrDefault() == baiSelect? source:"lungbai")
            .Aspect (Aspect.Fill)
        }.HeightRequest(169)
        .WidthRequest(100)
        .StrokeShape(new RoundRectangle().CornerRadius(10))
        .BackgroundColor(Colors.Transparent)
        .RotationY(State.BaiSelected.Where(b => b == baiSelect).FirstOrDefault() == baiSelect ? 180 : 0)
        .WithAnimation(easing: Easing.CubicInOut, duration: 1000)
        .OnTapped(() => SetState(s => {
                  if (s.BaiSelected.Where(b => b == baiSelect).FirstOrDefault() == baiSelect)
                       { s.BaiSelected.Remove(baiSelect); } 
                  else {
                if (s.BaiSelected.Count > 2)
                {
                    s.BaiSelected.Add(baiSelect);
                    s.BaiSelected.Remove(s.BaiSelected.First());
                }
                else { 
                    s.BaiSelected.Add(baiSelect);
                }
            }
        }));
    }
}
public enum BaiSelect
{
    none,
    bai1,
    bai2,
    bai3,
    bai4, 
    bai5,
    bai6, 
    bai7, 
    bai8, 
    bai9
}