<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="reg_monster.aspx.cs" Inherits="adm_reg_monster" %>

<%@ Register src="UC_reg_monster.ascx" tagname="UC_reg_monster" tagprefix="uc1" %>

<%@ Register src="UC_insertmonster.ascx" tagname="UC_insertmonster" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    
    <uc2:UC_insertmonster ID="UC_insertmonster1" runat="server" />
    
</asp:Content>

