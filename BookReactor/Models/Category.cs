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

    public static Category[] All = 
    {
        new Category 
        {
            Id = 1, 
            Name = "Philosophy",
        },
        new Category
        {
            Id = 2,
            Name = "Science",
        },
        new Category
        {
            Id = 3,
            Name = "Fiction",
        },
        new Category
        {
            Id = 4,
            Name = "Nature",
        },
        new Category
        {
            Id = 5,
            Name = "Family Relationship",
        },
        new Category
        {
            Id = 6,
            Name = "Travel",
        },
        new Category
        {
            Id = 7,
            Name = "Love",
        },
        new Category
        {
            Id = 8,
            Name = "Drama",
        },
        new Category
        {
            Id = 9,
            Name = "Comedy",
        },
    };
}
