<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="adm_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
    <ul class="nav nav-tabs nav-stacked main-menu">
		<li class="active"><a href="login.aspx"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    Nội dung
</asp:Content>

