<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 239px;
        }
        .style6
        {
            width: 210px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:zuludb1ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:zuludb1ConnectionString.ProviderName %>" 
    SelectCommand="SELECT * FROM vgs"></asp:SqlDataSource>
<br />
    <table class="style1">
        <tr>
            <td class="style5" rowspan="4">
                <asp:Image ID="Image1" runat="server" />
            </td>
            <td class="style6">
                <asp:Label ID="LblGameTitle" runat="server" Text="Title"></asp:Label>
               
            </td>
            <td>
                <asp:Label ID="lblGameRating" runat="server" Text="Rating"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblGame" runat="server" Text="Description"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
                    onclick="btnAdd_Click" />
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style5" rowspan="4">
                <asp:Image ID="Image2" runat="server" />
            </td>
            <td class="style6">
                <asp:Label ID="LblGameTitle0" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblGameRating0" runat="server" Text="Rating"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblGame0" runat="server" Text="Description"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnAdd0" runat="server" Text="Add to Cart" />
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style5" rowspan="4">
                <asp:Image ID="Image3" runat="server" />
            </td>
            <td class="style6">
                <asp:Label ID="LblGameTitle1" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblGameRating1" runat="server" Text="Rating"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblGame1" runat="server" Text="Description"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label5" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnAdd1" runat="server" onclick="btnAdd1_Click" 
                    Text="Add to Cart" />
            </td>
        </tr>
    </table>
</asp:Content>

