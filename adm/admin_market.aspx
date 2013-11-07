<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_market.aspx.cs" Inherits="adm_admin_market" %>

<%@ Register src="UC_Market.ascx" tagname="UC_Market" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc1:UC_Market ID="UC_Market1" runat="server" />
</asp:Content>

