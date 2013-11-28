<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTrangChoiGame.master" AutoEventWireup="true" CodeFile="market.aspx.cs" Inherits="market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

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
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
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
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/market.aspx?act=buy&id=" + Eval("ID") %>' Font-Size="Larger" ForeColor="Maroon" Font-Bold="True">Mua</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
            
            SelectCommand="SELECT s.ID, s.shop_item_id, s.shop_item_price, i.ID AS Expr1, i.item_name, i.item_level, i.item_icon, i.item_description, i.item_type, i.item_param1, i.item_value1, i.item_param2, i.item_value2, i.item_param3, i.item_value3, i.item_param4, i.item_value4, i.item_param5, i.item_value5 FROM shop AS s INNER JOIN original_item AS i ON s.shop_item_id = i.ID where i.item_type = @Param1">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="Param1" SessionField="ShopType" />
            </SelectParameters>
        </asp:SqlDataSource>
    </tbody>
</table>
    <div align="center">
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" 
            PageSize="6">
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

</asp:Content>

