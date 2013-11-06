<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_ItemPage.ascx.cs" Inherits="adm_WebUserControl" %>
<style type="text/css">
    .style1
    {
        width: 559px;
    }
</style>
<table style="width:100%;" border="1" align="center">
    <tr>
        <td class="style1">
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
    InsertCommand="INSERT INTO [item] ([item_name], [item_description], [item_level], [item_require_level], [item_param1], [item_value1], [item_param2], [item_value2], [item_param3], [item_value3], [item_param4], [item_value4], [item_param5], [item_value5], [item_isbuying], [item_islocked], [item_icon], [item_username], [item_equip], [item_type]) VALUES (@item_name, @item_description, @item_level, @item_require_level, @item_param1, @item_value1, @item_param2, @item_value2, @item_param3, @item_value3, @item_param4, @item_value4, @item_param5, @item_value5, @item_isbuying, @item_islocked, @item_icon, @item_username, @item_equip, @item_type)" 
    SelectCommand="SELECT * FROM [item] WHERE ([ID] = @ID)" 
    
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
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="ID" 
            PropertyName="SelectedValue" Type="Int32" />
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
                    <asp:SqlDataSource ID="SQL1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        DeleteCommand="DELETE FROM [item_option] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [item_option] ([opt_name]) VALUES (@opt_name)" 
                        SelectCommand="SELECT * FROM [item_option]" 
                        UpdateCommand="UPDATE [item_option] SET [opt_name] = @opt_name WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    item_param1:
                    <asp:DropDownList ID="DropDown1" runat="server" DataSourceID="SQL1" 
                        DataTextField="opt_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("item_param1") %>'>
                    </asp:DropDownList>
                    <br />
                    item_value1:
                    <asp:TextBox ID="item_value1TextBox" runat="server" 
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    item_param2:
                    <asp:DropDownList ID="DropDown2" runat="server" DataSourceID="SQL2" 
                        DataTextField="opt_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("item_param2") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SQL2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        DeleteCommand="DELETE FROM [item_option] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [item_option] ([opt_name]) VALUES (@opt_name)" 
                        SelectCommand="SELECT * FROM [item_option]" 
                        UpdateCommand="UPDATE [item_option] SET [opt_name] = @opt_name WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    item_value2:
                    <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    item_param3:
                    <asp:DropDownList ID="DropDown3" runat="server" DataSourceID="SQL3" 
                        DataTextField="opt_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("item_param3") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SQL3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        DeleteCommand="DELETE FROM [item_option] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [item_option] ([opt_name]) VALUES (@opt_name)" 
                        SelectCommand="SELECT * FROM [item_option]" 
                        UpdateCommand="UPDATE [item_option] SET [opt_name] = @opt_name WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    item_value3:
                    <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    item_param4:
                    <asp:DropDownList ID="DropDown4" runat="server" DataSourceID="SQL4" 
                        DataTextField="opt_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("item_param4") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SQL4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        DeleteCommand="DELETE FROM [item_option] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [item_option] ([opt_name]) VALUES (@opt_name)" 
                        SelectCommand="SELECT * FROM [item_option]" 
                        UpdateCommand="UPDATE [item_option] SET [opt_name] = @opt_name WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    item_value4:&nbsp;<asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_param5:
                    <asp:DropDownList ID="DropDown5" runat="server" DataSourceID="SQL5" 
                        DataTextField="opt_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("item_param5") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SQL5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                        DeleteCommand="DELETE FROM [item_option] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [item_option] ([opt_name]) VALUES (@opt_name)" 
                        SelectCommand="SELECT * FROM [item_option]" 
                        UpdateCommand="UPDATE [item_option] SET [opt_name] = @opt_name WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="opt_name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    item_value5:
                    <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
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
                    item_type:
                    <asp:TextBox ID="item_typeTextBox" runat="server" 
                        Text='<%# Bind("item_type") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
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
                    item_param1:
                    <asp:TextBox ID="item_param1TextBox" runat="server" 
                        Text='<%# Bind("item_param1") %>' />
                    <br />
                    item_value1:
                    <asp:TextBox ID="item_value1TextBox" runat="server" 
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    item_param2:
                    <asp:TextBox ID="item_param2TextBox" runat="server" 
                        Text='<%# Bind("item_param2") %>' />
                    <br />
                    item_value2:
                    <asp:TextBox ID="item_value2TextBox" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    item_param3:
                    <asp:TextBox ID="item_param3TextBox" runat="server" 
                        Text='<%# Bind("item_param3") %>' />
                    <br />
                    item_value3:
                    <asp:TextBox ID="item_value3TextBox" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    item_param4:
                    <asp:TextBox ID="item_param4TextBox" runat="server" 
                        Text='<%# Bind("item_param4") %>' />
                    <br />
                    item_value4:
                    <asp:TextBox ID="item_value4TextBox" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_param5:
                    <asp:TextBox ID="item_param5TextBox" runat="server" 
                        Text='<%# Bind("item_param5") %>' />
                    <br />
                    item_value5:
                    <asp:TextBox ID="item_value5TextBox" runat="server" 
                        Text='<%# Bind("item_value5") %>' />
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
                    item_type:
                    <asp:TextBox ID="item_typeTextBox" runat="server" 
                        Text='<%# Bind("item_type") %>' />
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
                    item_param1:
                    <asp:Label ID="item_param1Label" runat="server" 
                        Text='<%# Bind("item_param1") %>' />
                    <br />
                    item_value1:
                    <asp:Label ID="item_value1Label" runat="server" 
                        Text='<%# Bind("item_value1") %>' />
                    <br />
                    item_param2:
                    <asp:Label ID="item_param2Label" runat="server" 
                        Text='<%# Bind("item_param2") %>' />
                    <br />
                    item_value2:
                    <asp:Label ID="item_value2Label" runat="server" 
                        Text='<%# Bind("item_value2") %>' />
                    <br />
                    item_param3:
                    <asp:Label ID="item_param3Label" runat="server" 
                        Text='<%# Bind("item_param3") %>' />
                    <br />
                    item_value3:
                    <asp:Label ID="item_value3Label" runat="server" 
                        Text='<%# Bind("item_value3") %>' />
                    <br />
                    item_param4:
                    <asp:Label ID="item_param4Label" runat="server" 
                        Text='<%# Bind("item_param4") %>' />
                    <br />
                    item_value4:&nbsp;<asp:Label ID="item_value4Label" runat="server" 
                        Text='<%# Bind("item_value4") %>' />
                    <br />
                    item_param5:
                    <asp:Label ID="item_param5Label" runat="server" 
                        Text='<%# Bind("item_param5") %>' />
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
                    item_type:
                    <asp:Label ID="item_typeLabel" runat="server" Text='<%# Bind("item_type") %>' />
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


