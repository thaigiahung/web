<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="admin_monster.aspx.cs" Inherits="adm_admin_monster" %>

<%@ Register src="UC_Monster.ascx" tagname="UC_Monster" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <uc1:UC_Monster ID="UC_Monster1" runat="server" />
</asp:Content>

