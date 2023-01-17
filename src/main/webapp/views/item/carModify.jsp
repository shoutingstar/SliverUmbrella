<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- 은빛 우산 부트스트랩 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/vendors/iconly/bold.css">
<link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" href="assets/css/app.css">
<script src="assets/js/jquery.twbsPagination.js"></script>
</head>
<body>
	<!--large size Modal -->
	<div class="modal fade text-left" id="carModify" tabindex="-1" role="dialog"
	    aria-labelledby="myModalLabel17" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg"
	        role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h4 class="modal-title" id="myModalLabel17">차량 정보 수정</h4>
	                <button type="button" class="close" onclick="closeModal(2)"
	                    aria-label="Close" style="font-size: 22pt;">
	                    &times;
	                </button>
	            </div>
	            <form id="carModfyForm">
		            <div class="modal-body">
						<div class="left">
							<input type="hidden" name="carIdx">
							<p class="writeArea"><span id="WriteName">차량명 : </span> 
								<input type="text" name="carName">
							</p> <br>
							<p class="writeArea"><span id="WriteName">차량 번호 : </span> 
								<input type="text" name="carNum">
							</p> <br>
							<p class="writeArea"><span id="WriteName">차 종 : </span> 
								<input type="text" name="carType">
							</p> <br>
						</div>
						<div class="right">
							<p class="writeArea"> 
								<span id="WriteName">차량 상태 : </span>
								<select name="carState">
									<option value="" selected="selected" style="display: none;">선택</option>
									<option value="운행 가능">운행 가능</option>
									<option value="운행 보류">운행 보류</option>
								</select>
							</p> <br>
							<p class="writeArea"> 
								<span id="WriteName">구분 : </span>
								<select name="carPart">
									<option value="" selected="selected" style="display: none;">선택</option>
									<option value="후원">후원</option>
									<option value="렌탈">렌탈</option>
									<option value="직접 구매">직접 구매</option>
								</select>
							</p> <br>
							<p class="writeArea"><span id="WriteName">연식 : </span> 
								<input type="text" name="carYear">
							</p>
						</div>
		            </div>
		            <div class="modal-footer" >
		            	<div style="margin: auto;">
		            		<button type="button" class="btn btn-primary ml-1" id="carModifyFinishBtn">
			                    <span class="d-none d-sm-block">수정</span>
			                </button>
			                <button type="button" class="btn btn-light-secondary"
			                    onclick="closeModal(2)">
			                    <span class="d-none d-sm-block">닫기</span>
			                </button>
		                </div>
		            </div>
	            </form>
	        </div>
		</div>
	</div>
</body>
<script>
	$('#carModifyFinishBtn').click(function(){
		/* 요소 */
		/* Left */
		var $carName = $('#carModfyForm input[name=carName]');
		var $carNum = $('#carModfyForm input[name=carNum]');
		var $carType = $('#carModfyForm input[name=carType]');
		/* Right */
		var $carState = $('#carModfyForm select[name=carState]');
		var $carPart = $('#carModfyForm select[name=carPart]');
		var $carYear = $('#carModfyForm input[name=carYear]');
		
		if($carName.val()==''){
			alert("차량명을 입력해 주세요");
			$carName.focus();
		}else if($carNum.val()==''){
			alert("차량 번호를 입력해 주세요");
			$carNum.focus();
		}else if($carType.val()==''){
			alert("차 종을 입력해 주세요");
			$carType.focus();
		}else if($carState.val()==''){
			alert("차량 상태를 선택해 주세요");
			$carState.focus();
		}else if($carPart.val()==''){
			alert("구분을 선택해 주세요");
			$carPart.focus();
		}else if($carYear.val().match(yearCheck) == null || $carYear.val() == ''){
			alert("연식을 형식에 맞게 입력해 주세요 \n형식 : 숫자 4자리\n예) 2020");
			$carYear.focus();
		}else{ 
			var formData = new FormData();
			$('#carModfyForm input').each(function(){
				var key = $(this).attr('name');
				var key2 = $carState.attr('name');
				var key3 = $carPart.attr('name');
				var key4 = 'oldCarNum';
				formData.append(key, $(this).val())
				formData.append(key2, $carState.val())
				formData.append(key3, $carPart.val())
				formData.append(key4, carNum)
			})
			
			$.ajax({
				type:'POST',
				url:'carModify.do',
				processData:false, // 객체를 문자열로 바꾸지 않음
				contentType:false, // 컨텐트 타입을 객체로 함
				data: formData,
				success:function(data){
					console.log(data)
					if(data.finish == 1){
						alert('수정 완료')
						location.reload();
					}else{
						alert('서버와 통신은 했으나 데이터 전송중 문제가 발생했습니다. \n다시 시도해 주세요. \n현상이 지속되면 새로고침 후 진행해 주세요')
					}
				},
				error:function(e){
					console.log(e)
				}
			});
			
		} //end of if
	});
</script>
</html>