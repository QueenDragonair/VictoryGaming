<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="management.aspx.cs" Inherits="management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Mangement Content
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Button ID="btnGoToAddProduct" runat="server" OnClick="btnGoToAddProduct_Click" Text="Add Product" />
    <asp:Button ID="btnAddGame" runat="server" OnClick="btnAddGame_Click" Text="Add Game" />
</asp:Content>

