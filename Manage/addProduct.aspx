<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="Manage_addProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 108px">
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td style="width: 189px">
                <asp:TextBox ID="txtPname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 108px">
                <asp:Label ID="Label2" runat="server" Text="Size"></asp:Label>
            </td>
            <td style="width: 189px">
                <asp:TextBox ID="txtPsize" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 108px">
                <asp:Label ID="Label3" runat="server" Text="Color"></asp:Label>
            </td>
            <td style="width: 189px">
                <asp:TextBox ID="txtPcolor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 108px">
                <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
            </td>
            <td style="width: 189px">
                <asp:TextBox ID="txtPprice" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 108px">
                <asp:Label ID="Label5" runat="server" Text="Game"></asp:Label>
            </td>
            <td style="width: 189px">
                <asp:DropDownList ID="ddGameName" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VictoryString %>" SelectCommand="SELECT [name] FROM [GameList]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 108px">
                <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
            </td>
            <td style="width: 189px">
                <asp:FileUpload ID="imageUpload" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 108px">&nbsp;</td>
            <td style="width: 189px">
                <asp:Button ID="btnAddProduct" runat="server" OnClick="btnAddProduct_Click" Text="Add Product" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

