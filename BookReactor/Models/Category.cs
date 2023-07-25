using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Models;

public class Category
{
    public int Id { get; set; }
    public string Name { get; set; }
    public double Radius { get; set; }
    public double Heigh { get; set; }
    public double Width { get; set; }

    public static Category[] All = 
    {
        new Category 
        {
            Id = 1, 
            Name = "Philosophy",
            Radius = 80,
            Heigh = 80,
            Width = 180
        },
        new Category
        {
            Id = 2,
            Name = "Science",
            Radius = 100,
            Heigh = 80,
            Width = 80
        },
        new Category
        {
            Id = 3,
            Name = "Fiction",
            Radius = 100,
            Heigh = 80,
            Width = 80
        },
        new Category
        {
            Id = 4,
            Name = "Nature",
            Radius = 100,
            Heigh = 80,
            Width = 80
        },
        new Category
        {
            Id = 5,
            Name = "Family",
            Radius = 80,
            Heigh = 80,
            Width = 180
        },
        new Category
        {
            Id = 6,
            Name = "Travel",
            Radius = 100,
            Heigh = 80,
            Width = 80
        },
        new Category
        {
            Id = 7,
            Name = "Love",
            Radius = 100,
            Heigh = 80,
            Width = 80
        },
        new Category
        {
            Id = 8,
            Name = "Drama",
            Radius = 100,
            Heigh = 80,
            Width = 80
        },
        new Category
        {
            Id = 9,
            Name = "Comedy",
            Radius = 80,
            Heigh = 80,
            Width = 180
        },
    };
}
