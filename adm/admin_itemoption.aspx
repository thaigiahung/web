<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_itemoption.aspx.cs" Inherits="adm_admin_itemoption" %>

<%@ Register src="UC_ItemOption.ascx" tagname="UC_ItemOption" tagprefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc2:UC_ItemOption ID="UC_ItemOption1" runat="server" />
</asp:Content>

