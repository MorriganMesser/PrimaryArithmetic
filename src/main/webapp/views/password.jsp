﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dream</title>
</head>
<body>
	<%@ include file="systemplateheader.jsp"%>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-header">
						修改密码 <small>修改你的密码</small>
					</h1>
				</div>
			</div>
			<!-- /. ROW  -->


			<div class="row">

				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">修改密码</div>
						<div class="panel-body">

							<form class="form-horizontal" role="form" id="changePwdForm" action="changeStuPwd.do">
								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">当前密码</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="firstname"
											placeholder="当前密码">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">新密码</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="password" name="password"
											placeholder="新密码">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-2 control-label">确认密码</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="password_again" name="password_again"
											placeholder="确认密码">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-success">确认</button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
			<!-- /. ROW  -->
			<footer>
				<p>
					Copyright &copy; 2016.Company name All rights reserved.<a
						target="_blank" href="">xxx</a>
				</p>
			</footer>
		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->

	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="js/custom-scripts.js"></script>
	<script src="js/jquery.validate.js"></script>
	<script src="js/additional-methods.js"></script>
	<script>
	// just for the demos, avoids form submit
	jQuery.validator.setDefaults({
	  debug: true,
	  success: "valid"
	});
	$( "#changePwdForm" ).validate({
	  rules: {
	    password: "required",
	    password_again: {
	      equalTo: "#password"
	    }
	  }
	});
	</script>
</body>
</html>
