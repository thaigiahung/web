<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_itemeventoption.aspx.cs" Inherits="adm_admin_itemeventoption" %>

<%@ Register src="UC_ItemEventOption.ascx" tagname="UC_ItemEventOption" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc1:UC_ItemEventOption ID="UC_ItemEventOption1" runat="server" />
</asp:Content>

