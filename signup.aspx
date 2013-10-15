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

<table align="center" width="800">
   
        <tr>
            <td width="200"></td>
            <td width="200"></td>
            <td width="400"></td>
        </tr>
        <tr>
            <td width="100" align="right">Tên đăng nhập: </td>
            <td>
                <asp:TextBox ID="txtUN" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
            </td>
            <td align="left">
                <span id="checkReturnUserName"></span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUN" ErrorMessage="Không được để trống" 
                    ForeColor="Red" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td  align="right">Mật khẩu: </td>
            <td>
                <asp:TextBox ID="txtPW" runat="server" TextMode="Password" MaxLength="20" 
                    Width="200px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPW" ErrorMessage="Không được để trống" 
                    ForeColor="Red" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  align="right">Nhập lại mật khẩu: </td>
            <td>
                <asp:TextBox ID="TXTRePW" runat="server" TextMode="Password" MaxLength="20" 
                    Width="200px"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPW" ControlToValidate="TXTRePW" 
                    ErrorMessage="Mật khẩu nhập lại không chính xác" ForeColor="Red" 
                    Font-Bold="True" Font-Size="Small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" >Email: </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox></td>
            <td><span id="checkReturnEmail"></span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Không được để trống" ForeColor="Red" 
                    ControlToValidate="txtEmail" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" Font-Bold="True" 
                    Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="^.+@[^\.].*\.[a-z]{2,}$"></asp:RegularExpressionValidator>

           </td>
        </tr>
        <tr>
            <td colspan="3" align="center">----------------------------------------------------------------------------------------------</td>
            
        </tr>
        <tr>
            <td align="right">Họ & tên: </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td align="right">Số điện thoại: </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td align="right">Số CMND</td>
            <td>
                <asp:TextBox ID="txtIDCard" runat="server" Width="200px"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnSubmit" runat="server" Text="Đăng Kí" 
                    onclick="btnSubmit_Click" /></td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

