using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookReactor.Models;

public class Token
{
    public string token { get; set; }
}
public class UserInfo
{
    public string iss { get; set; }
    public string azp { get; set; }
    public string aud { get; set; }
    public string sub { get; set; }
    public string at_hash { get; set; }
    public string hd { get; set; }
    public string email { get; set; }
    public string name { get; set; }
    public string email_verified { get; set; }
    public int iat { get; set; }
    public int exp { get; set; }
    public string nonce { get; set; }
}
public class LoginResponse
{

    [JsonProperty("access_token")]
    public string AccessToken { get; set; }

    [JsonProperty("expires_in")]
    public int ExpiresIn { get; set; }
    [JsonProperty("id_token")]
    public string IdToken { get; set; }

    [JsonProperty("refresh_token")]
    public string RefreshToken { get; set; }

    [JsonProperty("scope")]
    public string Scope { get; set; }

    [JsonProperty("token_type")]
    public string TokenType { get; set; }
}
public class Book
{
    public string kind { get; set; }
    public int totalItems { get; set; }
    public List<Item> items { get; set; }
}
public class AccessInfo
{
    public string country { get; set; }
    public string viewability { get; set; }
    public bool embeddable { get; set; }
    public bool publicDomain { get; set; }
    public string textToSpeechPermission { get; set; }
    public Epub epub { get; set; }
    public Pdf pdf { get; set; }
    public string webReaderLink { get; set; }
    public string accessViewStatus { get; set; }
    public bool quoteSharingAllowed { get; set; }
}

public class Epub
{
    public bool isAvailable { get; set; }
    public string acsTokenLink { get; set; }
}

public class ImageLinks
{
    public string smallThumbnail { get; set; }
    public string thumbnail { get; set; }
    public string small { get; set; }
    public string medium { get; set; }
    public string large { get; set; }
    public string extraLarge { get; set; }
}

public class IndustryIdentifier
{
    public string type { get; set; }
    public string identifier { get; set; }
}

public class Item
{
    public string kind { get; set; }
    public string id { get; set; }
    public string etag { get; set; }
    public string selfLink { get; set; }
    public VolumeInfo volumeInfo { get; set; }
    public SaleInfo saleInfo { get; set; }
    public AccessInfo accessInfo { get; set; }
    public SearchInfo searchInfo { get; set; }
}

public class PanelizationSummary
{
    public bool containsEpubBubbles { get; set; }
    public bool containsImageBubbles { get; set; }
}

public class Pdf
{
    public bool isAvailable { get; set; }
    public string acsTokenLink { get; set; }
}

public class ReadingModes
{
    public bool text { get; set; }
    public bool image { get; set; }
}


public class SaleInfo
{
    public string country { get; set; }
    public string saleability { get; set; }
    public bool isEbook { get; set; }
}

public class SearchInfo
{
    public string textSnippet { get; set; }
}

public class VolumeInfo
{
    public string title { get; set; }
    public string subtitle { get; set; }
    public List<string> authors { get; set; }
    public string publisher { get; set; }
    public string publishedDate { get; set; }
    public string description { get; set; }
    public List<IndustryIdentifier> industryIdentifiers { get; set; }
    public ReadingModes readingModes { get; set; }
    public int pageCount { get; set; }
    public string printType { get; set; }
    public List<string> categories { get; set; }
    public double averageRating { get; set; }
    public int ratingsCount { get; set; }
    public string maturityRating { get; set; }
    public bool allowAnonLogging { get; set; }
    public string contentVersion { get; set; }
    public PanelizationSummary panelizationSummary { get; set; }
    public ImageLinks imageLinks { get; set; }
    public string language { get; set; }
    public string previewLink { get; set; }
    public string infoLink { get; set; }
    public string canonicalVolumeLink { get; set; }
}



public class Bookshelf
{
    public string kind { get; set; }
    public int id { get; set; }
    public string title { get; set; }
    public string access { get; set; }
    public DateTime updated { get; set; }
    public DateTime created { get; set; }
    public int volumeCount { get; set; }
    public DateTime volumesLastUpdated { get; set; }
}

public class BookshelfList
{
    public string kind { get; set; }
    public List<Bookshelf> items { get; set; }
}