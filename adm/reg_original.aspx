<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="reg_original.aspx.cs" Inherits="adm_reg_original" %>

<%@ Register src="UC_insert_original.ascx" tagname="UC_insert_original" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc1:UC_insert_original ID="UC_insert_original1" runat="server" />
</asp:Content>

