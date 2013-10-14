﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateCharacter.aspx.cs" Inherits="CreateCharacter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                                            TextMode="MultiLine" Width="100%" Height="100%"></asp:TextBox>
                                        
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
                            SelectCommand="SELECT * FROM [Hero] ORDER BY [IdHero]"></asp:SqlDataSource>
                        <ContentTemplate>
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                                GroupItemCount="7">
                                <AlternatingItemTemplate>
                                    <td runat="server" style="">
                                         <asp:ImageButton ID="ImageButton4" runat="server"  BorderColor="Red"
                                        ImageUrl='<%# Eval("Avatar") %>' CommandName="PickHero2" />
                                    </td>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <td runat="server" style="">
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
                                    <table runat="server" style="">
                                        <tr>
                                            <td>
                                                No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <emptyitemtemplate>
                                    <td runat="server" />
                                </emptyitemtemplate>
                                <grouptemplate>
                                    <tr ID="itemPlaceholderContainer" runat="server">
                                        <td ID="itemPlaceholder" runat="server">
                                        </td>
                                    </tr>
                                </grouptemplate>
                                <InsertItemTemplate>
                                    <td runat="server" style="">
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
                                    <td runat="server" style="">
                                        <asp:ImageButton ID="ImageButton3" runat="server" 
                                        ImageUrl='<%# Eval("Avatar") %>' CommandName="PickHero1" BorderColor="Red" />
                                    </td>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                                    <tr ID="groupPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style="">
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <td runat="server" style="">
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
                        <asp:Label ID="lbSelectedIndex" runat="server"></asp:Label>
                        <asp:Label ID="lbIdHero" runat="server"></asp:Label>
                        <asp:Timer ID="Timer1" runat="server" Interval="100" ontick="Timer1_Tick">
                        </asp:Timer>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ListView1" EventName="ItemCommand" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
