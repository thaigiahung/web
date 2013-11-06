<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Market.ascx.cs" Inherits="adm_UC_Market" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>

<table class="style1">
    <tr>
        <td>
            <asp:SqlDataSource ID="SQL_GridView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                SelectCommand="SELECT * FROM [market]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQL_GridView">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="market_item_id" HeaderText="market_item_id" 
                        SortExpression="market_item_id" />
                    <asp:BoundField DataField="market_item_price" HeaderText="market_item_price" 
                        SortExpression="market_item_price" />
                </Columns>
            </asp:GridView>
        </td>
        <td>
            <asp:SqlDataSource ID="SQL_FormView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [market] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [market] ([market_item_id], [market_date], [market_item_price], [market_expire]) VALUES (@market_item_id, @market_date, @market_item_price, @market_expire)" 
                SelectCommand="SELECT * FROM [market] WHERE ([ID] = @ID)" 
                UpdateCommand="UPDATE [market] SET [market_item_id] = @market_item_id, [market_date] = @market_date, [market_item_price] = @market_item_price, [market_expire] = @market_expire WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="market_item_id" Type="Int32" />
                    <asp:Parameter Name="market_date" Type="DateTime" />
                    <asp:Parameter Name="market_item_price" Type="Int32" />
                    <asp:Parameter Name="market_expire" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="market_item_id" Type="Int32" />
                    <asp:Parameter Name="market_date" Type="DateTime" />
                    <asp:Parameter Name="market_item_price" Type="Int32" />
                    <asp:Parameter Name="market_expire" Type="DateTime" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                DataSourceID="SQL_FormView">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    market_item_id:<br />&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQL_ItemID" 
                        DataTextField="item_name" DataValueField="ID" 
                        SelectedValue='<%# Bind("market_item_id") %>'>
                    </asp:DropDownList>
                    <br />
                    <asp:SqlDataSource ID="SQL_ItemID" runat="server" 
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
                    market_date:
                    <asp:TextBox ID="market_dateTextBox" runat="server" 
                        Text='<%# Bind("market_date") %>' />
                    <br />
                    market_item_price:
                    <asp:TextBox ID="market_item_priceTextBox" runat="server" 
                        Text='<%# Bind("market_item_price") %>' />
                    <br />
                    market_expire:
                    <asp:TextBox ID="market_expireTextBox" runat="server" 
                        Text='<%# Bind("market_expire") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    market_item_id:
                    <asp:TextBox ID="market_item_idTextBox" runat="server" 
                        Text='<%# Bind("market_item_id") %>' />
                    <br />
                    market_date:
                    <asp:TextBox ID="market_dateTextBox" runat="server" 
                        Text='<%# Bind("market_date") %>' />
                    <br />
                    market_item_price:
                    <asp:TextBox ID="market_item_priceTextBox" runat="server" 
                        Text='<%# Bind("market_item_price") %>' />
                    <br />
                    market_expire:
                    <asp:TextBox ID="market_expireTextBox" runat="server" 
                        Text='<%# Bind("market_expire") %>' />
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
                    market_item_id:
                    <asp:Label ID="market_item_idLabel" runat="server" 
                        Text='<%# Bind("market_item_id") %>' />
                    <br />
                    market_date:
                    <asp:Label ID="market_dateLabel" runat="server" 
                        Text='<%# Bind("market_date") %>' />
                    <br />
                    market_item_price:
                    <asp:Label ID="market_item_priceLabel" runat="server" 
                        Text='<%# Bind("market_item_price") %>' />
                    <br />
                    market_expire:
                    <asp:Label ID="market_expireLabel" runat="server" 
                        Text='<%# Bind("market_expire") %>' />
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

