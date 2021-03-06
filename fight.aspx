﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fight.aspx.cs" Inherits="fight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">--%>
    <style>
        .fire 
        {
            text-align: center;
            margin: 200px auto;
            font-family: "League-Gothic", Courier;
            font-size: 20px;
            color: white;
            text-shadow: 0 0 20px #000000, 10px -10px 30px #feec85, -20px -20px 40px #FF9900, 20px -40px 50px #FF7900, -20px -60px 60px #cd4606, 0 -80px 70px #973716, 10px -90px 80px #42261D;
        }
        .attack
        {
            position: absolute;
        }
    </style>
    <%--<script>
        $(function () {
            $("#progressbarHero").progressbar({
//                value: $j("#<%=lbHeroHP.ClientID %>").val() / $j("#<%=lbFullHeroHP.ClientID %>").val()
                value: 100
            });
        });
  </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbflag" runat="server" Text="0" Visible="False"></asp:Label>
    <asp:Label ID="lbmark" runat="server" Text="0" Visible="False"></asp:Label>
    <asp:Label ID="UHP" runat="server" Text="" Visible="False"></asp:Label>
    <asp:Label ID="MHP" runat="server" Text="" Visible="False"></asp:Label>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
    
    
    <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="2000" 
            ontick="Timer1_Tick"></asp:Timer>
        <table align="center" style="width: 800px" runat="server">
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" align="center" style="background-color:Black" rowspan="2">
                
                    <asp:Label ID="lbHeroName" runat="server" CssClass="fire"></asp:Label>
                    
            </td>
            <td rowspan="3" valign="middle" align="center" 
                style="width: 191px; font-family: Gungsuh; font-weight: bold; color: #930000; font-size: x-large;">VS.</td>
            <td colspan="2" align="center" style="background-color:Black" rowspan="2">
                <asp:Label ID="lbMonsterName" runat="server" CssClass="fire"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" align="center">
                <asp:Label ID="lbHeroLv" runat="server" Text="Label"></asp:Label>
            </td>
            <td colspan="2" align="center">
                <asp:Label ID="lbMonsterLv" runat="server" Text="Label"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                Damage:<asp:Label ID="lbHeroDamage" runat="server" Text="Label"></asp:Label>
                <br />
                Defend: <asp:Label ID="lbHeroDefend" runat="server" Text="Label" ></asp:Label>
            </td>
            <td style="width: 200px">
                <asp:Image ID="damageHero"  runat="server" 
                    ImageUrl="~/resources/img/animation/attack.gif" CssClass="attack" 
                    Visible="false" />
                <asp:Image ID="ImgHero" runat="server" Height="200px" />
            </td>
            <td align="center">
                <asp:Button ID="btnFightAgain" runat="server" onclick="btnFightAgain_Click" 
                    Text="Đánh tiếp" Visible="False" />
                <asp:Button ID="btnFight" runat="server" Text="Đánh" Width="70px" 
                    onclick="btnFight_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Rút lui" Width="70px" 
                    onclick="btnCancel_Click" />
            </td>
            <td style="width: 200px">
                <asp:Image ID="damageMonster"  runat="server" 
                    ImageUrl="~/resources/img/animation/attack.gif" CssClass="attack" 
                    Visible="false" />
                <asp:Image ID="ImgMonster" runat="server" Height="200px" />
            </td>
            <td>
                Damage: <asp:Label ID="lbMonsterDamage" runat="server" Text="Label"></asp:Label>
                <br />
                Defend: <asp:Label ID="lbMonsterDefend" runat="server" Text="Label"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>
                
                <asp:Label ID="lbHeroHP" runat="server" Text="Label"></asp:Label>
                &nbsp;/
                <asp:Label ID="lbFullHeroHP" runat="server" Text="Label"></asp:Label>
            </td>
            <td></td>
            <td>
                <asp:Label ID="lbMonsterHP" runat="server" Text="Label"></asp:Label>
                &nbsp;/
                <asp:Label ID="lbFullMonsterHP" runat="server" Text="Label"></asp:Label>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td colspan="3">
                <asp:Label ID="messagelv" runat="server" ForeColor="#CC0000"></asp:Label>
                <br />
                <asp:Label ID="messagereward" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
            <td></td>
            <td></td>
        </tr>
            

    </table>
   </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnFight" EventName="Click" />
        </Triggers>
   </asp:UpdatePanel>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

