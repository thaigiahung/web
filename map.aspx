<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .imgLv1_1
        {
            background:transparent;
            position: absolute;
            top: 570px;
            right: 150px;
            width: 50px;
            height:50px;        
        }
        .imgLv1_2
        {
            background:transparent;
            position: absolute;
            top: 550px;
            right: 260px;
            width: 50px;
            height:50px;     
        }
        .imgLv1_3
        {
            background:transparent;
            position: absolute;
            top: 500px;
            right: 320px;
            width: 50px;
            height:50px;   
        }
        .imgLv1_4
        {
            background:transparent;
            position: absolute;
            top: 410px;
            right: 120px;
            width: 50px;
            height:50px;  
        }
        
        
        
        .imgLv2_1
        {
            background:transparent;
            position: absolute;
            top: 380px;
            right: 300px; 
            width: 50px;
            height:50px;
        }
        .imgLv2_2
        {
            background:transparent;
            position: absolute;
            top: 350px;
            right: 360px; 
            width: 50px;
            height:50px;
        }
        .imgLv2_3
        {
            background:transparent;
            position: absolute;
            top: 300px;
            right: 320px;
            width: 50px;
            height:50px;
        }
        .imgLv2_4
        {
            background:transparent;
            position: absolute;
            top: 300px;
            right: 120px;
            width: 50px;
            height:50px;
        }
        
        
        
        .imgLv3_1
        {
            background:transparent;
            position: absolute;
            top: 150px;
            right: 190px; 
            width: 50px;
            height:50px;
        }
        .imgLv3_2
        {
            background:transparent;
            position: absolute;
            top: 140px;
            right: 100px; 
            width: 50px;
            height:50px;
        }
        .imgLv3_3
        {
            background:transparent;
            position: absolute;
            top: 60px;
            right: 120px; 
            width: 50px;
            height:50px;
        }
        .imgLv3_4
        {
            background:transparent;
            position: absolute;
            top: 60px;
            right: 280px;
            width: 50px;
            height:50px;
        }
        
        
        
        
        .imgLv4_1
        {
            background:transparent;
            position: absolute;
            top: 50px;
            right: 390px; 
            width: 50px;
            height:50px;
        }
        .imgLv4_2
        {
            background:transparent;
            position: absolute;
            top: 50px;
            right: 470px; 
            width: 50px;
            height:50px;
        }
        .imgLv4_3
        {
            background:transparent;
            position: absolute;
            top: 30px;
            right: 550px; 
            width: 50px;
            height:50px;
        }
        .imgLv4_4
        {
            background:transparent;
            position: absolute;
            top: 100px;
            right: 550px; 
            width: 50px;
            height:50px;
        }
        
        
        
        
        .imgLv5_1
        {
            background:transparent;
            position: absolute;
            top: 190px;
            left: 90px; 
            width: 50px;
            height:50px;
        }
        .imgLv5_2
        {
            background:transparent;
            position: absolute;
            top: 210px;
            left: 200px;  
            width: 50px;
            height:50px;
        }
        .imgLv5_3
        {
            background:transparent;
            position: absolute;
            top: 380px;
            left: 220px; 
            width: 50px;
            height:50px;
        }
        .imgLv5_4
        {
            background:transparent;
            position: absolute;
            top: 520px;
            left: 320px; 
            width: 50px;
            height:50px;
        }
        
        .imgLv6
        {
            opacity:0;
            filter:alpha(opacity=0);
            background:transparent;
            position: absolute;
            bottom: 80px;
            left: 180px; 
            width: 150px;
            height:90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <img src="resources/img/map/main.png" />
    </div>

    <%--LV 1--%>
    <asp:HyperLink ID="imgLv1_1" ImageUrl="~/resources/img/monsters/agon1.gif" CssClass="imgLv1_1" Visible="false" NavigateUrl="~/fight.aspx?id=1" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv1_2" ImageUrl="~/resources/img/monsters/chain_scorpion1.gif" CssClass="imgLv1_2" Visible="false" NavigateUrl="~/fight.aspx?id=6" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv1_3" ImageUrl="~/resources/img/monsters/cursed_lich1.gif" CssClass="imgLv1_3" Visible="false" NavigateUrl="~/fight.aspx?id=7" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv1_4" ImageUrl="~/resources/img/monsters/elite_bull_fighter1.gif" CssClass="imgLv1_4" Visible="false" NavigateUrl="~/fight.aspx?id=8" runat="server">HyperLink</asp:HyperLink>

    <%--LV 2--%>
    <asp:HyperLink ID="imgLv2_1" ImageUrl="~/resources/img/monsters/beetle_monster1.gif" CssClass="imgLv2_1" Visible="false" NavigateUrl="~/fight.aspx?id=2" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv2_2" ImageUrl="~/resources/img/monsters/elite_goblin1.gif" CssClass="imgLv2_2" Visible="false" NavigateUrl="~/fight.aspx?id=9" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv2_3" ImageUrl="~/resources/img/monsters/forest_monster1.gif" CssClass="imgLv2_3" Visible="false" NavigateUrl="~/fight.aspx?id=10" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv2_4" ImageUrl="~/resources/img/monsters/giant1.gif" CssClass="imgLv2_4" Visible="false" NavigateUrl="~/fight.aspx?id=11" runat="server">HyperLink</asp:HyperLink>

    <%--LV 3--%>
    <asp:HyperLink ID="imgLv3_1" ImageUrl="~/resources/img/monsters/budge_dragon1.gif" CssClass="imgLv3_1" Visible="false" NavigateUrl="~/fight.aspx?id=3" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv3_2" ImageUrl="~/resources/img/monsters/goblin1.gif" CssClass="imgLv3_2" Visible="false" NavigateUrl="~/fight.aspx?id=12" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv3_3" ImageUrl="~/resources/img/monsters/grizzly1.gif" CssClass="imgLv3_3" Visible="false" NavigateUrl="~/fight.aspx?id=13" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv3_4" ImageUrl="~/resources/img/monsters/hideous_rabbit1.gif" CssClass="imgLv3_4" Visible="false" NavigateUrl="~/fight.aspx?id=14" runat="server">HyperLink</asp:HyperLink>

    <%--LV 4--%>
    <asp:HyperLink ID="imgLv4_1" ImageUrl="~/resources/img/monsters/bull_fighter1.gif" CssClass="imgLv4_1" Visible="false" NavigateUrl="~/fight.aspx?id=4" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv4_2" ImageUrl="~/resources/img/monsters/hound1.gif" CssClass="imgLv4_2" Visible="false" NavigateUrl="~/fight.aspx?id=15" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv4_3" ImageUrl="~/resources/img/monsters/hunter1.gif" CssClass="imgLv4_3" Visible="false" NavigateUrl="~/fight.aspx?id=16" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv4_4" ImageUrl="~/resources/img/monsters/lich1.gif" CssClass="imgLv4_4" Visible="false" NavigateUrl="~/fight.aspx?id=17" runat="server">HyperLink</asp:HyperLink>

    <%--LV 5--%>
    <asp:HyperLink ID="imgLv5_1" ImageUrl="~/resources/img/monsters/captain_grizzly1.gif" CssClass="imgLv5_1" Visible="false" NavigateUrl="~/fight.aspx?id=5" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv5_2" ImageUrl="~/resources/img/monsters/polluted_butterfly1.gif" CssClass="imgLv5_2" Visible="false" NavigateUrl="~/fight.aspx?id=18" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv5_3" ImageUrl="~/resources/img/monsters/skeleton1.gif" CssClass="imgLv5_3" Visible="false" NavigateUrl="~/fight.aspx?id=18" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv5_4" ImageUrl="~/resources/img/monsters/spider1.gif" CssClass="imgLv5_4" Visible="false" NavigateUrl="~/fight.aspx?id=18" runat="server">HyperLink</asp:HyperLink>

    <asp:HyperLink ID="HyperLink1" ImageUrl="~/resources/img/monsters/spider1.gif" CssClass="imgLv6" NavigateUrl="~/main.aspx" ToolTip="Về thành" runat="server">HyperLink</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

