<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {}
        .style6
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 28px; width: 985px">
        Payment</p>
    <p style="height: 30px; width: 985px">
        <asp:Label ID="Label3" runat="server" Text="Card Number:"></asp:Label>
        <asp:TextBox ID="cardnumberTxt" placeholder="16 digits" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredCardNum" runat="server" 
            ControlToValidate="cardnumberTxt" 
            ErrorMessage="Card Number is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CardNumValidator" runat="server" 
            ControlToValidate="cardnumberTxt" Display="Dynamic" 
            ErrorMessage="Card Number must be integer" Operator="DataTypeCheck" 
            Type="Double"></asp:CompareValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="cardnumberTxt" Display="Dynamic" 
            ErrorMessage="Card Number must be 16 digits" MaximumValue="9999999999999999" 
            MinimumValue="1000000000000000" Type="Double"></asp:RangeValidator>
    </p>
    <p style="height: 30px; width: 985px">
        <asp:Label ID="Label4" runat="server" Text="CV2:"></asp:Label>
        <asp:TextBox ID="CV2txt"  placeholder="123" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredCV2" runat="server" 
            ControlToValidate="CV2txt" 
            ErrorMessage="CV2 is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CV2Validator" runat="server" 
            ControlToValidate="CV2txt" Display="Dynamic" ErrorMessage="CV2 must be integer" 
            Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
        <asp:RangeValidator ID="cv2range" runat="server" ControlToValidate="CV2txt" 
            Display="Dynamic" ErrorMessage="CV2 must be 3 digits" MaximumValue="999" 
            MinimumValue="100" Type="Double"></asp:RangeValidator>
    </p>
    <p style="height: 31px; width: 985px">
        <asp:Label ID="Label5" runat="server" Text="Expiry Date (MM/YY):"></asp:Label>
        <asp:TextBox ID="ExpiryDateMonth"  placeholder="MM" runat="server" 
            CssClass="style5" Width="35px"></asp:TextBox>
        <asp:TextBox ID="ExpiryDateYear" placeholder="YY" runat="server" 
            CssClass="style6" Width="35px"></asp:TextBox>
        <asp:RangeValidator ID="MonthValidator" runat="server" 
            ControlToValidate="ExpiryDateMonth" Display="Dynamic" 
            ErrorMessage="Valid Month must be entered" MaximumValue="12" 
            MinimumValue="01" Type="Integer"></asp:RangeValidator>
        <asp:RangeValidator ID="YearValidator" runat="server" 
            ControlToValidate="ExpiryDateYear" Display="Dynamic" 
            ErrorMessage="Valid Year must be entered" MaximumValue="99" 
            MinimumValue="00" Type="Integer"></asp:RangeValidator>
        <asp:RangeValidator ID="ExpiryDateRange" runat="server" 
            ControlToValidate="ExpiryDateYear" Display="Dynamic" 
            ErrorMessage="Expiry Date must be after today" MaximumValue="99" 
            MinimumValue="16"></asp:RangeValidator>
    </p>
    <p style="height: 31px; width: 985px">
        <asp:Label ID="Label6" runat="server" Text="Cardholder's Name:"></asp:Label>
        <asp:TextBox ID="cardholdernametxt"  placeholder="Your Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredName" runat="server" 
            ControlToValidate="cardholdernametxt" 
            ErrorMessage="Cardholder Name is required"></asp:RequiredFieldValidator>
    </p>
    <p style="height: 53px; width: 981px">
        Total:
        <asp:Label ID="Totallbl" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkbxTC" runat="server" 
            Text="I accept terms and conditions" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="test" 
            runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnPay" runat="server" Text="Finish &amp; Pay" Width="96px" 
            onclick="btnPay_Click" />
    </p>
</asp:Content>

