using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Cart : System.Web.UI.Page
{
    private SortedList cart;
    double totalPrice = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        this.GetCart();
        if (!IsPostBack)
            
           this.DisplayCart();
    }
    private void GetCart()
    {
        if (Session["Cart"] == null)
        {
            Session.Add("Cart", new SortedList());
        }
        cart = (SortedList)Session["Cart"];
    }
    private void DisplayCart()
    {
        
        lstCart.Items.Clear();
        Product item;
        foreach (DictionaryEntry entry in cart)
        {
            
            item = (Product)entry.Value;
            lstCart.Items.Add(item.GameName);
            totalPrice += item.Price;

        }
        GetTotal();
        lblPrice.Text = "Total Price: €" + totalPrice.ToString();
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0 && lstCart.SelectedIndex > -1)
        {
            cart.RemoveAt(lstCart.SelectedIndex);
            this.DisplayCart();
        }
    }

    private void GetTotal()
    {
        if (Session["Total"] == null)
        {
            Session.Add("Total", new double());
        }
        Session["Total"] = totalPrice;
    }
    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        GetTotal();
    }
}