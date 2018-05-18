<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addGame.aspx.cs" Inherits="Manage_addGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 94px">
                <asp:Label ID="Label1" runat="server" Text="Game Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtGameName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 94px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 94px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAddGame" runat="server" OnClick="btnAddGame_Click" Text="Add Game" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

