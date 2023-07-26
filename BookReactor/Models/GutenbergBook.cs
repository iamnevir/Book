using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookReactor.Models;

// Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
public class Author
{
    public string name { get; set; }
    public int birth_year { get; set; }
    public int death_year { get; set; }
}

public class Formats
{
    [JsonProperty("application/x-mobipocket-ebook")]
    public string applicationxmobipocketebook { get; set; }

    [JsonProperty("application/epub+zip")]
    public string applicationepubzip { get; set; }

    [JsonProperty("text/html")]
    public string texthtml { get; set; }

    [JsonProperty("application/octet-stream")]
    public string applicationoctetstream { get; set; }

    [JsonProperty("image/jpeg")]
    public string imagejpeg { get; set; }

    [JsonProperty("text/plain")]
    public string textplain { get; set; }

    [JsonProperty("text/plain; charsetus-ascii")]
    public string textplaincharsetusascii { get; set; }

    [JsonProperty("application/rdf+xml")]
    public string applicationrdfxml { get; set; }
}

public class Result
{
    public int id { get; set; }
    public string title { get; set; }
    public List<Author> authors { get; set; }
    public List<object> translators { get; set; }
    public List<string> subjects { get; set; }
    public List<object> bookshelves { get; set; }
    public List<string> languages { get; set; }
    public bool copyright { get; set; }
    public string media_type { get; set; }
    public Formats formats { get; set; }
    public int download_count { get; set; }
}

public class GutenbergBook
{
    public int count { get; set; }
    public object next { get; set; }
    public object previous { get; set; }
    public List<Result> results { get; set; }
}
