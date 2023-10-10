<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실적관리</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<!--     <link -->
<!--         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" -->
<!--         rel="stylesheet"> -->
<link
	href="${pageContext.request.contextPath}/resources/css/workOrder.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

<style type="text/css">
.lineCode {
	width: 180px;
}

.search-select {
	width: 480px;
}
</style>
</head>
<body>
	<%@include file="../inc/top-bar.jsp"%>
	<%@include file="../inc/side-bar.jsp"%>


	<!--  contents start -->
	<!-- <div class="contents" style="position:fixed; left: 15rem;"> -->

	<div class="main">
		<div class="card shadow">
			<!-- 그림자아니야 영역 -->
			<div class="page-title">실적관리</div>
			<div class="contents2">
				<div class="search-bar">
					<div class="search-b">

						<div class="form-group-workOrder">
							<p>
								라인 <select id="LineCode" name="LineCode"
									class="custom-select form-control lineCode">
									<!-- 						<option value="" selected>전체</option> -->
									<!-- 						<option value="라인1">라인1</option> -->
									<!--   						<option value="라인2">라인2</option> -->
									<!--  						<option value="라인3">라인3</option> -->
									<!--   						<option value="라인4">라인4</option> -->
									<!--  						<option value="라인5">라인5</option> -->
									<!--  						<option value="라인6">라인6</option> -->
									<c:forEach var="LineDTO" items="${lineList}">
										<option value="${LineDTO.lineCode}">${LineDTO.lineCode}</option>
									</c:forEach>
								</select>
							</p>
						</div>

						<!-- <div class="search-select"> -->
						<!-- <p>업체명</p> <input type="text" id="cusCode" class="form-control search-input" placeholder="업체검색 "> -->
						<!-- </div> -->
						<div class="search-select">
							<p>상품명</p>
							<input type="text" id="productCode"
								class="form-control search-input" placeholder="상품코드 "> <input
								type="text" id="productName" class="form-control search-input"
								placeholder="상품명 ">
						</div>
					</div>

					<div class="search-b">
						<div class="search-date">
							<p>지시일자</p>
							<input type="text" id="roDate1" class="form-control search-input"
								placeholder="지시일자"> ~<input type="text" id="roDate2"
								class="form-control search-input" placeholder="지시일자">
						</div>
						<div class="search-date">
							<p>실적일자</p>
							<input type="text" id="poDate1"
								class="form-control search-input" placeholder="연도-월-일" readonly>
							~<input type="text" id="poDate2"
								class="form-control search-input" placeholder="연도-월-일" readonly>
						</div>

					</div>
					<div class="search-button">
						<input type="button" value="검색" class="btn btn-primary mybutton1">
						<input type="button" value="취소"
							class="btn btn-secondary mybutton1">
					</div>
				</div>
				<!-- search-bar -->
				<br>

				<div class="select-status">
					<a>대기<input type="checkbox" id="select1" name="select1"
						class="list-select" checked></a> <a>진행<input
						type="checkbox" id="select2" name="select2" class="list-select"
						checked></a> <a>완료<input type="checkbox" id="select3"
						name="select3" class="list-select" checked></a> <a>취소<input
						type="checkbox" id="select4" name="select4" class="list-select"></a>
					<!-- <a>( 체크박스 사용여부 보류중 )</a> -->
					<div>
						<!-- <input type="button" value="등록" class="btn btn-primary mybutton1" onclick="openInsert()"> -->
						<!-- <input type="button" value="삭제" class="btn btn-secondary mybutton1"> -->
					</div>
				</div>

				<div class="page-title">생산실적등록</div>


				<div>
					<table class="table-list">
						<tr class="table-head">
							<th><input type="checkbox" id="delete-list-all"
								name="delete-list" data-group="delete-list"></th>
							<th>실적코드</th>
							<th>지시번호</th>
							<th>실적일자</th>
							<th>라인코드</th>
							<th>상품코드</th>
							<th>상품명</th>
							<th>지시수량(EA)</th>
							<th>양품</th>
							<th>불량</th>
							<th>불량사유</th>
							<th>수주번호</th>
							<th>거래처</th>
							<th>상세내역</th>
						</tr>

						<c:forEach var="productionDTO" items="${productionList}">
							<tr class="table-body">
								<td><input type="checkbox" id="delete-list"
									name="delete-list" data-group="delete-list"></td>
								<td>${productionDTO.poCode}</td>
								<td>${productionDTO.woCode}</td>
								<td><c:out
										value="${fn:substring(productionDTO.poDate, 0, 10)}" /></td>
								<td>${productionDTO.lineCode}</td>
								<td>${productionDTO.productCode}</td>
								<td>${productionDTO.productName}</td>
								<td>${productionDTO.woCount}</td>
								<td>${productionDTO.poGood}</td>
								<td>${productionDTO.poErr}</td>
								<td>${productionDTO.poCause}</td>
								<%-- 									<td><c:out value="${fn:substring(productionDTO.woDate, 0, 10)}" /></td> --%>
								<%-- 								<td>${productionDTO.woStatus}</td> --%>
								<%-- 								<td>${productionDTO.productCode}</td> --%>
								<td>${productionDTO.roCode}</td>
								<td>${productionDTO.cusCode}</td>
								<%-- 								<td>${productionDTO.empName}</td> --%>

								<td><input type="button" value="상세내역"
									class="btn btn-secondary mybutton1"
									onclick="openDetails('${productionDTO.poCode}')"></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!-- table -->
				<div class="content-bottom">
