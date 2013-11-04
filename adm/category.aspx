<%@ Page Title="" Language="C#" MasterPageFile="~/adm/Admin.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="adm_category" %>

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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Width="395px" DataKeyNames="ID" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" InsertVisible="False" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="cat_name" HeaderText="Tên thể loại" 
                SortExpression="cat_name" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CommandField HeaderText="Control" ShowDeleteButton="True" 
                ShowEditButton="True" DeleteText="Xóa" EditText="Sửa">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
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
        DeleteCommand="DELETE FROM [category] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [category] ([cat_name]) VALUES (@cat_name)" 
        SelectCommand="SELECT [cat_name], [ID] FROM [category] ORDER BY [ID]" 
        UpdateCommand="UPDATE [category] SET [cat_name] = @cat_name WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cat_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            cat_name:
            <asp:TextBox ID="cat_nameTextBox" runat="server" 
                Text='<%# Bind("cat_name") %>' />
            <br />
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Tên thể loại:
            <asp:TextBox ID="cat_nameTextBox" runat="server" 
                Text='<%# Bind("cat_name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Thêm" />
            &nbsp; &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Hủy" />
        </InsertItemTemplate>
        <ItemTemplate>
            cat_name:
            <asp:Label ID="cat_nameLabel" runat="server" Text='<%# Bind("cat_name") %>' />
            <br />

            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </div>
</asp:Content>

