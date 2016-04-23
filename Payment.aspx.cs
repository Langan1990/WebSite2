using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Total"] == null)
        {
            Totallbl.Text = "Nothing in Cart";
        }
        else
        {
            Totallbl.Text = "€"+ Session["Total"].ToString();
        }
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        test.Text = "You must accept Terms and Conditions before paying";
        if ((chkbxTC.Checked == true) && (cardnumberTxt != null) && (CV2txt != null) && (ExpiryDateMonth != null)
                && (ExpiryDateYear != null) && (cardholdernametxt != null))
        {
            test.Text = "Payment Successful";
        }
        
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        
    }
 
}