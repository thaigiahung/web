<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTrangChoiGame.master" AutoEventWireup="true" CodeFile="TuiDo.aspx.cs" Inherits="TuiDo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <link rel="stylesheet" type="text/css" media="screen" href="popup/css/popup.css" />
<script type="text/javascript" src="popup/js/jquery.1.7.2.js"></script>
<script type="text/javascript" src="popup/js/jquery.popup.min.js"></script>
<script type="text/javascript" language="JavaScript">
    $(function () {
        /* khởi tạo popup */
        $('input[rel*=shoponline]').showPopup({
            top: 10, //khoảng cách popup cách so với phía trên
            closeButton: ".close_popup", //khai báo nút close cho popup
            scroll: false, //cho phép scroll khi mở popup, mặc định là không cho phép
            onClose: function () {
                //sự kiện cho phép gọi sau khi đóng popup, cho phép chúng ta gọi 1 số sự kiện khi đóng popup, bạn có thể để null ở đây
            }
        });
    });
</script>
<style>
    #Table2 thead
    {
        background-color: Black;
        color: White;
    }
    
    #Table2 thead td
    {
        font-size: 15px;
        font-weight: bold;   
    }
    
    #Table2 td
    {
        padding: 7px;
    }
    
    #Table2 tbody td
    {
        border-bottom: 1px dashed black;
    }
    
    #Table2 tbody tr:hover
    {
        background: #d3d3d3;
    }
