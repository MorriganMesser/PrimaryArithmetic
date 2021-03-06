﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="edu.tju.goliath.entity.Student" import="edu.tju.goliath.entity.Parent" import="edu.tju.goliath.entity.Teacher"%>
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
<title>用户</title>
</head>
<body>
	<%@ include file="systemplateheader.jsp"%>

	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-header">
					
						个人中心 <small>这里是你的个人空间</small>
					</h1>
				</div>
			</div>
			<!-- /. ROW  -->


			<div class="row">

				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">用户信息</div>

						<div class="panel-body">

							<div class="panel panel-success">
								<div class="panel-heading">
									<h3 class="panel-title">
										<span class="glyphicon glyphicon-user"></span> 用户
									</h3>
								</div>
								<div class="panel-body">
									<table class="table">
										<tr>
											<td>用户名</td>
											<td>${student.stuname}</td>
										</tr>
										<tr>
											<td>昵称</td>
											<td>${student.stunick}</td>
										</tr>
										<tr>
											<td>邮箱</td>
											<td>${student.stuemail}</td>
										</tr>
										<tr>
											<td>年级</td>
											<td>${student.stuyear}</td>
										</tr>
										<tr>
											<td>父母</td>
											<td>${parent.parentname}</td>
										</tr>
										<tr>
											<td>老师</td>
											<td>${teacher.teachername}</td>
										</tr>
									</table>
								</div>
							</div>
							
							<div class="panel panel-success">
								<div class="panel-heading">
									<h3 class="panel-title">
										<span class="glyphicon glyphicon-user"></span>请选择相关联系人
									</h3>
								</div>
								<div class="panel-body">
								<form action="addParentAndTeacher.do" method="post">

									<table class="table">
										<tr>
											<td>家长</td>
											<td>
												<select id="parent_select" class="form-control" name="stuparentid">
												<option ></option>
												</select> 
											</td>
										</tr>
										<tr>
											<td>教师</td>
											<td>
												<select id="teacher_select" class="form-control" name="stuteacherid">
												<option ></option>
												</select> 
											</td>
										</tr>
										<tr>
											<td></td>
											<td>
												<input type="submit" value="确定">
											</td>
										</tr>
									</table>
									</form>
								</div>
							</div>

							<div class="panel panel-warning">
								<div class="panel-heading">
									<h3 class="panel-title">
										<span class="glyphicon glyphicon-screenshot"></span> 成就
									</h3>
								</div>
								<div class="panel-body">
									<table class="table table-hover">
										<tr>
											<td><img style="width:64px;height:64px" src="img/medal/med1.png" class="img-circle" alt="1"></td>
											<td style="vertical-align: middle">算术达人。简单的算术题对你来说不成问题了！</td>
										</tr>
											<tr>
											<td><img style="width:64px;height:64px" src="img/medal/med2.png" class="img-circle" alt="2"></td>
											<td style="vertical-align: middle">初窥门径。你已经初步领略了算术的魅力！</td>
										</tr>
											<tr>
											<td><img style="width:64px;height:64px" src="img/medal/med3.png" class="img-circle" alt="3"></td>
											<td style="vertical-align: middle">勤奋努力。你花了很多的时间练习算术题，勤奋的你终将取得成功！</td>
										</tr>
									</table>
								</div>
							</div>
							
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<span class="glyphicon glyphicon-list-alt"></span> 练习记录
									</h3>
								</div>
								<div class="panel-body">
									<table class="table table-hover">
										<tr>
											<td>答题总数</td>
											<td>0</td>
										</tr>
										<tr>
											<td>正确总数</td>
											<td>0</td>
										</tr>
										<tr>
											<td>正确率</td>
											<td>0</td>
										</tr>
									</table>
								</div>
							</div>
							
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">
										<span class="glyphicon glyphicon-heart"></span> 综合
									</h3>
								</div>
								<div class="panel-body">
									<table class="table table-hover">
										<tr>
											<td>擅长题型</td>
											<td>0</td>
										</tr>
										<tr>
											<td>不擅长题型</td>
											<td>0</td>
										</tr>

									</table>
								</div>
							</div>


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
<!-- 	<script src="js/custom-scripts.js"></script> -->
	
<script type="text/javascript">
	//alert("asdfasdasd")
	$(function(){
		//alert("aaaa");
		var obj=window.location; 
		var contextPath=obj.pathname.split("/")[1]; 
		
		$.ajax({
			type:"POST",
			url:"getAllParents.do",
			contentType:"application/json",
			dataType:"json",
			success:function(data){
			var str="";
			str+="<option selected></option>";
			$.each(data,function(i,val){
				//alert(val.parentname);
				str+="<option value='"+val.parentid+"'>"+val.parentname+"</option>";
			});	
			$("#parent_select").html(str);
		}
	}); 
})
	
</script>

<script type="text/javascript">
	//alert("asdfasdasd")
	$(function(){
		//alert("aaaa");
		var obj=window.location; 
		var contextPath=obj.pathname.split("/")[1]; 
		
		$.ajax({
			type:"POST",
			url:"getAllTeachers.do",
			contentType:"application/json",
			dataType:"json",
			success:function(data){
			var str="";
			str+="<option selected></option>";
			$.each(data,function(i,val){
				//alert(val.teachername);
				str+="<option value='"+val.teacherid+"'>"+val.teachername+"</option>";
			});	
			$("#teacher_select").html(str);
		}
	}); 
})
	
</script>
</body>
</html>
