<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_insertmonster.ascx.cs" Inherits="adm_UC_insertmonster" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 380px;
    }
</style>

<table class="style1">
    <tr>
        <td align="center" colspan="2">
            Insert Monster</td>
    </tr>
    <tr>
        <td align="right" class="style2">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_name:
        </td>
        <td align="left">
            <asp:TextBox ID="monster_nameTextBox0" runat="server" 
                        Text='<%# Bind("monster_name") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_level:</td>
        <td align="left">
            <asp:TextBox ID="monster_levelTextBox0" runat="server" 
                        Text='<%# Bind("monster_level") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_money:</td>
        <td align="left">
            <asp:TextBox ID="monster_moneyTextBox0" runat="server" 
                        Text='<%# Bind("monster_money") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_exp:</td>
        <td align="left">
            <asp:TextBox ID="monster_expTextBox0" runat="server" 
                        Text='<%# Bind("monster_exp") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_is_boss:</td>
        <td align="left">
            <asp:TextBox ID="monster_is_bossTextBox0" runat="server" 
                        Text='<%# Bind("monster_is_boss") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_map:</td>
        <td align="left">
            <asp:TextBox ID="monster_mapTextBox0" runat="server" 
                        Text='<%# Bind("monster_map") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_damage:</td>
        <td align="left">
            <asp:TextBox ID="monster_damageTextBox0" runat="server" 
                        Text='<%# Bind("monster_damage") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_hp:</td>
        <td align="left">
            <asp:TextBox ID="monster_hpTextBox0" runat="server" 
                        Text='<%# Bind("monster_hp") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_defend:</td>
        <td align="left">
            <asp:TextBox ID="monster_defendTextBox0" runat="server" 
                        Text='<%# Bind("monster_defend") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_img:</td>
        <td align="left">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_drop_normal:</td>
        <td align="left">
            <asp:TextBox ID="monster_drop_normalTextBox0" runat="server" 
                        Text='<%# Bind("monster_drop_normal") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_drop_rare:</td>
        <td align="left">
            <asp:TextBox ID="monster_drop_rareTextBox0" runat="server" 
                        Text='<%# Bind("monster_drop_rare") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            monster_drop_epic:</td>
        <td align="left">
            <asp:TextBox ID="monster_drop_epicTextBox0" runat="server" 
                        Text='<%# Bind("monster_drop_epic") %>' />
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" onclick="InsertButton_Click" />
        </td>
        <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/adm/admin_monster.aspx">Back</asp:HyperLink>
        </td>
    </tr>
</table>

