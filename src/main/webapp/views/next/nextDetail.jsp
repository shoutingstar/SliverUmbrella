<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style></style>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/vendors/iconly/bold.css">
<link rel="stylesheet"
	href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" href="assets/css/app.css">
<link rel="stylesheet" href="res/style.css" />
<link rel="stylesheet" href="richtexteditor/rte_theme_default.css" />
<script type="text/javascript" src="richtexteditor/rte.js"></script>
<script type="text/javascript"
		src='richtexteditor/plugins/all_plugins.js'></script>
</head>
<body>
	<div id="app">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div id="main">
			<jsp:include page="../upbar.jsp"></jsp:include>
			<!-- 여기 안에서 개발  -->
			<div class="page-heading">
				<h3>인수인계 상세보기</h3>
			</div>
			<div class="page-content">
				<section class="row">
					<div class="card">
						<div class="card-body py-4 px-5">
							<form action="nextDetail" method="post">
							<div class="d-flex align-items-center">
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">번호</span> 
									<input type="text" class="form-control" aria-label="Username" 
										aria-describedby="basic-addon1" name="bd_idx" value="${list.bd_idx}"readonly>
								</div>
							</div>

								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">작성자</span> 
									<input type="text" class="form-control" aria-label="Username" 
										aria-describedby="basic-addon1" name="mem_name" value="${list.mem_name}"readonly>
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">날짜</span> 
									<input type="text" class="form-control" aria-label="Username" 
										aria-describedby="basic-addon1" name="bd_date" value="${list.bd_date}"readonly>
								</div>
								
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">제목</span> 
									<input type="text" class="form-control" aria-label="Username" 
										aria-describedby="basic-addon1" name="bd_title" value="${list.bd_title}"readonly>
								</div>
							
							
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">내용</span> 
									<input type="text" class="form-control" aria-label="Username" 
										aria-describedby="basic-addon1" name="bd_content" value="${list.bd_content}"readonly>
								</div>
								
<!-- 								<table class="table table-bordered table-hover" -->
<!-- 									style="text-align: center;"> -->
<!-- 									<tbody id="list"> -->
<!-- 										<tr> -->
<!-- 											<th class="col-md-2">글번호</th> -->
<%-- 											<td>${list.bd_idx}</td> --%>
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th class="col-md-2">제목</th> -->
<%-- 											<td>${list.bd_title}</td> --%>
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th class="col-md-2">작성자</th> -->
<%-- 											<td>${list.mem_name}</td> --%>
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th class="col-md-2">날짜</th> -->
<%-- 											<td>${list.bd_date}</td> --%>
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th class="col-md-2">내용</th> -->
<%-- 											<td>${list.bd_content}</td> --%>
<!-- 										</tr> -->
<!-- 									</tbody> -->
<!-- 								</table> -->
							
							<button type="button" class="btn btn-secondary" onclick="location.href='nextList'">뒤로가기</button>
							</form>
						</div>
					</div>


				</section>
			</div>
			<footer>
				<div class="footer clearfix mb-0 text-muted">
					<div class="float-start">
						<p>2023 Final Project</p>
					</div>
					<div class="float-end">
						<p>
							Create With <span class="text-danger"><i
								class="bi bi-heart"></i></span> by <a href="http://ahmadsaugi.com">Gudi</a>
						</p>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/pages/dashboard.js"></script>
	<script src="assets/js/main.js"></script>
</body>
<script>
// var editor = new RichTextEditor("#div_editor");

// editor.setHTMLCode($("#content").html()); // 불러온 내용 넣기
// editor.setReadOnly(); // 읽기 전용 옵션으로 변경
</script>
</html>