<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_insert_original.ascx.cs" Inherits="adm_UC_insert_original" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>

<table class="style1">
    <tr>
        <td align="center" colspan="2">
            Insert Item</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right">
            item_name:</td>
        <td>
            <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_description:</td>
        <td>
            <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                        Text='<%# Bind("item_description") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_level:</td>
        <td>
            <asp:TextBox ID="item_levelTextBox" runat="server" 
                        Text='<%# Bind("item_level") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_require_level:</td>
        <td>
            <asp:TextBox ID="item_require_levelTextBox" runat="server" 
                        Text='<%# Bind("item_require_level") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_type:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                        SelectedValue='<%# Bind("item_type") %>' >
                <asp:ListItem Value="0">Helmet</asp:ListItem>
                <asp:ListItem Value="1">Armor</asp:ListItem>
                <asp:ListItem Value="2">Shield</asp:ListItem>
                <asp:ListItem Value="3">Weapon</asp:ListItem>
                <asp:ListItem Value="4">Gloves</asp:ListItem>
                <asp:ListItem Value="5">Boots</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="right">
            item_value1:</td>
        <td>
            <asp:TextBox ID="item_value1TextBox" runat="server" 
                        Text='<%# Bind("item_value1") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_value2:</td>
        <td>
            <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_value3:</td>
        <td>
            <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_value4:</td>
        <td>
            <asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_value5:</td>
        <td>
            <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
        </td>
    </tr>
    <tr>
        <td align="right">
            item_icon:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="right">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right">
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" onclick="InsertButton_Click" />
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/adm/admin_original.aspx">Back</asp:HyperLink>
        </td>
    </tr>
</table>

