<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 261px">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 261px">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 261px">
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                <asp:TextBox ID="txtState" runat="server" Width="31px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 261px">
                <asp:Label ID="lblZip" runat="server" Text="Zip"></asp:Label>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 261px">
                <asp:Label ID="lblChange" runat="server" Text="Change Password"></asp:Label>
                <asp:TextBox ID="txtNewPass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 261px">
                <asp:Label ID="lblComfirm" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 261px">&nbsp;</td>
            <td>
                <asp:Button ID="btnApply" runat="server" Text="Apply" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

