<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="adm_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
    <ul class="nav nav-tabs nav-stacked main-menu">
		<li class="active"><a href="account.aspx"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Tài khoản</span></a></li>	
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    
    <asp:GridView ID="gvAccount" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" 
        DataSourceID="sqlAccount" ForeColor="#333333" GridLines="None" 
        Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                SortExpression="username" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="sqlAccount" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
        DeleteCommand="DELETE FROM [account] WHERE [username] = @username" 
        InsertCommand="INSERT INTO [account] ([ID], [username], [password], [email], [name], [phone], [idcard], [status], [fail_login], [date_lock], [ip], [role]) VALUES (@ID, @username, @password, @email, @name, @phone, @idcard, @status, @fail_login, @date_lock, @ip, @role)" 
        SelectCommand="SELECT * FROM [account]" 
        UpdateCommand="UPDATE [account] SET [ID] = @ID, [password] = @password, [email] = @email, [name] = @name, [phone] = @phone, [idcard] = @idcard, [status] = @status, [fail_login] = @fail_login, [date_lock] = @date_lock, [ip] = @ip, [role] = @role WHERE [username] = @username">
        <DeleteParameters>
            <asp:Parameter Name="username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Object" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="idcard" Type="String" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="fail_login" Type="Int32" />
            <asp:Parameter Name="date_lock" Type="DateTime" />
            <asp:Parameter Name="ip" Type="String" />
            <asp:Parameter Name="role" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Object" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="idcard" Type="String" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="fail_login" Type="Int32" />
            <asp:Parameter Name="date_lock" Type="DateTime" />
            <asp:Parameter Name="ip" Type="String" />
            <asp:Parameter Name="role" Type="Byte" />
            <asp:Parameter Name="username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Tên đăng nhập&nbsp;</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mật khẩu</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Họ tên</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Loại tài khoản</td>
            <td>
                :</td>
            <td>
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem Selected="True" Value="0">Người dùng</asp:ListItem>
                    <asp:ListItem Value="1">Quản trị</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button class="btn btn-primary" ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Tạo" />
            </td>
        </tr>
    </table>
    
</asp:Content>