</style>
    <table class="default-1-1" >
        <tr>
            <td valign=top >
                <%--<asp:DataList ID="DataList1" runat="server" DataKeyField="ID" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>   
                    </ItemTemplate>
                </asp:DataList>--%>

                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <table class="default-1-1">
                            <tr>
                                <td rowspan="3" >
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("char_skin") %>' Height="100%" />
                                </td>

                                <td valign=top style="border-right-style:solid; border-top-style:solid">
                                    <br />
                                    <strong style="font-size: large">Tên:</strong> 
                                    <asp:Label ID="lbName" runat="server" Text='<%# Eval("username") %>' Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                    <strong style="font-size: large">Cấp:</strong> 
                                    <asp:Label ID="lbLevel" runat="server" Text='<%# Eval("char_level") %>' Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                    <strong style="font-size: large">Năng lượng:</strong> 
                                    <asp:Label ID="lbEnergy" runat="server" Text='<%# Eval("char_energy") %>' Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                    <strong style="font-size: large">Kinh nghiệm:</strong> 
                                    <asp:Label ID="lbExp" runat="server" Text='<%# Eval("char_exp") %>' Font-Size="Large"></asp:Label><strong style="font-size: large">/</strong><asp:Label ID="lbExpMax"
                                        runat="server" Text='<%# Eval("char_require_exp") %>' Font-Size="Large"></asp:Label>
                                        <br />
                                        <br />
                                </td>
                            </tr>
                            <tr>
                                <td valign=top style=" border-top-style:solid; border-right-style:solid">
                                <br />
                                <br />
                                <strong style="font-size: x-large; font-weight: bold; color: #FF0000"  >Chỉ số</strong>
                                <br /><br />
                                <strong style="font-size: large">Máu:</strong> 
                                    <asp:Label ID="lbHP" runat="server" Text='<%# Eval("char_hp") %>' 
                                        Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                <strong style="font-size: large">Sức đánh:</strong> 
                                    <asp:Label ID="lbDamage" runat="server" Text='<%# Eval("char_damage") %>' 
                                        Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                <strong style="font-size: large">Sức đỡ:</strong> 
                                    <asp:Label ID="lbDefence" runat="server" Text='<%# Eval("char_defend") %>' 
                                        Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                <strong style="font-size: large">Tiền:</strong> 
                                    <asp:Label ID="lbMoney" runat="server" Text='<%# Eval("char_money") %>' 
                                        Font-Size="Large"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td valign=top style=" border-top-style:solid; padding-left:20px; ; border-right-style:solid;border-bottom-style:solid; padding-top:20px;" >
                                
                                    <asp:ImageButton ID="imgBag" runat="server" 
                                        ImageUrl="~/resources/img/GoldBag.png"  Height="100" Width="100" 
                                         PostBackUrl="~/TuiDo.aspx" />
                                    </td>
                            </tr>
                            <tr>
                                <td valign=top style=" border-top-style:solid; padding-left:20px; ; border-right-style:solid;border-bottom-style:solid; padding-top:20px;" >
                                    <input type="button" id="open_popup" name="open_popup" rel="shoponline" href="#popup_shop" value="Cửa hàng"/>
                                    <asp:Button ID="Button1" PostBackUrl="~/main.aspx" runat="server" Text="Thành chính" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
                    
                    SelectCommand="SELECT character.ID, character.username, character.char_name, character.char_level, character.char_exp, character.char_energy, character.char_damage, character.char_defend, character.char_critical, character.char_hp, character.char_clan_id, character.char_money, character.char_friend_list, character.char_position, character.char_item_equipment_helm, character.char_item_equipment_armor, character.char_item_equipment_gloves, character.char_item_equipment_weapon, character.char_item_equipment_shield, character.char_item_equipment_boots, character.char_baggage_event, character.char_baggage_quest, character.char_baggage, character.char_cash, character.char_title, character.char_avatar, character.char_kill, character.char_skin, char_level.char_require_exp FROM character INNER JOIN char_level ON character.char_level = char_level.char_level WHERE (character.username = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="User" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
            <td width="60%"  >
                <table>
                    <tr>
                        <td height="70%">
                            <table style="width:100%;">
                                <tr>
                                    <td style="text-align: center; font-size: medium"><b>Nón</b></td>
                                    <td style="text-align: center; font-size: medium;"><b>Áo</b></td>
                                    <td style="text-align: center; font-size: medium;"><b>Giày</b></td>
                                    <td style="text-align: center; font-size: medium;"><b>Bao tay</b></td>
                                    <td style="text-align: center; font-size: medium;"><b>Vũ khí</b></td>
                                    <td style="text-align: center; font-size: medium;"><b>Khiên</b></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="btnHelmet" runat="server" 
                                            ImageUrl="~/resources/img/item/helmet.gif" onclick="btnHelmet_Click" Width="50px"/>
                                    </td>
                                    <td>
                                        :<asp:ImageButton ID="btnArmor" runat="server" 
                                            ImageUrl="~/resources/img/item/armor.gif" onclick="btnArmor_Click" Width="50px"/>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="btnBoots" runat="server" 
                                            ImageUrl="~/resources/img/item/boots.gif" onclick="btnBoots_Click" Width="50px"/>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="btnGloves" runat="server" 
                                            ImageUrl="~/resources/img/item/gloves.gif" onclick="btnGloves_Click" Width="50px"/>    
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="btnWeapon" runat="server" 
                                            ImageUrl="~/resources/img/item/weapon.gif" onclick="btnWeapon_Click" Width="50px"/>    
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="btnShield" runat="server" 
                                            ImageUrl="~/resources/img/item/shield.gif" onclick="btnShield_Click" Width="50px"/> 
                                    </td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="30%">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
        
                                            SelectCommand="SELECT ID, item_name, item_description, item_level, item_require_level, item_param1, item_value1, item_param2, item_value2, item_param3, item_value3, item_param4, item_value4, item_param5, item_value5, item_isbuying, item_islocked, item_icon, item_username, item_equip, item_type, item_rarity FROM item WHERE (item_username = @user ) AND (item_equip = 0)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="user" SessionField="User" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <span style="font-size: medium"><strong>Túi đồ</strong></span>
                            <br />
                            
                             <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
                                 DataSourceID="SqlDataSource1" GroupItemCount="5" 
                                onitemcommand="ListView1_ItemCommand">
                                 <AlternatingItemTemplate>
                                     <td id="Td1" runat="server" style="">
                                        <asp:ImageButton ID="imgItem2" runat="server" Height="80px" ImageUrl='<%# Eval("item_icon") %>' Width="50px" CommandName="TrangBi2"
                                        ToolTip='<%# "Tên: " +  Eval("item_name") +"\n"+
                                                        "Mô tả: " +  Eval("item_description") +"\n"+
                                                        "Đánh: " +  Eval("item_value1") +"\n"+
                                                        "Đỡ: " +  Eval("item_value2") +"\n"+
                                                        "Máu: " +  Eval("item_value3") +"\n"
                                                 %>'
                                     />
                                         <br />
                                         <asp:Label ID="lbItemId2" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                         <asp:Label ID="lblItemType2" runat="server" Text='<%# Eval("item_type") %>' Visible="False"></asp:Label>
                                         <br /></td>
                                 </AlternatingItemTemplate>
                                 <EditItemTemplate>
                                     <td id="Td2" runat="server" style="">
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
                                     <table id="Table1" runat="server" style="">
                                         <tr>
                                             <td>
                                                 No data was returned.</td>
                                         </tr>
                                     </table>
                                 </EmptyDataTemplate>
                                 <EmptyItemTemplate>
            <td id="Td3" runat="server" />
                                 </EmptyItemTemplate>
                                 <GroupTemplate>
                                     <tr ID="itemPlaceholderContainer" runat="server">
                                         <td ID="itemPlaceholder" runat="server">
                                         </td>
                                     </tr>
                                 </GroupTemplate>
                                 <InsertItemTemplate>
                                     <td id="Td4" runat="server" style="">
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
                                     <td id="Td5" runat="server" style="">
                                         <asp:ImageButton ID="imgItem1" runat="server" Height="50px" 
                                             ImageUrl='<%# Eval("item_icon") %>' Width="50px" CommandName="TrangBi1" 
                                             ToolTip='<%# "Tên: " +  Eval("item_name") +"\n"+
                                                            "Mô tả: " +  Eval("item_description") +"\n"+
                                                            "Đánh: " +  Eval("item_value1") +"\n"+
                                                            "Đỡ: " +  Eval("item_value2") +"\n"+
                                                            "Máu: " +  Eval("item_value3") +"\n"
                                                    %>'  
                                         />
                                         <br />
                                         <asp:Label ID="lbItemId1" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                         <asp:Label ID="lblItemType1" runat="server" Text='<%# Eval("item_type") %>' Visible="False"></asp:Label>
                                         <br />
                                     </td>
                                 </ItemTemplate>
                                 <LayoutTemplate>
                                     <table id="Table2" runat="server">
                                         <tr id="Tr1" runat="server">
                                             <td id="Td6" runat="server" style="width: 207px">
                                                 <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                                     <tr ID="groupPlaceholder" runat="server">
                                                     </tr>
                                                 </table>
                                             </td>
                                         </tr>
                                         <tr id="Tr2" runat="server">
                                             <td id="Td7" runat="server" style="width: 207px">
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
                                     <td id="Td8" runat="server" style="">
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
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
<div id="popup_shop" class="popup">
	<div class="popup-header" align="center">
		<h2>Cửa hàng online</h2>
		<a class="close_popup" href="javascript:void(0)"></a>
		<p>Chuyên bán các trang bị hiện đại</p>
	</div>
	<div class="info_popup">
    Tài khoản: <asp:Label ID="lbName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label> - Vàng: <asp:Label ID="lbMoney" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label> - 
    <asp:HyperLink ID="HyperLink2" runat="server"  Font-Bold="True" 
        Font-Size="Large" ForeColor="Maroon" NavigateUrl="~/TuiDo.aspx">Túi đồ</asp:HyperLink>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="160" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="1">Nón</asp:ListItem>
                <asp:ListItem Value="2">Áo</asp:ListItem>
                <asp:ListItem Value="3">Bao tay</asp:ListItem>
                <asp:ListItem Value="4">Vũ khí</asp:ListItem>
                <asp:ListItem Value="5">Giày</asp:ListItem>
                <asp:ListItem Value="6">Khiêng</asp:ListItem>
            </asp:DropDownList>
