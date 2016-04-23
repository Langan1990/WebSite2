using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class Home : System.Web.UI.Page
{
    private Product selectedProduct;
    int count;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        count = 0;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedProduct = new Product();
        count++;
        GridViewRow row = GridView1.SelectedRow;
       
        selectedProduct.GameName = row.Cells[0].Text;
        selectedProduct.Rating = Convert.ToInt32(row.Cells[2].Text);
        selectedProduct.Genre = row.Cells[3].Text;
        selectedProduct.Console = row.Cells[4].Text;
        selectedProduct.Price = Convert.ToDouble(row.Cells[5].Text);
        AddToCart(selectedProduct);
        }
    private void AddToCart(Product item)
    {
        SortedList cart = this.GetCart();
        while (cart.ContainsKey(count))
        {
            count++;
        }
        item.id = count;
        cart.Add(item.id, item);
        count++;
       
    }

    private SortedList GetCart()
    {
        if (Session["Cart"] == null)
            Session.Add("Cart", new SortedList());
        return (SortedList)Session["Cart"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
}