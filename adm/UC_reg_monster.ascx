<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_reg_monster.ascx.cs" Inherits="adm_UC_reg_monster" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 522px;
    }
</style>


<table class="style1">
    <tr>
        <td align="center">
            Insert Monster</td>
    </tr>
    <tr>
        <td align="center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                SelectCommand="SELECT * FROM [monster]" 
                DeleteCommand="DELETE FROM [monster] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [monster] ([monster_name], [monster_level], [monster_money], [monster_exp], [monster_is_boss], [monster_map], [monster_damage], [monster_hp], [monster_defend], [monster_img], [monster_drop_normal], [monster_drop_rare], [monster_drop_epic]) VALUES (@monster_name, @monster_level, @monster_money, @monster_exp, @monster_is_boss, @monster_map, @monster_damage, @monster_hp, @monster_defend, @monster_img, @monster_drop_normal, @monster_drop_rare, @monster_drop_epic)" 
                UpdateCommand="UPDATE [monster] SET [monster_name] = @monster_name, [monster_level] = @monster_level, [monster_money] = @monster_money, [monster_exp] = @monster_exp, [monster_is_boss] = @monster_is_boss, [monster_map] = @monster_map, [monster_damage] = @monster_damage, [monster_hp] = @monster_hp, [monster_defend] = @monster_defend, [monster_img] = @monster_img, [monster_drop_normal] = @monster_drop_normal, [monster_drop_rare] = @monster_drop_rare, [monster_drop_epic] = @monster_drop_epic WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="monster_name" Type="String" />
                    <asp:Parameter Name="monster_level" Type="Int32" />
                    <asp:Parameter Name="monster_money" Type="Int32" />
                    <asp:Parameter Name="monster_exp" Type="Int64" />
                    <asp:Parameter Name="monster_is_boss" Type="Int32" />
                    <asp:Parameter Name="monster_map" Type="Int32" />
                    <asp:Parameter Name="monster_damage" Type="Int32" />
                    <asp:Parameter Name="monster_hp" Type="Int32" />
                    <asp:Parameter Name="monster_defend" Type="Int32" />
                    <asp:Parameter Name="monster_img" Type="String" />
                    <asp:Parameter Name="monster_drop_normal" Type="Int32" />
                    <asp:Parameter Name="monster_drop_rare" Type="Int32" />
                    <asp:Parameter Name="monster_drop_epic" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="monster_name" Type="String" />
                    <asp:Parameter Name="monster_level" Type="Int32" />
                    <asp:Parameter Name="monster_money" Type="Int32" />
                    <asp:Parameter Name="monster_exp" Type="Int64" />
                    <asp:Parameter Name="monster_is_boss" Type="Int32" />
                    <asp:Parameter Name="monster_map" Type="Int32" />
                    <asp:Parameter Name="monster_damage" Type="Int32" />
                    <asp:Parameter Name="monster_hp" Type="Int32" />
                    <asp:Parameter Name="monster_defend" Type="Int32" />
                    <asp:Parameter Name="monster_img" Type="String" />
                    <asp:Parameter Name="monster_drop_normal" Type="Int32" />
                    <asp:Parameter Name="monster_drop_rare" Type="Int32" />
                    <asp:Parameter Name="monster_drop_epic" Type="Int32" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="ID" 
                DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    monster_name:
                    <asp:TextBox ID="monster_nameTextBox" runat="server" 
                        Text='<%# Bind("monster_name") %>' />
                    <br />
                    monster_level:
                    <asp:TextBox ID="monster_levelTextBox" runat="server" 
                        Text='<%# Bind("monster_level") %>' />
                    <br />
                    monster_money:
                    <asp:TextBox ID="monster_moneyTextBox" runat="server" 
                        Text='<%# Bind("monster_money") %>' />
                    <br />
                    monster_exp:
                    <asp:TextBox ID="monster_expTextBox" runat="server" 
                        Text='<%# Bind("monster_exp") %>' />
                    <br />
                    monster_is_boss:
                    <asp:TextBox ID="monster_is_bossTextBox" runat="server" 
                        Text='<%# Bind("monster_is_boss") %>' />
                    <br />
                    monster_map:
                    <asp:TextBox ID="monster_mapTextBox" runat="server" 
                        Text='<%# Bind("monster_map") %>' />
                    <br />
                    monster_damage:
                    <asp:TextBox ID="monster_damageTextBox" runat="server" 
                        Text='<%# Bind("monster_damage") %>' />
                    <br />
                    monster_hp:
                    <asp:TextBox ID="monster_hpTextBox" runat="server" 
                        Text='<%# Bind("monster_hp") %>' />
                    <br />
                    monster_defend:
                    <asp:TextBox ID="monster_defendTextBox" runat="server" 
                        Text='<%# Bind("monster_defend") %>' />
                    <br />
                    monster_img:
                    <asp:TextBox ID="monster_imgTextBox" runat="server" 
                        Text='<%# Bind("monster_img") %>' />
                    <br />
                    monster_drop_normal:
                    <asp:TextBox ID="monster_drop_normalTextBox" runat="server" 
                        Text='<%# Bind("monster_drop_normal") %>' />
                    <br />
                    monster_drop_rare:
                    <asp:TextBox ID="monster_drop_rareTextBox" runat="server" 
                        Text='<%# Bind("monster_drop_rare") %>' />
                    <br />
                    monster_drop_epic:
                    <asp:TextBox ID="monster_drop_epicTextBox" runat="server" 
                        Text='<%# Bind("monster_drop_epic") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    monster_name:
                    <asp:TextBox ID="monster_nameTextBox0" runat="server" 
                        Text='<%# Bind("monster_name") %>' />
                    <br />
                    monster_level:
                    <asp:TextBox ID="monster_levelTextBox0" runat="server" 
                        Text='<%# Bind("monster_level") %>' />
                    <br />
                    monster_money:
                    <asp:TextBox ID="monster_moneyTextBox0" runat="server" 
                        Text='<%# Bind("monster_money") %>' />
                    <br />
                    monster_exp:
                    <asp:TextBox ID="monster_expTextBox0" runat="server" 
                        Text='<%# Bind("monster_exp") %>' />
                    <br />
                    monster_is_boss:
                    <asp:TextBox ID="monster_is_bossTextBox0" runat="server" 
                        Text='<%# Bind("monster_is_boss") %>' />
                    <br />
                    monster_map:
                    <asp:TextBox ID="monster_mapTextBox0" runat="server" 
                        Text='<%# Bind("monster_map") %>' />
                    <br />
                    monster_damage:
                    <asp:TextBox ID="monster_damageTextBox0" runat="server" 
                        Text='<%# Bind("monster_damage") %>' />
                    <br />
                    monster_hp:
                    <asp:TextBox ID="monster_hpTextBox0" runat="server" 
                        Text='<%# Bind("monster_hp") %>' />
                    <br />
                    monster_defend:
                    <asp:TextBox ID="monster_defendTextBox0" runat="server" 
                        Text='<%# Bind("monster_defend") %>' />
                    <br />
                    monster_img:
                    
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    monster_drop_normal:
                    <asp:TextBox ID="monster_drop_normalTextBox0" runat="server" 
                        Text='<%# Bind("monster_drop_normal") %>' />
                    <br />
                    monster_drop_rare:
                    <asp:TextBox ID="monster_drop_rareTextBox0" runat="server" 
                        Text='<%# Bind("monster_drop_rare") %>' />
                    <br />
                    monster_drop_epic:
                    <asp:TextBox ID="monster_drop_epicTextBox0" runat="server" 
                        Text='<%# Bind("monster_drop_epic") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" onclick="InsertButton_Click" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/adm/admin_monster.aspx">Back</asp:HyperLink>
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    monster_name:
                    <asp:Label ID="monster_nameLabel" runat="server" 
                        Text='<%# Bind("monster_name") %>' />
                    <br />
                    monster_level:
                    <asp:Label ID="monster_levelLabel" runat="server" 
                        Text='<%# Bind("monster_level") %>' />
                    <br />
                    monster_money:
                    <asp:Label ID="monster_moneyLabel" runat="server" 
                        Text='<%# Bind("monster_money") %>' />
                    <br />
                    monster_exp:
                    <asp:Label ID="monster_expLabel" runat="server" 
                        Text='<%# Bind("monster_exp") %>' />
                    <br />
                    monster_is_boss:
                    <asp:Label ID="monster_is_bossLabel" runat="server" 
                        Text='<%# Bind("monster_is_boss") %>' />
                    <br />
                    monster_map:
                    <asp:Label ID="monster_mapLabel" runat="server" 
                        Text='<%# Bind("monster_map") %>' />
                    <br />
                    monster_damage:
                    <asp:Label ID="monster_damageLabel" runat="server" 
                        Text='<%# Bind("monster_damage") %>' />
                    <br />
                    monster_hp:
                    <asp:Label ID="monster_hpLabel" runat="server" 
                        Text='<%# Bind("monster_hp") %>' />
                    <br />
                    monster_defend:
                    <asp:Label ID="monster_defendLabel" runat="server" 
                        Text='<%# Bind("monster_defend") %>' />
                    <br />
                    monster_img:
                    <asp:Label ID="monster_imgLabel" runat="server" 
                        Text='<%# Bind("monster_img") %>' />
                    <br />
                    monster_drop_normal:
                    <asp:Label ID="monster_drop_normalLabel" runat="server" 
                        Text='<%# Bind("monster_drop_normal") %>' />
                    <br />
                    monster_drop_rare:
                    <asp:Label ID="monster_drop_rareLabel" runat="server" 
                        Text='<%# Bind("monster_drop_rare") %>' />
                    <br />
                    monster_drop_epic:
                    <asp:Label ID="monster_drop_epicLabel" runat="server" 
                        Text='<%# Bind("monster_drop_epic") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </td>
    </tr>
</table>

