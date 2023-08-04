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

public class Start
{
    public int Id { get; set; }
    public string Source { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }

    public static Start[] Starts =
    {
        new Start { Id = 1,Source="sp1",Title="Immerse in the story",Description="The books contain stories that have never been told, mysteries that lie deep in the dark waiting to be answered"},
        new Start { Id = 2,Source="sp2",Title="Dark Hole",Description="No one can run from the darkness"},
        new Start { Id = 3,Source="sp3",Title="Roles Hell", Description="Dead"},
    };
}