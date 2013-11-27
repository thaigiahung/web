<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_insert_hero.ascx.cs" Inherits="adm_UC_insert_hero" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 358px;
    }
</style>

<table class="style1">
    <tr>
        <td align="center" colspan="2">
            Insert Hero</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2">
            Name:</td>
        <td>
            <asp:TextBox ID="textboxName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            IdType:</td>
        <td>
            <asp:TextBox ID="textboxIDType" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            Lore:</td>
        <td>
            <asp:TextBox ID="textboxLore" runat="server" Columns="20" Rows="20"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            Avatar: 
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
           Skin:</td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" onclick="InsertButton_Click" />
        </td>
        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="~/adm/admin_hero.aspx">Back</asp:HyperLink>
        </td>
    </tr>
</table>

