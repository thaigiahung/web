<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_ItemPage.ascx.cs" Inherits="adm_WebUserControl" %>
<style type="text/css">
    .style1
    {
    }
    .style2
    {
        width: 587px;
    }
</style>
<table style="width:100%;" border="1" align="center">
    <tr>
        <td class="style1" colspan="2" align="right">
            <asp:TextBox ID="searchbox" runat="server" Width="150px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                onclick="btnSearch_Click" Text="Search" Width="50px" />
        </td>
    </tr>
    <tr>
        <td class="style2">
<asp:SqlDataSource ID="SQLDataSelect" runat="server" 
    ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
    DeleteCommand="DELETE FROM [item] WHERE [ID] = @ID" 
    InsertCommand="INSERT INTO [item] ([item_name], [item_description], [item_level], [item_require_level], [item_param1], [item_value1], [item_param2], [item_value2], [item_param3], [item_value3], [item_param4], [item_value4], [item_param5], [item_value5], [item_isbuying], [item_islocked], [item_icon], [item_username], [item_equip], [item_type]) VALUES (@item_name, @item_description, @item_level, @item_require_level, @item_param1, @item_value1, @item_param2, @item_value2, @item_param3, @item_value3, @item_param4, @item_value4, @item_param5, @item_value5, @item_isbuying, @item_islocked, @item_icon, @item_username, @item_equip, @item_type)" 
    SelectCommand="SELECT * FROM [item]" 
    
    UpdateCommand="UPDATE [item] SET [item_name] = @item_name, [item_description] = @item_description, [item_level] = @item_level, [item_require_level] = @item_require_level, [item_param1] = @item_param1, [item_value1] = @item_value1, [item_param2] = @item_param2, [item_value2] = @item_value2, [item_param3] = @item_param3, [item_value3] = @item_value3, [item_param4] = @item_param4, [item_value4] = @item_value4, [item_param5] = @item_param5, [item_value5] = @item_value5, [item_isbuying] = @item_isbuying, [item_islocked] = @item_islocked, [item_icon] = @item_icon, [item_username] = @item_username, [item_equip] = @item_equip, [item_type] = @item_type WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="item_name" Type="String" />
        <asp:Parameter Name="item_description" Type="String" />
        <asp:Parameter Name="item_level" Type="Int32" />
        <asp:Parameter Name="item_require_level" Type="Int32" />
        <asp:Parameter Name="item_param1" Type="Int32" />
        <asp:Parameter Name="item_value1" Type="Int32" />
        <asp:Parameter Name="item_param2" Type="Int32" />
        <asp:Parameter Name="item_value2" Type="Int32" />
        <asp:Parameter Name="item_param3" Type="Int32" />
        <asp:Parameter Name="item_value3" Type="Int32" />
        <asp:Parameter Name="item_param4" Type="Int32" />
        <asp:Parameter Name="item_value4" Type="Int32" />
        <asp:Parameter Name="item_param5" Type="Int32" />
        <asp:Parameter Name="item_value5" Type="Int32" />
        <asp:Parameter Name="item_isbuying" Type="Int32" />
        <asp:Parameter Name="item_islocked" Type="Int32" />
        <asp:Parameter Name="item_icon" Type="String" />
        <asp:Parameter Name="item_username" Type="String" />
        <asp:Parameter Name="item_equip" Type="Int32" />
        <asp:Parameter Name="item_type" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="item_name" Type="String" />
        <asp:Parameter Name="item_description" Type="String" />
        <asp:Parameter Name="item_level" Type="Int32" />
        <asp:Parameter Name="item_require_level" Type="Int32" />
        <asp:Parameter Name="item_param1" Type="Int32" />
        <asp:Parameter Name="item_value1" Type="Int32" />
        <asp:Parameter Name="item_param2" Type="Int32" />
        <asp:Parameter Name="item_value2" Type="Int32" />
        <asp:Parameter Name="item_param3" Type="Int32" />
        <asp:Parameter Name="item_value3" Type="Int32" />
        <asp:Parameter Name="item_param4" Type="Int32" />
        <asp:Parameter Name="item_value4" Type="Int32" />
        <asp:Parameter Name="item_param5" Type="Int32" />
        <asp:Parameter Name="item_value5" Type="Int32" />
        <asp:Parameter Name="item_isbuying" Type="Int32" />
        <asp:Parameter Name="item_islocked" Type="Int32" />
        <asp:Parameter Name="item_icon" Type="String" />
        <asp:Parameter Name="item_username" Type="String" />
        <asp:Parameter Name="item_equip" Type="Int32" />
        <asp:Parameter Name="item_type" Type="Int32" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQLDataSelect">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="item_name" HeaderText="item_name" 
                        SortExpression="item_name" />
                    <asp:BoundField DataField="item_level" HeaderText="item_level" 
                        SortExpression="item_level" />
                    <asp:BoundField DataField="item_require_level" HeaderText="item_require_level" 
                        SortExpression="item_require_level" />
                    <asp:BoundField DataField="item_isbuying" HeaderText="item_isbuying" 
                        SortExpression="item_isbuying" />
                    <asp:BoundField DataField="item_islocked" HeaderText="item_islocked" 
                        SortExpression="item_islocked" />
                </Columns>
            </asp:GridView>
        </td>
        <td>
