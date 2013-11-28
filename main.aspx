<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .hpMarket
        {
            background:transparent;
            position: absolute;
            bottom: 50px;
            left: 150px; 
        }
        
        .hpMap
        {
            background:transparent;
            position: absolute;
            bottom: 50px;
            right: 150px; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <img src="resources/img/map/sunset.jpg" />
    </div>
    
    <asp:HyperLink ID="hpMarket" CssClass="hpMarket" NavigateUrl="~/tuido.aspx" ImageUrl="~/resources/img/map/Cho.png" ToolTip="Nhà Kho" runat="server">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="hpMap" CssClass="hpMap" NavigateUrl="~/map.aspx" ImageUrl="~/resources/img/map/Nut_1.png" ToolTip="Luyện công" runat="server">HyperLink</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

