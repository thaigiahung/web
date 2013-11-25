<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_ItemEventOption.ascx.cs" Inherits="adm_UC_ItemEventOption" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>

<table class="style1">
    <tr>
        <td class="style1" colspan="2" align="right">
            <asp:TextBox ID="searchbox" runat="server" Width="150px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                onclick="btnSearch_Click" Text="Search" Width="50px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SQL_GridView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                SelectCommand="SELECT * FROM [itemevent_option]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQL_GridView">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="eventopt_name" HeaderText="eventopt_name" 
                        SortExpression="eventopt_name" />
                </Columns>
            </asp:GridView>
        </td>
        <td>
            <asp:SqlDataSource ID="SQL_FormView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [itemevent_option] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [itemevent_option] ([eventopt_name], [eventopt_description]) VALUES (@eventopt_name, @eventopt_description)" 
                SelectCommand="SELECT * FROM [itemevent_option] WHERE ([ID] = @ID)" 
                UpdateCommand="UPDATE [itemevent_option] SET [eventopt_name] = @eventopt_name, [eventopt_description] = @eventopt_description WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="eventopt_name" Type="String" />
                    <asp:Parameter Name="eventopt_description" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="eventopt_name" Type="String" />
                    <asp:Parameter Name="eventopt_description" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                DataSourceID="SQL_FormView">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    eventopt_name:
                    <asp:TextBox ID="eventopt_nameTextBox" runat="server" 
                        Text='<%# Bind("eventopt_name") %>' />
                    <br />
                    eventopt_description:
                    <asp:TextBox ID="eventopt_descriptionTextBox" runat="server" 
                        Text='<%# Bind("eventopt_description") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    eventopt_name:
                    <asp:TextBox ID="eventopt_nameTextBox" runat="server" 
                        Text='<%# Bind("eventopt_name") %>' />
                    <br />
                    eventopt_description:
                    <asp:TextBox ID="eventopt_descriptionTextBox" runat="server" 
                        Text='<%# Bind("eventopt_description") %>' />
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
                    eventopt_name:
                    <asp:Label ID="eventopt_nameLabel" runat="server" 
                        Text='<%# Bind("eventopt_name") %>' />
                    <br />
                    eventopt_description:
                    <asp:Label ID="eventopt_descriptionLabel" runat="server" 
                        Text='<%# Bind("eventopt_description") %>' />
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

