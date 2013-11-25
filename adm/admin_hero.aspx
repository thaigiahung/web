<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_hero.aspx.cs" Inherits="adm_admin_hero" %>

<%@ Register src="UC_Hero.ascx" tagname="UC_Hero" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc1:UC_Hero ID="UC_Hero1" runat="server" />
</asp:Content>

