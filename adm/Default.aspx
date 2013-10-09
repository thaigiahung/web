<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="adm_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
    <ul class="nav nav-tabs nav-stacked main-menu">
		<li class="active"><a href="login.aspx"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
		<li><a href="./infrastructure.html"><i class="fa-icon-hdd"></i><span class="hidden-tablet"> Infrastructure</span></a></li>
		<li><a href="./messages.html"><i class="fa-icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>
		<li><a href="./tasks.html"><i class="fa-icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>
		<li><a href="./ui.html"><i class="fa-icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
		<li><a href="./widgets.html"><i class="fa-icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>
		<li><a href="./form.html"><i class="fa-icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
		<li><a href="./chart.html"><i class="fa-icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
		<li><a href="./typography.html"><i class="fa-icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
		<li><a href="./gallery.html"><i class="fa-icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
		<li><a href="./table.html"><i class="fa-icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
		<li><a href="./calendar.html"><i class="fa-icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
		<li><a href="./file-manager.html"><i class="fa-icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
		<li><a href="./icon.html"><i class="fa-icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
		<li><a href="./login.html"><i class="fa-icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    Nội dung
</asp:Content>

