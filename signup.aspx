<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script language="javascript" type="text/javascript">
        var $j = jQuery.noConflict();
        function checkUN(src, args) {
            var isValid;
            $.ajax({
                type: "POST",
                url: "CheckUserName.aspx/checkUN",
                data: "{'UserName':'" + $j("#<%=txtUN.ClientID %>").val() + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (msg) {
                    isValid = msg.d;
                }
            });
            args.IsValid = isValid;
        }
    </script>
    
    <script language="javascript" type="text/javascript">
        var $j = jQuery.noConflict();
        function checkEmail(src, args) {
            var isValid;
            $.ajax({
                type: "POST",
                url: "CheckUserName.aspx/checkEmail",
                data: "{'Email':'" + $j("#<%=txtEmail.ClientID %>").val() + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (msg) {
                    isValid = msg.d;
                }
            });
            args.IsValid = isValid;
        }
    </script>

    <style type="text/css">
        .style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table align="center" width="800">
   
        <tr>
            <td width="200"></td>
            <td width="200"></td>
            <td width="400"></td>
        </tr>
        <tr>
            <td colspan="3" class="content-center"><h2><strong>ĐĂNG KÍ TÀI KHOẢN</strong></h2></td>
            
        </tr>
        <tr>
            <td width="100" align="right">Tên đăng nhập: </td>
            <td>
                <asp:TextBox ID="txtUN" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
            </td>
            <td align="left">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUN" ErrorMessage="Không được để trống" 
                    ForeColor="Red" Font-Bold="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator3" runat="server" 
                    Font-Bold="True" 
                    Font-Size="Small" ForeColor="Red"
                    ErrorMessage="Tài khoản tồn tại" ClientValidationFunction="checkUN" 
                    ControlToValidate="txtUN" Display="Dynamic" ValidateEmptyText="True"></asp:CustomValidator>
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
                    ForeColor="Red" Font-Bold="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
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
                    Font-Bold="True" Font-Size="Small" Display="Dynamic"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style1" >Email: </td>
            <td class="style1">
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox></td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Không được để trống" ForeColor="Red" 
                    ControlToValidate="txtEmail" Font-Bold="True" Font-Size="Small" 
                    Display="Dynamic"></asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ"  Font-Bold="True" 
                    Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="^.+@[^\.].*\.[a-z]{2,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email tồn tại" 
                    Font-Bold="True" 
                    Font-Size="Small" ForeColor="Red"
                    ClientValidationFunction="checkEmail" Display="Dynamic" 
                    ValidateEmptyText="True"></asp:CustomValidator>
                
                <%--<span id="checkReturnEmail"></span>
                --%>
                  

           </td>
        </tr>
        <tr>
            <td colspan="3" align="center">----------------------------------------------------------------------------------------------</td>
            
        </tr>
        <tr>
            <td align="right">Họ & tên: </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="200px" CausesValidation="True"></asp:TextBox></td>
            <td>
                <asp:CustomValidator ID="CustomValidator2" runat="server" 
                    
                    ErrorMessage="CustomValidator" 
                    ValidateEmptyText="True" ControlToValidate="txtName" Display="Dynamic"></asp:CustomValidator>
            </td>
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

