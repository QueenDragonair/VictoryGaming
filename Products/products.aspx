<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Products to select.
    <aside>Filtering stuff</aside>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="2" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image3" runat="server" Height="147px" ImageUrl='<%# Eval("imageUrl", "~/Manage/Media/{0}") %>' Width="150px" />
            <br />
            <br />
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            <br />
            <asp:Button ID="btnPurchase" runat="server" CommandArgument='<%# Eval("name") %>' CommandName="select" Text="Select" ToolTip='<%# Eval("name") %>' />
            <br />
        </ItemTemplate>
        <SelectedItemTemplate>
            <asp:Image ID="Image2" runat="server" Height="151px" ImageUrl='<%# Eval("imageUrl", "~/Manage/Media/{0}") %>' Width="142px" />
            <br />
            <br />
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            size:
            <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' />
            <br />
            color:
            <asp:Label ID="colorLabel" runat="server" Text='<%# Eval("color") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <br />
            <asp:Button ID="btnPurchase" runat="server" OnClick="btnPurchase_Click" Text="Purchase" ToolTip='<%# Eval("name") %>' />
        </SelectedItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VictoryString %>" SelectCommand="SELECT [name], [size], [color], [price], [imageUrl] FROM [Product]"></asp:SqlDataSource>
</asp:Content>


