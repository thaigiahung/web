<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language="javascript" type="text/javascript">
        var $j = jQuery.noConflict();
        $j(document).ready(function () {
            $j("#<%=txtUN.ClientID %>").blur(function () {
                $j.ajax({
                    type: "POST",
                    url: "CheckUserName.aspx/CheckUN",
                    data: "{'UserName':'" + $j("#<%=txtUN.ClientID %>").val() + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (message) {
                        if (message.d == false) {
                            $j("#checkReturnUserName").css({
                                "color": "red",
                                "font-weight": "bold",
                                "font-size": "small",
                                "padding-left": "5px"
                            });
                            $j("#checkReturnUserName").text("Username đã tồn tại");
                            // Ẩn Nút Submit nếu UserName không hợp lệ
                            
                        }
                        else {
                            $j("#checkReturnUserName").css({
                                "color": "green",
                                "font-weight": "bold",
                                "font-size": "small",
                                "padding-left": "5px"
                            });

                            $j("#checkReturnUserName").text("UserName này chưa có. Bạn có thể sử dụng")
                        }
                    },
                    error: function (errormessage) {
                        //Hiển thị lỗi nếu xảy ra
                        $j("#checkReturnUserName").text(errormessage.responseText);
                    }
                });
            });
        });
    </script>
    <script language="javascript" type="text/javascript">
        var $j = jQuery.noConflict();
        $j(document).ready(function () {
            $j("#<%=txtEmail.ClientID %>").blur(function () {
                $j.ajax({
                    type: "POST",
                    url: "CheckUserName.aspx/checkEmail",
                    data: "{'Email':'" + $j("#<%=txtEmail.ClientID %>").val() + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (message) {
                        if (message.d == false) {
                            $j("#checkReturnEmail").css({
                                "color": "red",
                                "font-weight": "bold",
                                "font-size": "small",
                                "padding-left": "5px"
                            });
                            $j("#checkReturnEmail").text("Email này đã được đăng kí");
                            

                        }
                        else {
                            $j("#checkReturnEmail").css({
                                "color": "green",
                                "font-weight": "bold",
                                "font-size": "small",
                                "padding-left": "5px"
                            });

                            $j("#checkReturnEmail").text("Bạn có thể dùng email này")
                        }
                    },
                    error: function (errormessage) {
                        //Hiển thị lỗi nếu xảy ra
                        $j("#checkReturnEmail").text(errormessage.responseText);
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table align="center">
   
        <tr>
            <td></td>
            <td></td>
            <td width="200"></td>
        </tr>
        <tr>
            <td width="200" align="right">Tên đăng nhập: </td>
            <td>
                <asp:TextBox ID="txtUN" runat="server"  width="200" MaxLength="20"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUN" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                <span id="checkReturnUserName"></span></td>
        </tr>
        <tr>
            <td  align="right">Mật khẩu: </td>
            <td>
                <asp:TextBox ID="txtPW" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPW" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  align="right">Nhập lại mật khẩu: </td>
            <td>
                <asp:TextBox ID="TXTRePW" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPW" ControlToValidate="TXTRePW" 
                    ErrorMessage="Mật khẩu nhập lại không chính xác" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" >Email: </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Không được để trống" ForeColor="Red" 
                    ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <span id="checkReturnEmail"></span></td>
        </tr>
        <tr>
            <td colspan="3" align="center">--------------------------------------------</td>
            
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
        <tr>
            <td>
                </td>
            <td><asp:Button ID="btnSubmit" runat="server" Text="Đăng Kí" 
                    onclick="btnSubmit_Click" /></td>
            <td></td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

