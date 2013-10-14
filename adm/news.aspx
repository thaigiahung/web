<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="adm_news" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_menu" Runat="Server">
    <ul class="nav nav-tabs nav-stacked main-menu">
		<li class="active"><a href="login.aspx"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
		<li><a href="./infrastructure.html"><i class="fa-icon-hdd"></i><span class="hidden-tablet"> Infrastructure</span></a></li>
		<li><a href="./messages.html"><i class="fa-icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>
		<li><a href="./tasks.html"><i class="fa-icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>
		<li><a href="./ui.html"><i class="fa-icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
		<li><a href="./widgets.html"><i class="fa-icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>
		<li><a href="./form.html"><i class="fa-icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
		<li><a href="./chart.html"><i class="fa-icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
		<li><a href="./typography.html"><i class="fa-icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
		<li><a href="./gallery.html"><i class="fa-icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
		<li><a href="./table.html"><i class="fa-icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
		<li><a href="./calendar.html"><i class="fa-icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
		<li><a href="./file-manager.html"><i class="fa-icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
		<li><a href="./icon.html"><i class="fa-icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
		<li><a href="./login.html"><i class="fa-icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" Runat="Server">
    <div align="center">
    <%if (Request.QueryString["act"] == "edit" && Request.QueryString["id"] != "")
      { %>
        <div align="left">
            Tiêu đề: <br />
            <asp:TextBox ID="txtTitleEdit" runat="server" Width="435px"></asp:TextBox><br />
            Thể loại: <br />
            <asp:DropDownList ID="ddlCategoryEdit" runat="server" DataTextField="cat_name">
            </asp:DropDownList><br />
            Nội dung: 
        </div>
        
        <CKEditor:CKEditorControl ID="txtContentEdit" BasePath="../ckeditor/" runat="server"></CKEditor:CKEditorControl><br /><br />
        <div align="right">
            <asp:Button ID="btnEdit" runat="server" Text="Sửa bài" 
                Height="41px" Width="210px" onclick="btnEdit_Click" />
        </div>
    <%}
      else if (Request.QueryString["act"] == "add")
      {
      %>
        <div align="left">
            Tiêu đề: <br />
            <asp:TextBox ID="txtTitle" runat="server" Width="435px"></asp:TextBox><br />
            Thể loại: <br />
            <asp:DropDownList ID="ddlCategory" runat="server" DataTextField="cat_name">
            </asp:DropDownList><br />
            Nội dung: 
        </div>
        
        <CKEditor:CKEditorControl ID="txtContent" BasePath="../ckeditor/" runat="server"></CKEditor:CKEditorControl><br /><br />
        <div align="right">
            <asp:Button ID="Button1" runat="server" Text="Đăng bài" 
                onclick="Button1_Click" Height="41px" Width="210px" />
        </div>
      <%
      }
      else
      { %>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="news.aspx?act=add" ForeColor="Maroon" Font-Bold="True" Font-Size="Large">[Đăng bài mới]</asp:HyperLink>
        <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="1009px" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" >
            </asp:BoundField>
            <asp:BoundField DataField="Tiêu đề" HeaderText="Tiêu đề" 
                SortExpression="Tiêu đề" >
            </asp:BoundField>
            <asp:BoundField DataField="Thể loại" HeaderText="Thể loại" 
                SortExpression="Thể loại" >
            </asp:BoundField>
            <asp:BoundField DataField="Ngày đăng" HeaderText="Ngày đăng" 
                SortExpression="Ngày đăng" >
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="news.aspx?act=edit&amp;id={0}" HeaderText="Sửa" 
                Text="Sửa">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="news.aspx?act=delete&amp;id={0}" HeaderText="Xóa" 
                Text="Xóa">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:webgameConnectionString %>" 
        
            SelectCommand="SELECT n.ID, n.news_title AS 'Tiêu đề', c.cat_name AS 'Thể loại', n.news_date AS 'Ngày đăng' FROM news AS n INNER JOIN category AS c ON n.news_category = c.ID">
    </asp:SqlDataSource>
    <%} %>
    </div>
</asp:Content>

