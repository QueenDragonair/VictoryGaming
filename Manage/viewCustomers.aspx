<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewCustomers.aspx.cs" Inherits="Manage_viewCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="custId" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="custIdLabel" runat="server" Text='<%# Eval("custId") %>' />
                </td>
                <td>
                    <asp:Label ID="fNameLabel" runat="server" Text='<%# Eval("fName") %>' />
                </td>
                <td>
                    <asp:Label ID="lNameLabel" runat="server" Text='<%# Eval("lName") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="custIdLabel1" runat="server" Text='<%# Eval("custId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="lNameTextBox" runat="server" Text='<%# Bind("lName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="lNameTextBox" runat="server" Text='<%# Bind("lName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="custIdLabel" runat="server" Text='<%# Eval("custId") %>' />
                </td>
                <td>
                    <asp:Label ID="fNameLabel" runat="server" Text='<%# Eval("fName") %>' />
                </td>
                <td>
                    <asp:Label ID="lNameLabel" runat="server" Text='<%# Eval("lName") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">custId</th>
                                <th runat="server">fName</th>
                                <th runat="server">lName</th>
                                <th runat="server">email</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="custIdLabel" runat="server" Text='<%# Eval("custId") %>' />
                </td>
                <td>
                    <asp:Label ID="fNameLabel" runat="server" Text='<%# Eval("fName") %>' />
                </td>
                <td>
                    <asp:Label ID="lNameLabel" runat="server" Text='<%# Eval("lName") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VictoryString %>" SelectCommand="SELECT [custId], [fName], [lName], [email] FROM [Customer]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

