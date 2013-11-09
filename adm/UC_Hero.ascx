<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Hero.ascx.cs" Inherits="adm_UC_Hero" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 513px;
    }
</style>

<table class="style1">
    <tr>
        <td class="style2">
            <asp:SqlDataSource ID="GridView_Hero" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                SelectCommand="SELECT * FROM [Hero]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="IdHero" DataSourceID="GridView_Hero">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IdHero" HeaderText="IdHero" InsertVisible="False" 
                        ReadOnly="True" SortExpression="IdHero" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="IdType" HeaderText="IdType" 
                        SortExpression="IdType" />
                    <asp:BoundField DataField="Lore" HeaderText="Lore" SortExpression="Lore" />
                    <asp:BoundField DataField="Avatar" HeaderText="Avatar" 
                        SortExpression="Avatar" />
                    <asp:BoundField DataField="Skin" HeaderText="Skin" SortExpression="Skin" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            Information</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:SqlDataSource ID="FormView_Hero" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                DeleteCommand="DELETE FROM [Hero] WHERE [IdHero] = @IdHero" 
                InsertCommand="INSERT INTO [Hero] ([Name], [IdType], [Lore], [Avatar], [Skin]) VALUES (@Name, @IdType, @Lore, @Avatar, @Skin)" 
                SelectCommand="SELECT * FROM [Hero] WHERE ([IdHero] = @IdHero)" 
                UpdateCommand="UPDATE [Hero] SET [Name] = @Name, [IdType] = @IdType, [Lore] = @Lore, [Avatar] = @Avatar, [Skin] = @Skin WHERE [IdHero] = @IdHero">
                <DeleteParameters>
                    <asp:Parameter Name="IdHero" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="IdType" Type="Int32" />
                    <asp:Parameter Name="Lore" Type="String" />
                    <asp:Parameter Name="Avatar" Type="String" />
                    <asp:Parameter Name="Skin" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="-1" Name="IdHero" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="IdType" Type="Int32" />
                    <asp:Parameter Name="Lore" Type="String" />
                    <asp:Parameter Name="Avatar" Type="String" />
                    <asp:Parameter Name="Skin" Type="String" />
                    <asp:Parameter Name="IdHero" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="IdHero" 
                DataSourceID="FormView_Hero">
                <EditItemTemplate>
                    IdHero:
                    <asp:Label ID="IdHeroLabel1" runat="server" Text='<%# Eval("IdHero") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    IdType:
                    <asp:TextBox ID="IdTypeTextBox" runat="server" Text='<%# Bind("IdType") %>' />
                    <br />
                    Lore:
                    <asp:TextBox ID="LoreTextBox" runat="server" Text='<%# Bind("Lore") %>' />
                    <br />
                    Avatar:
                    <asp:TextBox ID="AvatarTextBox" runat="server" Text='<%# Bind("Avatar") %>' />
                    <br />
                    Skin:
                    <asp:TextBox ID="SkinTextBox" runat="server" Text='<%# Bind("Skin") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    IdType:
                    <asp:TextBox ID="IdTypeTextBox" runat="server" Text='<%# Bind("IdType") %>' />
                    <br />
                    Lore:
                    <asp:TextBox ID="LoreTextBox" runat="server" Text='<%# Bind("Lore") %>' />
                    <br />
                    Avatar:
                    <asp:TextBox ID="AvatarTextBox" runat="server" Text='<%# Bind("Avatar") %>' />
                    <br />
                    Skin:
                    <asp:TextBox ID="SkinTextBox" runat="server" Text='<%# Bind("Skin") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    IdHero:
                    <asp:Label ID="IdHeroLabel" runat="server" Text='<%# Eval("IdHero") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    IdType:
                    <asp:Label ID="IdTypeLabel" runat="server" Text='<%# Bind("IdType") %>' />
                    <br />
                    Lore:
                    <asp:Label ID="LoreLabel" runat="server" Text='<%# Bind("Lore") %>' />
                    <br />
                    Avatar:
                    <asp:Label ID="AvatarLabel" runat="server" Text='<%# Bind("Avatar") %>' />
                    <br />
                    Skin:
                    <asp:Label ID="SkinLabel" runat="server" Text='<%# Bind("Skin") %>' />
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

