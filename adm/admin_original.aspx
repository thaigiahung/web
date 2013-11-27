<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_original.aspx.cs" Inherits="adm_admin_original" %>

<%@ Register src="UC_Original_Item.ascx" tagname="UC_Original_Item" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc2:UC_Original_Item ID="UC_Original_Item1" runat="server" />
    </asp:Content>