<table cellpadding="0" cellspacing="0" border="0" id="Table2">
    <thead>
        <tr>
            <td width="100">Hình ảnh</td>
            <td width="150">Tên vật phẩm</td>
            <td width="450">Mô tả</td>
            <td width="150">Tính năng</td>
            <td width="100">Giá</td>
            <td width="200">Hành động</td>
        </tr>
    </thead>

    <tbody>
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <tr>
                    <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("item_icon") %>' /></td>
                    <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("item_name") %>'></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("item_description") %>'></asp:Label></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# "Công: " + Eval("item_value1") %>'></asp:Label><br />
                        <asp:Label ID="Label4" runat="server" Text='<%# "Thủ:  " + Eval("item_value2") %>'></asp:Label><br />
                        <asp:Label ID="Label5" runat="server" Text='<%# "Máu:  " + Eval("item_value3") %>'></asp:Label>
                    </td>
                    <td><asp:Label ID="Label6" runat="server" Text='<%# Eval("shop_item_price") %>'></asp:Label></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/TuiDo.aspx?act=buy&id=" + Eval("ID") %>' Font-Size="Larger" ForeColor="Maroon" Font-Bold="True">Mua</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
            
            SelectCommand="SELECT s.ID, s.shop_item_id, s.shop_item_price, i.ID AS Expr1, i.item_name, i.item_level, i.item_icon, i.item_description, i.item_type, i.item_param1, i.item_value1, i.item_param2, i.item_value2, i.item_param3, i.item_value3, i.item_param4, i.item_value4, i.item_param5, i.item_value5 FROM shop AS s INNER JOIN original_item AS i ON s.shop_item_id = i.ID where i.item_type = @Param1">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="Param1" SessionField="ShopType" />
            </SelectParameters>
        </asp:SqlDataSource>
    </tbody>
</table>
    <div align="center">
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView2" 
            PageSize="5">
            <Fields>
                <asp:NumericPagerField ButtonType="Button" NextPageText="Next" 
                    PreviousPageText="Pre" />
            </Fields>
        </asp:DataPager>
    </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="DataPager1" EventName="Load" />
            <asp:AsyncPostBackTrigger ControlID="DropDownList1" 
                EventName="SelectedIndexChanged" />
        </Triggers>
    </asp:UpdatePanel>
	</div>
</div>
</asp:Content>
