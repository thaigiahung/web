<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_ItemEvent.ascx.cs" Inherits="adm_admin_itemevent" %>
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
                SelectCommand="SELECT * FROM [itemevent]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQL_GridView">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="itemevent_name" HeaderText="itemevent_name" 
                        SortExpression="itemevent_name" />
                </Columns>
            </asp:GridView>
        </td>
        <td>
            <asp:SqlDataSource ID="SQL_FormView" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [itemevent] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [itemevent] ([itemevent_name], [itemevent_param], [itemevent_value], [itemevent_icon]) VALUES (@itemevent_name, @itemevent_param, @itemevent_value, @itemevent_icon)" 
                SelectCommand="SELECT * FROM [itemevent] WHERE ([ID] = @ID)" 
                UpdateCommand="UPDATE [itemevent] SET [itemevent_name] = @itemevent_name, [itemevent_param] = @itemevent_param, [itemevent_value] = @itemevent_value, [itemevent_icon] = @itemevent_icon WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="itemevent_name" Type="String" />
                    <asp:Parameter Name="itemevent_param" Type="Int32" />
                    <asp:Parameter Name="itemevent_value" Type="Int32" />
                    <asp:Parameter Name="itemevent_icon" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="ID" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="itemevent_name" Type="String" />
                    <asp:Parameter Name="itemevent_param" Type="Int32" />
                    <asp:Parameter Name="itemevent_value" Type="Int32" />
                    <asp:Parameter Name="itemevent_icon" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                DataSourceID="SQL_FormView">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    itemevent_name:
                    <asp:TextBox ID="itemevent_nameTextBox" runat="server" 
                        Text='<%# Bind("itemevent_name") %>' />
                    <br />
                    itemevent_param:
                    <asp:TextBox ID="itemevent_paramTextBox" runat="server" 
                        Text='<%# Bind("itemevent_param") %>' />
                    <br />
                    itemevent_value:
                    <asp:TextBox ID="itemevent_valueTextBox" runat="server" 
                        Text='<%# Bind("itemevent_value") %>' />
                    <br />
                    itemevent_icon:
                    <asp:TextBox ID="itemevent_iconTextBox" runat="server" 
                        Text='<%# Bind("itemevent_icon") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    itemevent_name:
                    <asp:TextBox ID="itemevent_nameTextBox" runat="server" 
                        Text='<%# Bind("itemevent_name") %>' />
                    <br />
                    itemevent_param:
                    <asp:TextBox ID="itemevent_paramTextBox" runat="server" 
                        Text='<%# Bind("itemevent_param") %>' />
                    <br />
                    itemevent_value:
                    <asp:TextBox ID="itemevent_valueTextBox" runat="server" 
                        Text='<%# Bind("itemevent_value") %>' />
                    <br />
                    itemevent_icon:
                    <asp:TextBox ID="itemevent_iconTextBox" runat="server" 
                        Text='<%# Bind("itemevent_icon") %>' />
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
                    itemevent_name:
                    <asp:Label ID="itemevent_nameLabel" runat="server" 
                        Text='<%# Bind("itemevent_name") %>' />
                    <br />
                    itemevent_param:
                    <asp:Label ID="itemevent_paramLabel" runat="server" 
                        Text='<%# Bind("itemevent_param") %>' />
                    <br />
                    itemevent_value:
                    <asp:Label ID="itemevent_valueLabel" runat="server" 
                        Text='<%# Bind("itemevent_value") %>' />
                    <br />
                    itemevent_icon:
                    <asp:Label ID="itemevent_iconLabel" runat="server" 
                        Text='<%# Bind("itemevent_icon") %>' />
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

