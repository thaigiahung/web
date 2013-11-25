<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTrangChoiGame.master" AutoEventWireup="true" CodeFile="TuiDo.aspx.cs" Inherits="TuiDo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
        <tr>
            <td height="70%">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/resources/img/hero/caitlyn.png" Height="500px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td height="30%">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
        SelectCommand="SELECT char_inventory.UserName, char_inventory.ItemId, item.ID, item.item_name, item.item_description, item.item_level, item.item_require_level, item.item_param1, item.item_value1, item.item_param2, item.item_value2, item.item_param3, item.item_value3, item.item_param4, item.item_value4, item.item_param5, item.item_value5, item.item_isbuying, item.item_islocked, item.item_icon, item.item_username, item.item_equip, item.item_type, item.item_rarity FROM char_inventory INNER JOIN item ON char_inventory.ItemId = item.ID WHERE (char_inventory.UserName = @username) And char_inventory.status = 0">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="User" />
        </SelectParameters>
    </asp:SqlDataSource>
                 <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
                     DataSourceID="SqlDataSource1" GroupItemCount="5">
                     <AlternatingItemTemplate>
                         <td runat="server" style="">
                             <asp:ImageButton ID="imgItem2" runat="server" Height="80px" 
                                 ImageUrl='<%# Eval("item_icon") %>' Width="80px" />
                             <br />
                             <asp:Label ID="lbItemId2" runat="server" Text='<%# Eval("ItemId") %>' 
                                 Visible="False"></asp:Label>
                             <br /></td>
                     </AlternatingItemTemplate>
                     <EditItemTemplate>
                         <td runat="server" style="">
                             UserName:
                             <asp:TextBox ID="UserNameTextBox" runat="server" 
                                 Text='<%# Bind("UserName") %>' />
                             <br />ItemId:
                             <asp:TextBox ID="ItemIdTextBox" runat="server" Text='<%# Bind("ItemId") %>' />
                             <br />ID:
                             <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                             <br />item_name:
                             <asp:TextBox ID="item_nameTextBox" runat="server" 
                                 Text='<%# Bind("item_name") %>' />
                             <br />item_description:
                             <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                                 Text='<%# Bind("item_description") %>' />
                             <br />item_level:
                             <asp:TextBox ID="item_levelTextBox" runat="server" 
                                 Text='<%# Bind("item_level") %>' />
                             <br />item_require_level:
                             <asp:TextBox ID="item_require_levelTextBox" runat="server" 
                                 Text='<%# Bind("item_require_level") %>' />
                             <br />item_param1:
                             <asp:TextBox ID="item_param1TextBox" runat="server" 
                                 Text='<%# Bind("item_param1") %>' />
                             <br />item_value1:
                             <asp:TextBox ID="item_value1TextBox" runat="server" 
                                 Text='<%# Bind("item_value1") %>' />
                             <br />item_param2:
                             <asp:TextBox ID="item_param2TextBox" runat="server" 
                                 Text='<%# Bind("item_param2") %>' />
                             <br />item_value2:
                             <asp:TextBox ID="item_value2TextBox" runat="server" 
                                 Text='<%# Bind("item_value2") %>' />
                             <br />item_param3:
                             <asp:TextBox ID="item_param3TextBox" runat="server" 
                                 Text='<%# Bind("item_param3") %>' />
                             <br />item_value3:
                             <asp:TextBox ID="item_value3TextBox" runat="server" 
                                 Text='<%# Bind("item_value3") %>' />
                             <br />item_param4:
                             <asp:TextBox ID="item_param4TextBox" runat="server" 
                                 Text='<%# Bind("item_param4") %>' />
                             <br />item_value4:
                             <asp:TextBox ID="item_value4TextBox" runat="server" 
                                 Text='<%# Bind("item_value4") %>' />
                             <br />item_param5:
                             <asp:TextBox ID="item_param5TextBox" runat="server" 
                                 Text='<%# Bind("item_param5") %>' />
                             <br />item_value5:
                             <asp:TextBox ID="item_value5TextBox" runat="server" 
                                 Text='<%# Bind("item_value5") %>' />
                             <br />item_isbuying:
                             <asp:TextBox ID="item_isbuyingTextBox" runat="server" 
                                 Text='<%# Bind("item_isbuying") %>' />
                             <br />item_islocked:
                             <asp:TextBox ID="item_islockedTextBox" runat="server" 
                                 Text='<%# Bind("item_islocked") %>' />
                             <br />item_icon:
                             <asp:TextBox ID="item_iconTextBox" runat="server" 
                                 Text='<%# Bind("item_icon") %>' />
                             <br />item_username:
                             <asp:TextBox ID="item_usernameTextBox" runat="server" 
                                 Text='<%# Bind("item_username") %>' />
                             <br />item_equip:
                             <asp:TextBox ID="item_equipTextBox" runat="server" 
                                 Text='<%# Bind("item_equip") %>' />
                             <br />item_type:
                             <asp:TextBox ID="item_typeTextBox" runat="server" 
                                 Text='<%# Bind("item_type") %>' />
                             <br />item_rarity:
                             <asp:TextBox ID="item_rarityTextBox" runat="server" 
                                 Text='<%# Bind("item_rarity") %>' />
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
                     <EmptyItemTemplate>