<div>
<input type="button" value="실적등록" class="btn btn-primary mybutton1" onclick="openInsert()">
<input type="button" value="삭제" class="btn btn-secondary mybutton1">
</div>
				<div class="page-buttons">
					<a href="#" class="page-button">&lt;</a> <a href="#"
						class="page-button page-button-active">1</a> <a href="#"
						class="page-button">2</a> <a href="#" class="page-button">3</a> <a
						href="#" class="page-button">4</a> <a href="#" class="page-button">5</a>
					<a href="#" class="page-button">&gt;</a>
				</div>
				<!-- page-button -->
			</div>
		</div>
		<!-- contents -->
	</div>
	<!-- 그림자아니야 영역 -->

	<!-- main -->

	<!-- contents end -->

	<!-- 데이트피커 타임피커를 사용하기위한 j쿼리 -->
	<link rel="stylesheet"
		href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#cusCode")
									.click(
											function() {
												// 업체코드 입력란의 값을 가져옵니다.
												var cusCode = $(
														"input[name='cusCode']")
														.val();
												// 여기에서 검색 기능을 구현하고, 필요한 로직을 수행합니다.
												// 예: 업체코드를 이용하여 검색하고 결과를 표시합니다.

												$(document)
														.ready(
																function() {
																	$(
																			"#cusCode")
																			.click(
																					function() {
																						// 팝업 창 크기 및 위치 설정
																						var width = 400;
																						var height = 400;
																						var left = (screen.width - width) / 2;
																						var top = (screen.height - height) / 2;
																						// 팝업 창 열기
																						var url = '${pageContext.request.contextPath}/receive/empty'; // 업체 검색 페이지의 URL.
																						var popupWindow = window
																								.open(
																										url,
																										'_blank',
																										"width="
																												+ width
																												+ ", height="
																												+ height
																												+ ", left="
																												+ left
																												+ ", top="
																												+ top);
																						// 팝업 창 포커스
																						popupWindow
																								.focus();
																					});
																});
											});
						});
		$(document)
				.ready(
						function() {
							$("#productCode")
									.click(
											function() {
												// 상품코드 입력란의 값을 가져옵니다.
												var productCode = $(
														"input[name='productCode']")
														.val();
												// 여기에서 검색 기능을 구현하고, 필요한 로직을 수행합니다.
												// 예: 상품코드를 이용하여 검색하고 결과를 표시합니다.

												$(document)
														.ready(
																function() {
																	$(
																			"#productCode")
																			.click(
																					function() {
																						// 팝업 창 크기 및 위치 설정
																						var width = 500;
																						var height = 500;
																						var left = (screen.width - width) / 2;
																						var top = (screen.height - height) / 2;
																						// 팝업 창 열기
																						var url = '${pageContext.request.contextPath}/workOrder/workProdList'; // 상품 검색 페이지의 URL.
																						var popupWindow = window
																								.open(
																										url,
																										'_blank',
																										"width="
																												+ width
																												+ ", height="
																												+ height
																												+ ", left="
																												+ left
																												+ ", top="
																												+ top);
																						// 팝업 창 포커스
																						popupWindow
																								.focus();
																					});
																});
											});
						});
		
		
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">

		$(function() {
			$("#roDate1").datepicker({
				dateFormat : "yy-mm-dd"
			});
			$("#roDate2").datepicker({
				dateFormat : "yy-mm-dd"
			});
			$("#poDate1").datepicker({
				dateFormat : "yy-mm-dd"
			});
			$("#poDate2").datepicker({
				dateFormat : "yy-mm-dd"
			});
		});

		// 체크박스(삭제용) 전체선택
		var selectAllCheckbox = document.getElementById("delete-list-all");
		var checkboxes = document
				.querySelectorAll('[data-group="delete-list"]');
		selectAllCheckbox.addEventListener("change", function() {
			checkboxes.forEach(function(checkbox) {
				checkbox.checked = selectAllCheckbox.checked;
			});
		});
		checkboxes.forEach(function(checkbox) {
			checkbox.addEventListener("change", function() {
				if (!this.checked) {
					selectAllCheckbox.checked = false;
				} else {
					// 모든 체크박스가 선택되었는지 확인
					var allChecked = true;
					checkboxes.forEach(function(c) {
						if (!c.checked) {
							allChecked = false;
						}
					});
					selectAllCheckbox.checked = allChecked;
				}
			});
		});
		// 작업지시상세내용 새창
		function openDetails(poCode) {
		    var url = '${pageContext.request.contextPath}/production/productionDetails?poCode=' + poCode;
		    var windowWidth = 560;
		    var windowHeight = 720;
		    var windowLeft = (screen.width - windowWidth) / 2;
		    var windowTop = (screen.height - windowHeight) / 2;
		    var newWindow = window.open(url, '_blank', 'width=' + windowWidth + ', height=' + windowHeight + ', left=' + windowLeft + ', top=' + windowTop);
		}
		//작업지시등록 새창
		function openInsert() {
		    var url = '${pageContext.request.contextPath}/production/productionInsert';
		    var windowWidth = 550;
		    var windowHeight = 710;
		    var windowLeft = (screen.width - windowWidth) / 2;
		    var windowTop = (screen.height - windowHeight) / 2;
		    var newWindow = window.open(url, '_blank', 'width=' + windowWidth + ', height=' + windowHeight + ', left=' + windowLeft + ', top=' + windowTop);
		}
		</script>
	

