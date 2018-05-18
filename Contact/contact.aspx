<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 207px">
                <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            </td>
            <td style="width: 207px">
                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Comments"></asp:Label>
                <textarea id="txtComments" cols="20" name="S1" rows="2" title="Tell us what you think" runat="server"></textarea></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 207px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

