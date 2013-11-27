<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Monster.ascx.cs" Inherits="adm_UC_Monster" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
</style>

<table class="style1" align="center">
    <tr>
        <td class="style1" colspan="2" align="right">
            <asp:TextBox ID="searchbox" runat="server" Width="150px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                onclick="btnSearch_Click" Text="Search" Width="50px" />
        </td>
    </tr>
    <tr>
        <td align="center" class="style2">
            <asp:SqlDataSource ID="SQLSelectMonster" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                SelectCommand="SELECT * FROM [monster]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQLSelectMonster">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="monster_name" HeaderText="monster_name" 
                        SortExpression="monster_name" />
                    <asp:BoundField DataField="monster_level" HeaderText="monster_level" 
                        SortExpression="monster_level" />
                    <asp:BoundField DataField="monster_money" HeaderText="monster_money" 
                        SortExpression="monster_money" />
                    <asp:BoundField DataField="monster_exp" HeaderText="monster_exp" 
                        SortExpression="monster_exp" />
                    <asp:BoundField DataField="monster_hp" HeaderText="monster_hp" 
                        SortExpression="monster_hp" />
                </Columns>
            </asp:GridView>
        </td>
        <td> 
            <asp:SqlDataSource ID="SQLListView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [monster] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [monster] ([monster_name], [monster_level], [monster_money], [monster_exp], [monster_is_boss], [monster_map], [monster_damage], [monster_hp], [monster_defend], [monster_drop_normal], [monster_drop_rare], [monster_drop_epic]) VALUES (@monster_name, @monster_level, @monster_money, @monster_exp, @monster_is_boss, @monster_map, @monster_damage, @monster_hp, @monster_defend, @monster_drop_normal, @monster_drop_rare, @monster_drop_epic)" 
                SelectCommand="SELECT * FROM [monster] WHERE ([ID] = @ID)" 
                
                UpdateCommand="UPDATE [monster] SET [monster_name] = @monster_name, [monster_level] = @monster_level, [monster_money] = @monster_money, [monster_exp] = @monster_exp, [monster_is_boss] = @monster_is_boss, [monster_map] = @monster_map, [monster_damage] = @monster_damage, [monster_hp] = @monster_hp, [monster_defend] = @monster_defend,[monster_img] = @monster_img, [monster_drop_normal] = @monster_drop_normal, [monster_drop_rare] = @monster_drop_rare, [monster_drop_epic] = @monster_drop_epic WHERE [ID] = @ID">
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
                    <asp:Parameter Name="monster_drop_normal" Type="Int32" />
                    <asp:Parameter Name="monster_drop_rare" Type="Int32" />
                    <asp:Parameter Name="monster_drop_epic" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
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
                    <asp:Parameter Name="monster_img" />
                    <asp:Parameter Name="monster_drop_normal" Type="Int32" />
                    <asp:Parameter Name="monster_drop_rare" Type="Int32" />
                    <asp:Parameter Name="monster_drop_epic" Type="Int32" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="ID" 
                DataSourceID="SQLListView" style="margin-left: 0px">
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
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="monster_levelTextBox" ErrorMessage="Gia tri thap nhat la 1" 
                        MaximumValue="9999" MinimumValue="1"></asp:RangeValidator>
                    <br />
                    monster_money:
                    <asp:TextBox ID="monster_moneyTextBox" runat="server" 
                        Text='<%# Bind("monster_money") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="monster_moneyTextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    monster_exp:
                    <asp:TextBox ID="monster_expTextBox" runat="server" 
                        Text='<%# Bind("monster_exp") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="monster_expTextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
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
                    <asp:RangeValidator ID="RangeValidator4" runat="server" 
                        ControlToValidate="monster_damageTextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    monster_hp:
                    <asp:TextBox ID="monster_hpTextBox" runat="server" 
                        Text='<%# Bind("monster_hp") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator5" runat="server" 
                        ControlToValidate="monster_hpTextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    monster_defend:
                    <asp:TextBox ID="monster_defendTextBox" runat="server" 
                        Text='<%# Bind("monster_defend") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator6" runat="server" 
                        ControlToValidate="monster_defendTextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    monster_img:
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("monster_img") %>'></asp:TextBox>
                    <br />
                    monster_drop_normal:<asp:SqlDataSource ID="SQLItem_Edit" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        SelectCommand="SELECT [ID], [item_name] FROM [item]" 
                        DeleteCommand="DELETE FROM [item] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [item] ([item_name]) VALUES (@item_name)" 
                        UpdateCommand="UPDATE [item] SET [item_name] = @item_name WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="item_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="item_name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:DropDownList ID="DropDownList11" runat="server" 
                        DataSourceID="SQLItem_Edit" DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("monster_drop_normal") %>'>
                    </asp:DropDownList>
                    <br />
                    monster_drop_rare:<br />
                    <asp:DropDownList ID="DropDownList12" runat="server" 
                        DataSourceID="SQLItem_Edit" DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("monster_drop_rare") %>'>
                    </asp:DropDownList>
                    <br />
                    monster_drop_epic:<br />
                    <asp:DropDownList ID="DropDownList13" runat="server" 
                        DataSourceID="SQLItem_Edit" DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("monster_drop_epic") %>'>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    monster_name:
                    <asp:TextBox ID="monster_nameTextBox" runat="server" 
                        Text='<%# Bind("monster_name") %>' />
                    <br />
                    monster_level:
                    <asp:TextBox ID="monster_levelTextBox" runat="server" 
                        Text='1' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                        ErrorMessage="Gia tri thap nhat la 1" MaximumValue="9999" MinimumValue="1" 
                        ControlToValidate="monster_levelTextBox"></asp:RangeValidator>
                    <br />
                    monster_money:
                    <asp:TextBox ID="monster_moneyTextBox" runat="server" 
                        Text='0' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator8" runat="server" 
                        ErrorMessage="Gia tri thap nhat la 0" 
                        ControlToValidate="monster_moneyTextBox" MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    monster_exp:
                    <asp:TextBox ID="monster_expTextBox" runat="server" 
                        Text='0' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator9" runat="server" 
                        ErrorMessage="Gia tri thap nhat la 0" MaximumValue="9999" MinimumValue="0" 
                        ControlToValidate="monster_expTextBox"></asp:RangeValidator>
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
                        Text='0' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator10" runat="server" 
                        ErrorMessage="Gia tri thap nhat la 0" MaximumValue="9999" MinimumValue="0" 
                        ControlToValidate="monster_damageTextBox"></asp:RangeValidator>
                    <br />
                    monster_hp:
                    <asp:TextBox ID="monster_hpTextBox" runat="server" 
                        Text='0' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator11" runat="server" 
                        ErrorMessage="Gia tri thap nhat la 0" MaximumValue="9999" MinimumValue="0" 
                        ControlToValidate="monster_hpTextBox"></asp:RangeValidator>
                    <br />
                    monster_defend:
                    <asp:TextBox ID="monster_defendTextBox" runat="server" 
                        Text='0' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator12" runat="server" 
                        ErrorMessage="Gia tri thap nhat la 0" MaximumValue="9999" MinimumValue="0" 
                        ControlToValidate="monster_defendTextBox"></asp:RangeValidator>
                    <br />
                    monster_drop_normal:<asp:SqlDataSource ID="SQLItemDrop_Insert" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        SelectCommand="SELECT [ID], [item_name] FROM [item]"></asp:SqlDataSource>
&nbsp;<asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SQLItemDrop_Insert" 
                        DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("monster_drop_normal") %>'>
                    </asp:DropDownList>
                    <br />
                    monster_drop_rare:<br />
                    <asp:DropDownList ID="DropDownList15" runat="server" 
                        DataSourceID="SQLItemDrop_Insert" DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("monster_drop_rare") %>'>
                    </asp:DropDownList>
                    <br />
                    monster_drop_epic:<br />
                    <asp:DropDownList ID="DropDownList16" runat="server" 
                        DataSourceID="SQLItemDrop_Insert" DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("monster_drop_epic") %>'>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                    monster_img:<asp:Label ID="monster_imgLabel" runat="server" 
                        Text='<%# Bind("monster_img") %>'></asp:Label>
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
    <tr>
        <td align="center" class="style2" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style2" colspan="2">
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/adm/reg_monster.aspx">Insert Monster</asp:HyperLink>
        &nbsp;(With Picture Upload)</td>
    </tr>
    </table>

