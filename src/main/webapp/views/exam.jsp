<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试模块</title>
<link href="../css/exam.css" rel="stylesheet">
</head>
<body id="page-top" class="index">
<%@ include file="indextemplateheader.jsp"%>
<header>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<img class="img-responsive" src="../img/profile.png" alt="">
				<div class="intro-text">
					<span class="name">小学生四则运算 考试系统</span>
					<hr class="star-light">
				</div>
			</div>
		</div>
	</div>
	<div class="fixed-container">
                <div class="signup">
                    <div class="container_type text-center">
                        <h3 class="title">答题入口</h3>
                        <p class="summary">考试说明：考试难度分别为初级、中级、高级。请选择考试级别后进入考试答题系统。</p>
                        <form class="signup-form">
                            <div class="form-group">
	                            <select class="sel">
									<option value="">请选择考试级别</option>
									<option value="">一级-青铜</option>
									<option value="">二级-白银</option>
									<option value="">三级-黄金</option>
								</select>
                            </div>
                            <a href="examcontent.jsp"><input type="button" class="btn btn-cta btn-cta-primary" value="开始考试"></a>
                        </form><!--//signup-form-->
                    </div><!--//contianer-->
                </div><!--//signup-->
                </div>
</header>

<%@ include file="indextemplatefooter.jsp"%>
</body>
</html>