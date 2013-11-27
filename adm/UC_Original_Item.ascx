<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Original_Item.ascx.cs" Inherits="adm_UC_Original_Item" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 501px;
        height: 346px;
    }
    .style3
    {
        height: 346px;
    }
</style>

<table class="style1">
    <tr>
        <td colspan="2" align="right">
            <asp:TextBox ID="searchbox" runat="server" Width="150px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                onclick="btnSearch_Click" Text="Search" Width="50px" /></td>
    </tr>
    <tr>
        <td class="style2">
            <asp:SqlDataSource ID="SQL_GridView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                SelectCommand="SELECT * FROM [original_item]" 
                DeleteCommand="DELETE FROM [original_item] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [original_item] ([item_name], [item_level], [item_icon], [item_description], [item_type], [item_param1], [item_value1], [item_param2], [item_value2], [item_param3], [item_value3], [item_param4], [item_value4], [item_param5], [item_value5]) VALUES (@item_name, @item_level, @item_icon, @item_description, @item_type, @item_param1, @item_value1, @item_param2, @item_value2, @item_param3, @item_value3, @item_param4, @item_value4, @item_param5, @item_value5)" 
                UpdateCommand="UPDATE [original_item] SET [item_name] = @item_name, [item_level] = @item_level, [item_icon] = @item_icon, [item_description] = @item_description, [item_type] = @item_type, [item_param1] = @item_param1, [item_value1] = @item_value1, [item_param2] = @item_param2, [item_value2] = @item_value2, [item_param3] = @item_param3, [item_value3] = @item_value3, [item_param4] = @item_param4, [item_value4] = @item_value4, [item_param5] = @item_param5, [item_value5] = @item_value5 WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="item_name" Type="String" />
                    <asp:Parameter Name="item_level" Type="Int32" />
                    <asp:Parameter Name="item_icon" Type="String" />
                    <asp:Parameter Name="item_description" Type="String" />
                    <asp:Parameter Name="item_type" Type="Int32" />
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
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="item_name" Type="String" />
                    <asp:Parameter Name="item_level" Type="Int32" />
                    <asp:Parameter Name="item_icon" Type="String" />
                    <asp:Parameter Name="item_description" Type="String" />
                    <asp:Parameter Name="item_type" Type="Int32" />
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
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQL_GridView">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="item_name" HeaderText="item_name" 
                        SortExpression="item_name" />
                    <asp:BoundField DataField="item_level" HeaderText="item_level" 
                        SortExpression="item_level" />
                    <asp:BoundField DataField="item_type" HeaderText="item_type" 
                        SortExpression="item_type" />
                    <asp:BoundField DataField="item_value1" HeaderText="item_value1" />
                    <asp:BoundField DataField="item_value2" HeaderText="item_value2" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="style3">
            <asp:SqlDataSource ID="SQL_FormView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [original_item] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [original_item] ([item_name], [item_level], [item_icon], [item_description], [item_type], [item_param1], [item_value1], [item_param2], [item_value2], [item_param3], [item_value3], [item_param4], [item_value4], [item_param5], [item_value5]) VALUES (@item_name, @item_level, @item_icon, @item_description, @item_type, @item_param1, @item_value1, @item_param2, @item_value2, @item_param3, @item_value3, @item_param4, @item_value4, @item_param5, @item_value5)" 
                SelectCommand="SELECT * FROM [original_item] WHERE ([ID] = @ID)" 
                UpdateCommand="UPDATE [original_item] SET [item_name] = @item_name, [item_level] = @item_level, [item_icon] = @item_icon, [item_description] = @item_description, [item_type] = @item_type, [item_param1] = @item_param1, [item_value1] = @item_value1, [item_param2] = @item_param2, [item_value2] = @item_value2, [item_param3] = @item_param3, [item_value3] = @item_value3, [item_param4] = @item_param4, [item_value4] = @item_value4, [item_param5] = @item_param5, [item_value5] = @item_value5 WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="item_name" Type="String" />
                    <asp:Parameter Name="item_level" Type="Int32" />
                    <asp:Parameter Name="item_icon" Type="String" />
                    <asp:Parameter Name="item_description" Type="String" />
                    <asp:Parameter Name="item_type" Type="Int32" />
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
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="item_name" Type="String" />
                    <asp:Parameter Name="item_level" Type="Int32" />
                    <asp:Parameter Name="item_icon" Type="String" />
                    <asp:Parameter Name="item_description" Type="String" />
                    <asp:Parameter Name="item_type" Type="Int32" />
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
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                DataSourceID="SQL_FormView">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    item_name:
                    <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
                    <br />
                    item_level:
                    <asp:TextBox ID="item_levelTextBox" runat="server" 
                        Text='<%# Bind("item_level") %>' />
                    <br />
                    item_icon:
                    <asp:TextBox ID="item_iconTextBox" runat="server" 
                        Text='<%# Bind("item_icon") %>' />
                    <br />
                    item_description:
                    <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                        Text='<%# Bind("item_description") %>' />
                    <br />
                    item_type:
                    <asp:DropDownList ID="DropDownList1" runat="server" 
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
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    item_value2:
                    <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    item_value3:
                    <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    item_value4:
                    <asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_value5:
                    <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    item_name:
                    <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
                    <br />
                    item_level:
                    <asp:TextBox ID="item_levelTextBox" runat="server" 
                        Text='<%# Bind("item_level") %>' />
                    <br />
                    item_icon:
                    <asp:TextBox ID="item_iconTextBox" runat="server" 
                        Text='<%# Bind("item_icon") %>' />
                    <br />
                    item_description:
                    <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                        Text='<%# Bind("item_description") %>' />
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
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    item_value2:
                    <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    item_value3:
                    <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    item_value4:
                    <asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_value5:
                    <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
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
                    item_name:
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Bind("item_name") %>' />
                    <br />
                    item_level:
                    <asp:Label ID="item_levelLabel" runat="server" 
                        Text='<%# Bind("item_level") %>' />
                    <br />
                    item_icon:
                    <asp:Label ID="item_iconLabel" runat="server" Text='<%# Bind("item_icon") %>' />
                    <br />
                    item_description:
                    <asp:Label ID="item_descriptionLabel" runat="server" 
                        Text='<%# Bind("item_description") %>' />
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
                    item_value4:
                    <asp:Label ID="item_value4Label" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_value5:
                    <asp:Label ID="item_value5Label" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
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

