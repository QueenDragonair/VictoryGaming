<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                <asp:TextBox ID="txtState" runat="server" Width="26px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblZip" runat="server" Text="Zip"></asp:Label>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">
                <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 537px">&nbsp;</td>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

