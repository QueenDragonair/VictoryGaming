using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public int productID { get; set; }
    public string productName { get; set; }
    public int gameID { get; set; }
    public string size { get; set; }
    public string color { get; set; }
    public decimal price { get; set; }

    public string imageId { get; set; }

    public Product()
    {
      

    }
}