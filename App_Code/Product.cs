using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public string GameName;
    public int Rating;
    public string Genre;
    public string Console;
    public double Price;
    public int Quantity;
    public int id;

    public string Display()
    {
        string displayString =
            GameName;

        return displayString;
    }
}