<asp:SqlDataSource ID="SqlDataEdit" runat="server" 
    ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
    DeleteCommand="DELETE FROM [item] WHERE [ID] = @ID" 
    InsertCommand="INSERT INTO [item] ([item_name], [item_description], [item_level], [item_require_level], [item_param1], [item_value1], [item_param2], [item_value2], [item_param3], [item_value3], [item_param4], [item_value4], [item_param5], [item_value5], [item_isbuying], [item_islocked], [item_icon], [item_username], [item_equip], [item_type], [item_rarity]) VALUES (@item_name, @item_description, @item_level, @item_require_level, @item_param1, @item_value1, @item_param2, @item_value2, @item_param3, @item_value3, @item_param4, @item_value4, @item_param5, @item_value5, @item_isbuying, @item_islocked, @item_icon, @item_username, @item_equip, @item_type, @item_rarity)" 
    SelectCommand="SELECT * FROM [item] WHERE ([ID] = @ID)" 
    
                
                UpdateCommand="UPDATE [item] SET [item_name] = @item_name, [item_description] = @item_description, [item_level] = @item_level, [item_require_level] = @item_require_level, [item_param1] = @item_param1, [item_value1] = @item_value1, [item_param2] = @item_param2, [item_value2] = @item_value2, [item_param3] = @item_param3, [item_value3] = @item_value3, [item_param4] = @item_param4, [item_value4] = @item_value4, [item_param5] = @item_param5, [item_value5] = @item_value5, [item_isbuying] = @item_isbuying, [item_islocked] = @item_islocked, [item_icon] = @item_icon, [item_username] = @item_username, [item_equip] = @item_equip, [item_type] = @item_type, [item_rarity] = @item_rarity WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="item_name" Type="String" />
        <asp:Parameter Name="item_description" Type="String" />
        <asp:Parameter Name="item_level" Type="Int32" />
        <asp:Parameter Name="item_require_level" Type="Int32" />
        <asp:Parameter Name="item_param1" Type="Int32" />
        <asp:Parameter Name="item_value1" Type="Int32" />
        <asp:Parameter Name="item_param2" Type="Int32" />
        <asp:Parameter Name="item_value2" Type="Int32" />
        <asp:Parameter Name="item_param3" Type="Int32" />
        <asp:Parameter Name="item_value3" Type="Int32" />
        <asp:Parameter Name="item_param4" Type="Int32" />
        <asp:Parameter Name="item_value4" Type="Int32" />
        <asp:Parameter Name="item_param5" Type="Int32" />
        <asp:Parameter Name="item_value5" Type="Int32" />
        <asp:Parameter Name="item_isbuying" Type="Int32" />
        <asp:Parameter Name="item_islocked" Type="Int32" />
        <asp:Parameter Name="item_icon" Type="String" />
        <asp:Parameter Name="item_username" Type="String" />
        <asp:Parameter Name="item_equip" Type="Int32" />
        <asp:Parameter Name="item_type" Type="Int32" />
        <asp:Parameter Name="item_rarity" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="ID" 
            PropertyName="SelectedValue" Type="Int32" DefaultValue="-1" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="item_name" Type="String" />
        <asp:Parameter Name="item_description" Type="String" />
        <asp:Parameter Name="item_level" Type="Int32" />
        <asp:Parameter Name="item_require_level" Type="Int32" />
        <asp:Parameter Name="item_param1" Type="Int32" />
        <asp:Parameter Name="item_value1" Type="Int32" />
        <asp:Parameter Name="item_param2" Type="Int32" />
        <asp:Parameter Name="item_value2" Type="Int32" />
        <asp:Parameter Name="item_param3" Type="Int32" />
        <asp:Parameter Name="item_value3" Type="Int32" />
        <asp:Parameter Name="item_param4" Type="Int32" />
        <asp:Parameter Name="item_value4" Type="Int32" />
        <asp:Parameter Name="item_param5" Type="Int32" />
        <asp:Parameter Name="item_value5" Type="Int32" />
        <asp:Parameter Name="item_isbuying" Type="Int32" />
        <asp:Parameter Name="item_islocked" Type="Int32" />
        <asp:Parameter Name="item_icon" Type="String" />
        <asp:Parameter Name="item_username" Type="String" />
        <asp:Parameter Name="item_equip" Type="Int32" />
        <asp:Parameter Name="item_type" Type="Int32" />
        <asp:Parameter Name="item_rarity" Type="Int32" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                DataSourceID="SqlDataEdit">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    item_name:
                    <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
                    <br />
                    item_description:
                    <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                        Text='<%# Bind("item_description") %>' />
                    <br />
                    item_level:
                    <asp:TextBox ID="item_levelTextBox" runat="server" 
                        Text='<%# Bind("item_level") %>' />
                    <br />
                    item_require_level:
                    <asp:TextBox ID="item_require_levelTextBox" runat="server" 
                        Text='<%# Bind("item_require_level") %>' />
                    <br />
                    item_type:
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        SelectedValue='<%# Bind("item_type") %>'>
                        <asp:ListItem Value="0">Helmet</asp:ListItem>
                        <asp:ListItem Value="1">Armor</asp:ListItem>
                        <asp:ListItem Value="2">Shield</asp:ListItem>
                        <asp:ListItem Value="3">Weapon</asp:ListItem>
                        <asp:ListItem Value="4">Gloves</asp:ListItem>
                        <asp:ListItem Value="5">Boots</asp:ListItem>
                   </asp:DropDownList>
                    <br />
                    item_value1:
                    <asp:TextBox ID="item_value1TextBox" runat="server" 
                        ontextchanged="item_value1TextBox_TextChanged" 
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="item_value1TextBox" 
                        ErrorMessage="Value must be greater than 0" MaximumValue="9999" 
                        MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value2:
                    <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="item_value2TextBox" 
                        ErrorMessage="Value must be greater than 0" MaximumValue="9999" 
                        MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value3:
                    <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="item_value3TextBox" 
                        ErrorMessage="Value must be greater than 0" MaximumValue="9999" 
                        MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value4:&nbsp;<asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator4" runat="server" 
                        ControlToValidate="item_value4TextBox" 
                        ErrorMessage="Value must be greater than 0" MaximumValue="9999" 
                        MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value5:
                    <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
                    <asp:RangeValidator ID="RangeValidator5" runat="server" 
                        ControlToValidate="item_value5TextBox" 
                        ErrorMessage="Value must be greater than 0" MaximumValue="9999" 
                        MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_isbuying:
                    <asp:TextBox ID="item_isbuyingTextBox" runat="server" 
                        Text='<%# Bind("item_isbuying") %>' />
                    <br />
                    item_islocked:
                    <asp:TextBox ID="item_islockedTextBox" runat="server" 
                        Text='<%# Bind("item_islocked") %>' />
                    <br />
                    item_icon: <asp:TextBox ID="item_iconTextBox" runat="server" 
                        Text='<%# Bind("item_icon") %>' />
                    <br />
                    item_username:
                    <asp:TextBox ID="item_usernameTextBox" runat="server" 
                        Text='<%# Bind("item_username") %>' />
                    <br />
                    item_equip:
                    <asp:TextBox ID="item_equipTextBox" runat="server" 
                        Text='<%# Bind("item_equip") %>' />
                    <br />
                    item_rarity:
                    <asp:TextBox ID="item_rarityTextBox" runat="server" 
                        Text='<%# Bind("item_rarity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" 
                        PostBackUrl="~/adm/admin_itempage.aspx" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    item_name:
                    <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
                    <br />
                    item_description:
                    <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                        Text='<%# Bind("item_description") %>' />
                    <br />
                    item_level:
                    <asp:TextBox ID="item_levelTextBox" runat="server" 
                        Text='<%# Bind("item_level") %>' />
                    <br />
                    item_require_level:
                    <asp:TextBox ID="item_require_levelTextBox" runat="server" 
                        Text='<%# Bind("item_require_level") %>' />
                    <br />
                    <br />
                    item_type:
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        SelectedValue='<%# Bind("item_type") %>' >
                        <asp:ListItem Value="0">Helmet</asp:ListItem>
                        <asp:ListItem Value="1">Armor</asp:ListItem>
                        <asp:ListItem Value="2">Shield</asp:ListItem>
                        <asp:ListItem Value="3">Weapon</asp:ListItem>
                        <asp:ListItem Value="4">Gloves</asp:ListItem>
                        <asp:ListItem Value="5">Boots</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    item_value1:
                    <asp:TextBox ID="item_value1TextBox" runat="server" 
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator6" runat="server" 
                        ControlToValidate="item_value1TextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value2:
                    <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                        ControlToValidate="item_value2TextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value3:
                    <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator8" runat="server" 
                        ControlToValidate="item_value3TextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value4:&nbsp;<asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator9" runat="server" 
                        ControlToValidate="item_value4TextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_value5:
                    <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
                    <br />
                    <asp:RangeValidator ID="RangeValidator10" runat="server" 
                        ControlToValidate="item_value5TextBox" ErrorMessage="Gia tri thap nhat la 0" 
                        MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                    <br />
                    item_isbuying:
                    <asp:TextBox ID="item_isbuyingTextBox" runat="server" 
                        Text='<%# Bind("item_isbuying") %>' />
                    <br />
                    item_islocked:
                    <asp:TextBox ID="item_islockedTextBox" runat="server" 
                        Text='<%# Bind("item_islocked") %>' />
                    <br />
                    item_icon:
                    <asp:TextBox ID="item_iconTextBox" runat="server" 
                        Text='<%# Bind("item_icon") %>' />
                    <br />
                    item_username:
                    <asp:TextBox ID="item_usernameTextBox" runat="server" 
                        Text='<%# Bind("item_username") %>' />
                    <br />
                    item_equip:
                    <asp:TextBox ID="item_equipTextBox" runat="server" 
                        Text='<%# Bind("item_equip") %>' />
                    <br />
                    item_rarity:
                    <asp:TextBox ID="item_rarityTextBox" runat="server" 
                        Text='<%# Bind("item_rarity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert"  
                        PostBackUrl="~/adm/admin_itempage.aspx" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    item_name:
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Bind("item_name") %>' />
                    <br />
                    item_description:
                    <asp:Label ID="item_descriptionLabel" runat="server" 
                        Text='<%# Bind("item_description") %>' />
                    <br />
                    item_level:
                    <asp:Label ID="item_levelLabel" runat="server" 
                        Text='<%# Bind("item_level") %>' />
                    <br />
                    item_require_level:
                    <asp:Label ID="item_require_levelLabel" runat="server" 
                        Text='<%# Bind("item_require_level") %>' />
                    <br />
                    item_type:
                    <asp:Label ID="item_typeLabel" runat="server" Text='<%# Bind("item_type") %>' />
                    <br />
                    item_value1:
                    <asp:Label ID="item_value1Label" runat="server" 
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    item_value2:
                    <asp:Label ID="item_value2Label" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    item_value3:
                    <asp:Label ID="item_value3Label" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    item_value4:&nbsp;<asp:Label ID="item_value4Label" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_value5:
                    <asp:Label ID="item_value5Label" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
                    <br />
                    item_isbuying:
                    <asp:Label ID="item_isbuyingLabel" runat="server" 
                        Text='<%# Bind("item_isbuying") %>' />
                    <br />
                    item_islocked:
                    <asp:Label ID="item_islockedLabel" runat="server" 
                        Text='<%# Bind("item_islocked") %>' />
                    <br />
                    item_icon:
                    <asp:Label ID="item_iconLabel" runat="server" Text='<%# Bind("item_icon") %>' />
                    <br />
                    item_username:
                    <asp:Label ID="item_usernameLabel" runat="server" 
                        Text='<%# Bind("item_username") %>' />
                    <br />
                    item_equip:
                    <asp:Label ID="item_equipLabel" runat="server" 
                        Text='<%# Bind("item_equip") %>' />
                    <br />
                    item_rarity:
                    <asp:Label ID="item_rarityLabel" runat="server" 
                        Text='<%# Bind("item_rarity") %>' />
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


