<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_itemevent.aspx.cs" Inherits="adm_admin_itemevent" %>

<%@ Register src="UC_ItemEvent.ascx" tagname="UC_ItemEvent" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc1:UC_ItemEvent ID="UC_ItemEvent1" runat="server" />
</asp:Content>

