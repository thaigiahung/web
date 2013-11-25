<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_ItemOption.ascx.cs" Inherits="adm_ItemOption_UC" %>
<table style="width:100%;">
    <tr>
        <td class="style1" colspan="2" align="right">
            <asp:TextBox ID="searchbox" runat="server" Width="150px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                onclick="btnSearch_Click" Text="Search" Width="50px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQL_Gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="opt_name" HeaderText="opt_name" 
                        SortExpression="opt_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SQL_Gridview" runat="server" 
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
        </td>
        <td>
            <asp:SqlDataSource ID="SQL_FormView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [item_option] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [item_option] ([opt_name]) VALUES (@opt_name)" 
                SelectCommand="SELECT * FROM [item_option] WHERE ([ID] = @ID)" 
                UpdateCommand="UPDATE [item_option] SET [opt_name] = @opt_name WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="opt_name" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="opt_name" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                DataSourceID="SQL_FormView">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    opt_name:
                    <asp:TextBox ID="opt_nameTextBox" runat="server" 
                        Text='<%# Bind("opt_name") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    opt_name:
                    <asp:TextBox ID="opt_nameTextBox" runat="server" 
                        Text='<%# Bind("opt_name") %>' />
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
                    opt_name:
                    <asp:Label ID="opt_nameLabel" runat="server" Text='<%# Bind("opt_name") %>' />
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

