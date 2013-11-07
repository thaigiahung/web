<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateCharacter.aspx.cs" Inherits="CreateCharacter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           
        </ContentTemplate>    
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ListView1" EventName="ItemCommand" />
        </Triggers>
    </asp:UpdatePanel>--%>

     <table class="default-1-1">
                <tr>
                    <td rowspan="2">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <table class="default-1-1">
                                    <tr valign=top>
                                        <td rowspan="4">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Skin") %>' />
                                        </td>
                                        <td  style="font-size: x-large;  color: #FF0000; text-decoration: blink">
                                            Chỉ số sức mạnh:</td>
                                        
                                    </tr>
                                    <tr valign=top>
                                        <td style="font-size: large"  >
                                            <strong>HP:</strong>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("HP") %>'></asp:Label>
                                            <br />
                                            <strong>Energy:</strong>
                                            
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Energy") %>'></asp:Label>
                                            <br />
                                            <strong>Damage:</strong>
                                            
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Damage") %>'></asp:Label>
                                            <br /> 
                                            <strong>Defence:</strong>
                                            
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Defence") %>'></asp:Label>
                                            
                                        </td>
                                        
                                    </tr>
                                    <tr valign=top>
                                        <td style="font-size: x-large; color: #FF0000; text-decoration: blink">
                                            Truyền thuyết:
                                        </td>
                                    </tr>
                                    <tr valign=top>
                                    <td style="border: medium groove #FF0000" width="600">
                                        
                                        <asp:TextBox ID="TextBox1" runat="server" Rows="20" Text='<%# Eval("Lore") %>' 
                                            TextMode="MultiLine" Width="100%" Height="100%" ReadOnly="True"></asp:TextBox>
                                        
                                    </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                            SelectCommand="SELECT Hero.IdHero, Hero.Name, Hero.IdType, Hero.Lore, Hero.Avatar, Hero.Skin, HeroType.TypeName, HeroType.HP, HeroType.Damage, HeroType.Defence, HeroType.Energy FROM Hero INNER JOIN HeroType ON Hero.IdType = HeroType.IdType WHERE (Hero.IdHero = @IdHero)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbIdHero" DefaultValue="1" Name="IdHero" 
                                    PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" align=center>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                            SelectCommand="SELECT * FROM [Hero] ORDER BY [IdHero]" 
                            ></asp:SqlDataSource>
                        &nbsp;
                        <asp:Button ID="btnCreateChar" runat="server" Text="Create" 
                            onclick="btnCreateChar_Click" />
                        <ContentTemplate>
                            <br />
                            <br />
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                                GroupItemCount="7" onitemcommand="ListView1_ItemCommand">
                                <AlternatingItemTemplate>
                                    <td id="Td1" runat="server" style="">
                                         <asp:ImageButton ID="ImageButton4" runat="server"  BorderColor="Red"
                                        ImageUrl='<%# Eval("Avatar") %>' CommandName="PickHero2" BorderStyle="None" />
                                         <asp:Label ID="lbIdHero2" runat="server" Text='<%# Eval("IdHero") %>' 
                                             Visible="False"></asp:Label>
                                    </td>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <td id="Td2" runat="server" style="">
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
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                            Text="Update" />
                                        <br />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Cancel" />
                                        <br />
                                    </td>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table id="Table1" runat="server" style="">
                                        <tr>
                                            <td>
                                                No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <emptyitemtemplate>
                                    <td id="Td3" runat="server" />
                                </emptyitemtemplate>
                                <grouptemplate>
                                    <tr ID="itemPlaceholderContainer" runat="server">
                                        <td ID="itemPlaceholder" runat="server">
                                        </td>
                                    </tr>
                                </grouptemplate>
                                <InsertItemTemplate>
                                    <td id="Td4" runat="server" style="">
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
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                            Text="Insert" />
                                        <br />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Clear" />
                                        <br />
                                    </td>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <td id="Td5" runat="server" style="">
                                        <asp:ImageButton ID="ImageButton3" runat="server" 
                                        ImageUrl='<%# Eval("Avatar") %>' CommandName="PickHero1" BorderColor="Red" />
                                        <asp:Label ID="lbIdHero1" runat="server" Text='<%# Eval("IdHero") %>' 
                                            Visible="False"></asp:Label>
                                    </td>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table id="Table2" runat="server">
                                        <tr id="Tr1" runat="server">
                                            <td id="Td6" runat="server">
                                                <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                                    <tr ID="groupPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr id="Tr2" runat="server">
                                            <td id="Td7" runat="server" style="">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <td id="Td8" runat="server" style="">
                                        IdHero:
                                        <asp:Label ID="IdHeroLabel" runat="server" Text='<%# Eval("IdHero") %>' />
                                        <br />
                                        Name:
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        IdType:
                                        <asp:Label ID="IdTypeLabel" runat="server" Text='<%# Eval("IdType") %>' />
                                        <br />
                                        Lore:
                                        <asp:Label ID="LoreLabel" runat="server" Text='<%# Eval("Lore") %>' />
                                        <br />
                                        Avatar:
                                        <asp:Label ID="AvatarLabel" runat="server" Text='<%# Eval("Avatar") %>' />
                                        <br />
                                        Skin:
                                        <asp:Label ID="SkinLabel" runat="server" Text='<%# Eval("Skin") %>' />
                                        <br />
                                    </td>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            
                            
                        </ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="100" ontick="Timer1_Tick" 
                            Enabled="True">
                        </asp:Timer>
                        <asp:Label ID="lbIdHero" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbSelectedIndex" runat="server" Visible="False"></asp:Label>
                       
                    </td>
                </tr>
            </table>

    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

