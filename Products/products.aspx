<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Products to select.
    <aside>Filtering stuff</aside>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="2" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl='<%# Eval("imageUrl", "~/Manage/Media/{0}") %>' Width="135px" />
            &nbsp;<br />
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            size:
            <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' />
            <br />
            color:
            <asp:Label ID="colorLabel" runat="server" Text='<%# Eval("color") %>' />
            <br />
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VictoryString %>" SelectCommand="SELECT [name], [size], [color], [price], [imageUrl] FROM [Product]"></asp:SqlDataSource>
</asp:Content>


