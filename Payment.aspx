<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 28px; width: 985px">
        Payment</p>
    <p style="height: 30px; width: 985px">
        <asp:Label ID="Label3" runat="server" Text="Card Number:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter Valid Card Number"></asp:RequiredFieldValidator>
    </p>
    <p style="height: 30px; width: 985px">
        <asp:Label ID="Label4" runat="server" Text="CV2:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Valid CV2 Number"></asp:RequiredFieldValidator>
    </p>
    <p style="height: 31px; width: 985px">
        <asp:Label ID="Label5" runat="server" Text="Expiry Date:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Enter Valid Expiry Date"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="ValidDateValidator" runat="server" 
            ErrorMessage="CustomValidator"></asp:CustomValidator>
    </p>
    <p style="height: 31px; width: 985px">
        <asp:Label ID="Label6" runat="server" Text="Cardholder's Name:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Enter Valid Cardholder Name"></asp:RequiredFieldValidator>
    </p>
    <p style="height: 53px; width: 981px">
        Total:
        <asp:Label ID="Total" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" 
            Text="I agree to Terms &amp; Conditions" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnPay" runat="server" Text="Finish &amp; Pay" Width="96px" />
    </p>
</asp:Content>

