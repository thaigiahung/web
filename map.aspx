<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .imgLv1
        {
            position: absolute;
            top: 220px;
            left: 360px;
            width: 30px;
            height:30px;     
        }
        .imgLv2
        {
            position: absolute;
            top: 150px;
            left: 420px; 
            width: 30px;
            height:30px;    
        }
        .imgLv3
        {
            position: absolute;
            top: 250px;
            left: 420px;  
            width: 30px;
            height:30px;   
        }
        .imgLv4
        {
            position: absolute;
            top: 220px;
            left: 490px; 
            width: 30px;
            height:30px;    
        }
        .imgLv5
        {
            position: absolute;
            top: 200px;
            right: 260px; 
            width: 30px;
            height:30px;   
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <img src="resources/img/map/main.jpg" />
    </div>
    <asp:HyperLink ID="imgLv1" ImageUrl="~/resources/img/monsters/agon.gif" CssClass="imgLv1" Visible="false" NavigateUrl="~/fight.aspx?id=1" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv2" ImageUrl="~/resources/img/monsters/beetle_monster.gif" CssClass="imgLv2" Visible="false" NavigateUrl="~/fight.aspx?id=2" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv3" ImageUrl="~/resources/img/monsters/budge_dragon.gif" CssClass="imgLv3" Visible="false" NavigateUrl="~/fight.aspx?id=3" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv4" ImageUrl="~/resources/img/monsters/bull_fighter.gif" CssClass="imgLv4" Visible="false" NavigateUrl="~/fight.aspx?id=4" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="imgLv5" ImageUrl="~/resources/img/monsters/captain_grizzly.gif" CssClass="imgLv5" Visible="false" NavigateUrl="~/fight.aspx?id=5" runat="server">HyperLink</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

