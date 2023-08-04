using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Models;

public class AuthorVip
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Alias { get; set; }
    public string Description { get; set; }
    public string Source { get; set; }

    public string Born { get; set; }
    public string BornPlace { get; set; }

    public static AuthorVip[] authors = new[]
    {
        new AuthorVip
        {
            Id = 1,
            Name="Stephen King",
            Alias="Nhà văn",
            Description="Stephen King là nhà văn người Mỹ thiên về thể loại kinh dị hoặc giả tưởng rất được tán thưởng khắp thế giới, đặc biệt với mô-típ biến đổi những tình huống căng thẳng bình thường thành hiện tượng khiếp đảm.",
            Source="stephenking",
            Born="Sep 21, 1947",
            BornPlace="Maine, Hoa Kỳ"
        },
        new AuthorVip
        {
            Id = 2,
            Name="Keisuke Itagaki",
            Alias="Mangaka",
            Description="Keisuke Itagaki là một họa sĩ truyện tranh Nhật Bản. Ông được biết đến với loạt phim võ thuật Grappler Baki và bốn phần tiếp theo của nó, đã bán được hơn 75 triệu tập. Năm 1996, ông bắt đầu làm việc trên Garōden, một tác phẩm gốc của Baku Yumemakura. Anh ấy cũng đã hợp tác trong bộ truyện Garōden Boy.",
            Source="itagaki",
            Born="April 4,1957",
            BornPlace="California, Hoa Kỳ"
        },
        new AuthorVip
        {
            Id = 3,
            Name="Miura Kentaro",
            Alias="Mangaka",
            Description="Kentaro Miura là một họa sĩ truyện tranh Nhật Bản. Anh ấy được biết đến nhiều nhất với loạt phim giả tưởng đen tối nổi tiếng Berserk, bắt đầu xuất bản nhiều kỳ vào năm 1989 và tiếp tục cho đến khi anh ấy qua đời.",
            Source="miura",
            Born="July 11, 1966",
            BornPlace="Chiba, Nhật Bản"
        },
        new AuthorVip
        {
            Id = 4,
            Name="Scott Snyder",
            Alias="Tác giả",
            Description="Scott Snyder là một tác giả người Mỹ. Anh ấy được biết đến với tập truyện ngắn Voodoo Heart năm 2006 và tác phẩm của anh ấy cho DC Comics, bao gồm các sê-ri như American Vampire, Detective Comics, một bộ phim được đánh giá cao về Batman, Swamp Thing và Justice League cũng như bộ phim xuyên không của công ty. cốt truyện ...",
            Source="scott",
            Born="Jan 15, 1976",
            BornPlace="New York, Hoa Kì"
        },
    };
}
