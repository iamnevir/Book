
using System.Collections.Generic;
using System.Text.Json.Serialization;

public class Author
{
    public string name { get; set; }
    public int? birth_year { get; set; }
    public int? death_year { get; set; }
}

public class Formats
{
    [JsonPropertyName("image/jpeg")]
    public string? imagejpeg { get; set; }

    [JsonPropertyName("application/rdf+xml")]
    public string? applicationrdfxml { get; set; }

    [JsonPropertyName("text/plain")]
    public string? textplain { get; set; }

    [JsonPropertyName("application/x-mobipocket-ebook")]
    public string? applicationxmobipocketebook { get; set; }

    [JsonPropertyName("application/epub+zip")]
    public string? applicationepubzip { get; set; }

    [JsonPropertyName("text/html")]
    public string? texthtml { get; set; }

    [JsonPropertyName("application/octet-stream")]
    public string? applicationoctetstream { get; set; }

    [JsonPropertyName("text/plain; charsetus-ascii")]
    public string? textplaincharsetusascii { get; set; }

    [JsonPropertyName("text/html; charsetiso-8859-1")]
    public string? texthtmlcharsetiso88591 { get; set; }

    [JsonPropertyName("text/plain; charsetiso-8859-1")]
    public string? textplaincharsetiso88591 { get; set; }

    [JsonPropertyName("text/plain; charsetutf-8")]
    public string? textplaincharsetutf8 { get; set; }

    [JsonPropertyName("text/html; charsetus-ascii")]
    public string? texthtmlcharsetusascii { get; set; }

    [JsonPropertyName("text/html; charsetutf-8")]
    public string? texthtmlcharsetutf8 { get; set; }
}

public class Result
{
    public int id { get; set; }
    public string title { get; set; }
    public List<Author> authors { get; set; }
    public List<object> translators { get; set; }
    public List<string> subjects { get; set; }
    public List<string> bookshelves { get; set; }
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