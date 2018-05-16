<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 30px; width: 194px">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 194px">
                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

