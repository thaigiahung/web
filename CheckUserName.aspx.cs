using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Services;
using System.Web.UI.WebControls;
using System.Web.Script.Services;


public partial class CheckUserName : User
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public bool getuser(string un)
    {
        string username = un;
        account user = db.accounts.SingleOrDefault(n => n.username == username);
        if (user != null)
        {
            return false;

        }
        else return true;
    }
    [WebMethod]
    [ScriptMethod]
    public static bool CheckUN(string UserName)
    {
        bool check = false;
        CheckUserName user = new CheckUserName();
        check = user.getuser(UserName);
        return check;
    }
    public bool getEmail(string mail)
    {
        string email = mail;
        account user = db.accounts.SingleOrDefault(n => n.email == email);
        if (user != null)
        {
            return false;

        }
        else return true;
    }
    [WebMethod]
    [ScriptMethod]
    public static bool checkEmail(string Email)
    {
        bool check = false;
        CheckUserName user = new CheckUserName();
        check = user.getEmail(Email);
        return check;
    }
}

    
//<script language="javascript" type="text/javascript">
        
//        var $j = jQuery.noConflict();
//        $j(document).ready(function () {
//            $j("#<%=txtEmail.ClientID %>").blur(function () {
//                if ($j("#<%=txtEmail.ClientID %>").val() != "") {
//                    $j.ajax({
//                        type: "POST",
//                        url: "CheckUserName.aspx/checkEmail",
//                        data: "{'Email':'" + $j("#<%=txtEmail.ClientID %>").val() + "'}",
//                        contentType: "application/json; charset=utf-8",
//                        dataType: "json",
//                        success: function (message) {
//                            if (message.d == false) {
//                                $j("#checkReturnEmail").css({
//                                    "color": "red",
//                                    "font-weight": "bold",
//                                    "font-size": "small",
//                                    "padding-left": "5px"
//                                });
//                                $j("#checkReturnEmail").text("Email đã tồn tại");
                                
//                            }
//                            else {
//                                $j("#checkReturnEmail").css({
//                                    "color": "green",
//                                    "font-weight": "bold",
//                                    "font-size": "small",
//                                    "padding-left": "5px"
//                                });

//                                $j("#checkReturnEmail").text("OK");
//                                if ($j("#<%=RegularExpressionValidator1.ClientID %>") == "false")
//                                    $j("#checkReturnEmail").text("");
                                    
//                            }

//                        },
//                        error: function (errormessage) {
//                            //Hiển thị lỗi nếu xảy ra
//                            $j("#checkReturnEmail").text(errormessage.responseText);
//                        }
//                    });
//                }
//                else {
                    
//                    $j("#checkReturnEmail").text("");
                    
//                }
//            });
//        });
//    </script>

//<script language="javascript" type="text/javascript">
//        var $j = jQuery.noConflict();
//        $j(document).ready(function () {
//            $j("#<%=txtUN.ClientID %>").blur(function () {
//                if ($j("#<%=txtUN.ClientID %>").val() != "") {
//                    $j.ajax({
//                        type: "POST",
//                        url: "CheckUserName.aspx/CheckUN",
//                        data: "{'UserName':'" + $j("#<%=txtUN.ClientID %>").val() + "'}",
//                        contentType: "application/json; charset=utf-8",
//                        dataType: "json",
//                        success: function (message) {
//                            if (message.d == false) {
//                                $j("#checkReturnUserName").css({
//                                    "color": "red",
//                                    "font-weight": "bold",
//                                    "font-size": "small",
//                                    "padding-left": "5px"
//                                });
//                                $j("#checkReturnUserName").text("Tài khoản đã tồn tại");
                                

//                            }
//                            else {
//                                $j("#checkReturnUserName").css({
//                                    "color": "green",
//                                    "font-weight": "bold",
//                                    "font-size": "small",
//                                    "padding-left": "5px"
//                                });

//                                $j("#checkReturnUserName").text("OK");
                                
//                            }
//                        },
//                        error: function (errormessage) {
//                            //Hiển thị lỗi nếu xảy ra
//                            $j("#checkReturnUserName").text(errormessage.responseText);
//                        }
//                    });
//                }
//                else
//                    $j("#checkReturnUserName").text("");
//            });
//        });
//    </script>