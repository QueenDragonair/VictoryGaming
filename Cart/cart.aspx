<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
    </asp:CheckBoxList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <aside id="right">
        <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remove" />
        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
    </aside>
</asp:Content>

