<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="adm_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
    <title>Web game</title>

    <!-- start: CSS -->
	<link id="bootstrap-style" href="../resources/admin_template/css/bootstrap.css" rel="stylesheet" />
	<link href="../resources/admin_template/css/bootstrap-responsive.css" rel="stylesheet" />
	<link id="base-style" href="../resources/admin_template/css/style.css" rel="stylesheet" />
	<link id="base-style-responsive" href="../resources/admin_template/css/style-responsive.css" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css' />
	<!-- end: CSS -->

    <!-- start: Favicon -->
	<link rel="shortcut icon" href="../resources/admin_template/img/favicon.ico" />
	<!-- end: Favicon -->

    <style type="text/css">
		body { background: url(../resources/admin_template/img/bg-login.jpg) !important; }
	</style>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">
        <div class="container-fluid">
		    <div class="row-fluid">					
			    <div class="row-fluid">
				    <div class="login-box">
					    <h2><asp:Label ID="lblError" Name="lblError" runat="server" Text="Label">Đăng nhập</asp:Label></h2>					
						<fieldset>							
							<div class="input-prepend" title="Username">
							    <span class="add-on"><i class="halflings-icon user"></i></span>							    
                                <asp:TextBox class="input-large span10" name="txtUsername" id="txtUsername" type="text" placeholder="Tên đăng nhập" runat="server"></asp:TextBox>
						    </div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="Password">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
                                <asp:TextBox class="input-large span10" name="txtPassword" id="txtPassword" type="password" placeholder="Mật khẩu" runat="server"></asp:TextBox>
							</div>
							<div class="clearfix"></div>
							
							<%--<label class="remember" for="remember"><input type="checkbox" id="remember" />Remember me</label>--%>

							<div class="button-login">
                                <asp:Button class="btn btn-primary" ID="btnSubmit" Name="btnSubmit" type="submit" runat="server" Text="Đăng nhập" onclick="btnSubmit_Click" />	
							</div>
							<div class="clearfix"></div>
					        <hr />
                        </fieldset>
                    </div><!--/span-->
			    </div><!--/row-->			
		    </div><!--/fluid-row-->			
	    </div><!--/.fluid-container-->

	    <!-- start: JavaScript-->
		<script src="../resources/admin_template/js/jquery-1.7.2.min.js"></script>
	    <script src="../resources/admin_template/js/jquery-ui-1.8.21.custom.min.js"></script>
	
		<script src="../resources/admin_template/js/modernizr.js"></script>
	
		<script src="../resources/admin_template/js/bootstrap.js"></script>
	
		<script src="../resources/admin_template/js/jquery.cookie.js"></script>
	
		<script src='../resources/admin_template/js/fullcalendar.min.js'></script>
	
		<script src='../resources/admin_template/js/jquery.dataTables.min.js'></script>

		<script src="../resources/admin_template/js/excanvas.js"></script>
	    <script src="../resources/admin_template/js/jquery.flot.js"></script>
	    <script src="../resources/admin_template/js/jquery.flot.pie.js"></script>
	    <script src="../resources/admin_template/js/jquery.flot.stack.js"></script>
	    <script src="../resources/admin_template/js/jquery.flot.resize.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.chosen.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.uniform.min.js"></script>
		
		<script src="../resources/admin_template/js/jquery.cleditor.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.noty.js"></script>
	
		<script src="../resources/admin_template/js/jquery.elfinder.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.raty.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.iphone.toggle.js"></script>
	
		<script src="../resources/admin_template/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.gritter.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.imagesloaded.js"></script>
	
		<script src="../resources/admin_template/js/jquery.masonry.min.js"></script>
	
		<script src="../resources/admin_template/js/jquery.knob.modified.js"></script>
	
		<script src="../resources/admin_template/js/jquery.sparkline.min.js"></script>
	
		<script src="../resources/admin_template/js/counter.js"></script>
	
		<script src="../resources/admin_template/js/retina.js"></script>

		<script src="../resources/admin_template/js/custom.js"></script>
	    <!-- end: JavaScript-->
    </form>
</body>
</html>