<td runat="server" />
                     </EmptyItemTemplate>
                     <GroupTemplate>
                         <tr ID="itemPlaceholderContainer" runat="server">
                             <td ID="itemPlaceholder" runat="server">
                             </td>
                         </tr>
                     </GroupTemplate>
                     <InsertItemTemplate>
                         <td runat="server" style="">
                             UserName:
                             <asp:TextBox ID="UserNameTextBox" runat="server" 
                                 Text='<%# Bind("UserName") %>' />
                             <br />ItemId:
                             <asp:TextBox ID="ItemIdTextBox" runat="server" Text='<%# Bind("ItemId") %>' />
                             <br />item_name:
                             <asp:TextBox ID="item_nameTextBox" runat="server" 
                                 Text='<%# Bind("item_name") %>' />
                             <br />item_description:
                             <asp:TextBox ID="item_descriptionTextBox" runat="server" 
                                 Text='<%# Bind("item_description") %>' />
                             <br />item_level:
                             <asp:TextBox ID="item_levelTextBox" runat="server" 
                                 Text='<%# Bind("item_level") %>' />
                             <br />item_require_level:
                             <asp:TextBox ID="item_require_levelTextBox" runat="server" 
                                 Text='<%# Bind("item_require_level") %>' />
                             <br />item_param1:
                             <asp:TextBox ID="item_param1TextBox" runat="server" 
                                 Text='<%# Bind("item_param1") %>' />
                             <br />item_value1:
                             <asp:TextBox ID="item_value1TextBox" runat="server" 
                                 Text='<%# Bind("item_value1") %>' />
                             <br />item_param2:
                             <asp:TextBox ID="item_param2TextBox" runat="server" 
                                 Text='<%# Bind("item_param2") %>' />
                             <br />item_value2:
                             <asp:TextBox ID="item_value2TextBox" runat="server" 
                                 Text='<%# Bind("item_value2") %>' />
                             <br />item_param3:
                             <asp:TextBox ID="item_param3TextBox" runat="server" 
                                 Text='<%# Bind("item_param3") %>' />
                             <br />item_value3:
                             <asp:TextBox ID="item_value3TextBox" runat="server" 
                                 Text='<%# Bind("item_value3") %>' />
                             <br />item_param4:
                             <asp:TextBox ID="item_param4TextBox" runat="server" 
                                 Text='<%# Bind("item_param4") %>' />
                             <br />item_value4:
                             <asp:TextBox ID="item_value4TextBox" runat="server" 
                                 Text='<%# Bind("item_value4") %>' />
                             <br />item_param5:
                             <asp:TextBox ID="item_param5TextBox" runat="server" 
                                 Text='<%# Bind("item_param5") %>' />
                             <br />item_value5:
                             <asp:TextBox ID="item_value5TextBox" runat="server" 
                                 Text='<%# Bind("item_value5") %>' />
                             <br />item_isbuying:
                             <asp:TextBox ID="item_isbuyingTextBox" runat="server" 
                                 Text='<%# Bind("item_isbuying") %>' />
                             <br />item_islocked:
                             <asp:TextBox ID="item_islockedTextBox" runat="server" 
                                 Text='<%# Bind("item_islocked") %>' />
                             <br />item_icon:
                             <asp:TextBox ID="item_iconTextBox" runat="server" 
                                 Text='<%# Bind("item_icon") %>' />
                             <br />item_username:
                             <asp:TextBox ID="item_usernameTextBox" runat="server" 
                                 Text='<%# Bind("item_username") %>' />
                             <br />item_equip:
                             <asp:TextBox ID="item_equipTextBox" runat="server" 
                                 Text='<%# Bind("item_equip") %>' />
                             <br />item_type:
                             <asp:TextBox ID="item_typeTextBox" runat="server" 
                                 Text='<%# Bind("item_type") %>' />
                             <br />item_rarity:
                             <asp:TextBox ID="item_rarityTextBox" runat="server" 
                                 Text='<%# Bind("item_rarity") %>' />
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
                             <asp:ImageButton ID="imgItem1" runat="server" Height="80px" 
                                 ImageUrl='<%# Eval("item_icon") %>' Width="80px" />
                             <br />
                             <asp:Label ID="lbItemId" runat="server" Text='<%# Eval("ItemId") %>' 
                                 Visible="False"></asp:Label>
                             <br />
                         </td>
                     </ItemTemplate>
                     <LayoutTemplate>
                         <table runat="server">
                             <tr runat="server">
                                 <td runat="server" style="width: 207px">
                                     <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                         <tr ID="groupPlaceholder" runat="server">
                                         </tr>
                                     </table>
                                 </td>
                             </tr>
                             <tr runat="server">
                                 <td runat="server" style="width: 207px">
                                     <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                         <Fields>
                                             <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                 ShowLastPageButton="True" />
                                         </Fields>
                                     </asp:DataPager>
                                 </td>
                             </tr>
                         </table>
                     </LayoutTemplate>
                     <SelectedItemTemplate>
                         <td runat="server" style="">
                             UserName:
                             <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                             <br />ItemId:
                             <asp:Label ID="ItemIdLabel" runat="server" Text='<%# Eval("ItemId") %>' />
                             <br />ID:
                             <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                             <br />item_name:
                             <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                             <br />item_description:
                             <asp:Label ID="item_descriptionLabel" runat="server" 
                                 Text='<%# Eval("item_description") %>' />
                             <br />item_level:
                             <asp:Label ID="item_levelLabel" runat="server" 
                                 Text='<%# Eval("item_level") %>' />
                             <br />item_require_level:
                             <asp:Label ID="item_require_levelLabel" runat="server" 
                                 Text='<%# Eval("item_require_level") %>' />
                             <br />item_param1:
                             <asp:Label ID="item_param1Label" runat="server" 
                                 Text='<%# Eval("item_param1") %>' />
                             <br />item_value1:
                             <asp:Label ID="item_value1Label" runat="server" 
                                 Text='<%# Eval("item_value1") %>' />
                             <br />item_param2:
                             <asp:Label ID="item_param2Label" runat="server" 
                                 Text='<%# Eval("item_param2") %>' />
                             <br />item_value2:
                             <asp:Label ID="item_value2Label" runat="server" 
                                 Text='<%# Eval("item_value2") %>' />
                             <br />item_param3:
                             <asp:Label ID="item_param3Label" runat="server" 
                                 Text='<%# Eval("item_param3") %>' />
                             <br />item_value3:
                             <asp:Label ID="item_value3Label" runat="server" 
                                 Text='<%# Eval("item_value3") %>' />
                             <br />item_param4:
                             <asp:Label ID="item_param4Label" runat="server" 
                                 Text='<%# Eval("item_param4") %>' />
                             <br />item_value4:
                             <asp:Label ID="item_value4Label" runat="server" 
                                 Text='<%# Eval("item_value4") %>' />
                             <br />item_param5:
                             <asp:Label ID="item_param5Label" runat="server" 
                                 Text='<%# Eval("item_param5") %>' />
                             <br />item_value5:
                             <asp:Label ID="item_value5Label" runat="server" 
                                 Text='<%# Eval("item_value5") %>' />
                             <br />item_isbuying:
                             <asp:Label ID="item_isbuyingLabel" runat="server" 
                                 Text='<%# Eval("item_isbuying") %>' />
                             <br />item_islocked:
                             <asp:Label ID="item_islockedLabel" runat="server" 
                                 Text='<%# Eval("item_islocked") %>' />
                             <br />item_icon:
                             <asp:Label ID="item_iconLabel" runat="server" Text='<%# Eval("item_icon") %>' />
                             <br />item_username:
                             <asp:Label ID="item_usernameLabel" runat="server" 
                                 Text='<%# Eval("item_username") %>' />
                             <br />item_equip:
                             <asp:Label ID="item_equipLabel" runat="server" 
                                 Text='<%# Eval("item_equip") %>' />
                             <br />item_type:
                             <asp:Label ID="item_typeLabel" runat="server" Text='<%# Eval("item_type") %>' />
                             <br />item_rarity:
                             <asp:Label ID="item_rarityLabel" runat="server" 
                                 Text='<%# Eval("item_rarity") %>' />
                             <br />
                         </td>
                     </SelectedItemTemplate>
                 </asp:ListView>
                 <br />
                 <br />
            </td>
        </tr>
    </table>
       
</asp:Content>

