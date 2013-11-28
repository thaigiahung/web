<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nhaplieu.aspx.cs" Inherits="nhaplieu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Button ID="Button1" runat="server" Text="Nhập liệu" 
            onclick="Button1_Click" />
        <br />
        <asp:Label ID="lbTB" runat="server" Font-Bold="True" Font-Size="Larger" 
            ForeColor="#006600"></asp:Label>
    </div>
    </form>
</body>
</html>
