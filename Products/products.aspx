<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="2"  OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="228px" ImageUrl='<%# Eval("imageUrl", "~/Manage/Media/{0}") %>' />
            <br />
            <br />
&nbsp;<asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>' />
            <br />
            size:
            <asp:Label ID="lblSize" runat="server" Text='<%# Eval("size") %>' />
            <br />
            color:
            <asp:Label ID="lblColor" runat="server" Text='<%# Eval("color") %>' />
            <br />
            price:
            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <br />
            <asp:Button ID="btnSelect" runat="server" CommandName="select" Height="27px" Text="Select" Width="95px" OnClick="DataList1_SelectedIndexChanged"/>
            <br />
        </ItemTemplate>
        <SelectedItemTemplate>
            <br />
            <asp:Button ID="btnAddToCart" runat="server" Height="22px" Text="Add To Cart" Width="90px" />
            <br />
        </SelectedItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VictoryString %>" SelectCommand="SELECT [name], [size], [color], [price], [imageUrl] FROM [Product]"></asp:SqlDataSource>
</asp:Content>


