<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="adm_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" src="/resources/js/jquery-1.4.2.min"></script>
    <script language="javascript">
        var $j = jQuery.noConflict();
        $j(document).ready(function () {
            $j("#<%=txtTenDangNhap.ClientID %>").blur(function () {
                $j.ajax({
                    type: "POST",
                    url: "CheckUserName.aspx/CheckUN",
                    data: "{'UserName':'" + $j("#<%=txtTenDangNhap.ClientID %>").val() + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (message) {
                        if (message.d == false) {
                            $j("#checkReturn").css({
                                "color": "red",
                                "font-weight": "bold",
                                "font-size": "small",
                                "padding-left": "5px"
                            });
                            $j("#checkReturn").text("Username này đã tồn tại");
                            // Ẩn Nút Submit nếu UserName không hợp lệ
                            $j("#btnSubmit").hide();
                        }
                        else {
                            $j("#checkReturn").css({
                                "color": "green",
                                "font-weight": "bold",
                                "font-size": "small",
                                "padding-left": "5px"
                            });
                            $j("#btnSubmit").show();
                            $j("#checkReturn").text("UserName này chưa có. Bạn có thể sử dụng")
                        }
                    },
                    error: function (errormessage) {
                        //Hiển thị lỗi nếu xảy ra
                        $j("#checkReturn").text(errormessage.responseText);
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     UserName: <asp:TextBox ID="txtTenDangNhap" runat="server" />
<span id="checkReturn"></span><br /> 
<asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    <table align="center">
   
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td width="200" align="right">Tên đăng nhập: </td>
            <td width="300">
                <asp:TextBox ID="txtUN" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:CustomValidator runat="server" 
                    ControlToValidate="txtUN" ErrorMessage="Tài khoản đã tồn tại" 
                    ></asp:CustomValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td  align="right">Mật khẩu: </td>
            <td>
                <asp:TextBox ID="txtPW" runat="server" TextMode="Password"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td  align="right">Nhập lại mật khẩu: </td>
            <td>
                <asp:TextBox ID="TXTRePW" runat="server" TextMode="Password"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td align="right" >Email: </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" AutoPostBack="True"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td></td>
        </tr>
        <tr>
            <td align="right">Họ & tên: </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td align="right">Số điện thoại: </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td align="right">Số CMND</td>
            <td>
                <asp:TextBox ID="txtIDCard" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