<!-- 	<br> -->
<!-- 	<div class="center"> -->
<!-- 		<div id="pagination"> -->

<!-- 			<!-- 1페이지 이전 --> 
<%-- 			<c:if test="${pageDTO.currentPage > 1}"> --%>
<!-- 				<a -->
<%-- 					href="${pageContext.request.contextPath }/workOrder/workProdList?productCode=${search.productCode}&itemName=${search.productName}&pageNum=${pageDTO.currentPage-1}"><</a> --%>
<%-- 			</c:if> --%>

<!-- 			<!-- 10페이지 이전 --> 
<%-- 			<c:if test="${pageDTO.startPage > pageDTO.pageBlock}"> --%>
<!-- 				<a -->
<%-- 					href="${pageContext.request.contextPath }/workOrder/workProdList?productCode=${search.productCode}&itemName=${search.productName}&pageNum=${pageDTO.startPage-PageDTO.pageBlock}"><<</a> --%>
<%-- 			</c:if> --%>

<%-- 			<c:forEach var="i" begin="${pageDTO.startPage }" --%>
<%-- 				end="${pageDTO.endPage }" step="1"> --%>
<!-- 				<a -->
<%-- 					href="${pageContext.request.contextPath }/workOrder/workProdList?productCode=${search.productCode}&itemName=${search.productName}&pageNum=${i}" --%>
<%-- 					<c:if test="${pageDTO.pageNum eq i}">class="active"</c:if>>${i}</a> --%>
<%-- 			</c:forEach> --%>

<!-- 			<!-- 1페이지 다음 --> 
<%-- 			<c:if test="${pageDTO.currentPage < pageDTO.pageCount}"> --%>
<!-- 				<a -->
<%-- 					href="${pageContext.request.contextPath }/workOrder/workProdList?productCode=${search.productCode}&itemName=${search.productName}&pageNum=${pageDTO.currentPage+1}">></a> --%>
<%-- 			</c:if> --%>

<!-- 			<!-- 10페이지 다음 --> 
<%-- 			<c:if test="${pageDTO.endPage < pageDTO.pageCount}"> --%>
<!-- 				<a -->
<%-- 					href="${pageContext.request.contextPath }/workOrder/workProdList?productCode=${search.productCode}&itemName=${search.productName}&pageNum=${pageDTO.startPage + pageDTO.pageBlock}">>></a> --%>
<%-- 			</c:if> --%>

<!-- 		</div> -->
<!-- 	</div> -->




	<!-- 	<br><br><br> -->
	<!-- 	<div id="f">생산실적</div> -->


	<!--     <div id="PerformList_ajax"> -->
	<!-- 	<table border="1"> -->
	<!-- 	<tr id="th"><th>품번</th><th>품명</th><th>실적일</th><th>양불여부</th><th>실적수량</th><th>단위</th><th>불량사유</th></tr> -->
	<!-- 	<tr id="con"><td colspan="7"> 실적 등록할 작업 지시를 클릭해주세요 </td></tr> -->
	<!--     </table> -->
	<!--     </div> -->


</body>
</html>