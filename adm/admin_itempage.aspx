<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_itempage.aspx.cs" Inherits="adm_admin_itempage" %>


<%@ Register src="UC_ItemPage.ascx" tagname="UC_ItemPage" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc2:UC_ItemPage ID="UC_ItemPage1" runat="server" />
</asp:Content>

