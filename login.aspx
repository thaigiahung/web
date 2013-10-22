<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <h2>ĐĂNG NHẬP</h2>
        <table>
                
                <tr>
                    <td>User name: </td>
                    <td><asp:TextBox ID="txtUN" runat="server"  Width="100"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><asp:TextBox ID="txtPW" runat="server" TextMode="Password" Width="100"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align"center">
                        <asp:Label ID="LbMessages" runat="server" Text="Label" Visible="False" 
                            ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align=right>
                        <asp:Button ID="BtnLogin" runat="server" Text="Đăng nhập" 
                            onclick="BtnLogin_Click" />
                        <asp:Label ID="Pass" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:HyperLink ID="hlForgotPW" runat="server">Quên mật khẩu?</asp:HyperLink>
                    </td>
                </tr>
            </table>    
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        &nbsp;</p>
</asp:Content>
