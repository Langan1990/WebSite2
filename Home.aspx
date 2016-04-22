<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:zuludb1ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:zuludb1ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM vgs">
        </asp:SqlDataSource>
        &nbsp;</p>
<p>
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            PostBackUrl="~/Cart.aspx" Text="Proceed to cart" />
</p>
<p style="margin-left: 80px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        Width="929px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="margin-right: 0px">
        <Columns>
            <asp:BoundField DataField="GameName" HeaderText="GameName" 
                SortExpression="GameName" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" 
                SortExpression="Rating" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Console" HeaderText="Console" 
                SortExpression="Console" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:CommandField SelectText="Add To Cart" ShowSelectButton="True" 
                ButtonType="Button" />
        </Columns>
    </asp:GridView>
</asp:Content>

