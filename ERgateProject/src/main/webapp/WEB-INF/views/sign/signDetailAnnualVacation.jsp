<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signDetailAnnalVacation</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

html, body {
	margin: 0;
	height: 100%;
	overflow-x: hidden;
	overflow-y: auto;
	font-family: "Nanum Gothic", serif;
	overflow-x: hidden;
}

/* 현재팝업창 사이즈조절 */
.popup-outer {
	width: 1250px;
	height: 800px;
	margin: 0;
	box-sizing: border-box;
}

.popup-title {
	margin: 0;
	width: 100%;
	height: 50px;
	background-color: rgba(22, 160, 133, 0.68);
	font-size: 25px;
	padding: 10px;
	color: white;
	box-sizing: border-box;
}

.popup-content {
	padding: 20px;
}

/* 중간버튼 스타일 */
.middleBtn {
	width: 90px;
	height: 35px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 15px;
}

.middleBtn:hover {
	cursor: pointer;
}
/* 중간버튼 스타일 */
/* 큰버튼 스타일 */
.bigBtn {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
	margin-right: 5px;
}

.bigBtn:hover {
	cursor: pointer;
}
/* 큰버튼 스타일 */
#btnArea {
	margin-left: 910px;
}

/* 테이블스타일 */
#signInfo1 {
	width: 1200px;
	height: 100px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
}

#signInfo1 th {
	background-color: #EAEAEA;
	border: 1px solid lightgray;
	height: 35px;
}

#signInfo1 td {
	border: 1px solid lightgray;
	height: 35px;
}

#signInfo2 {
	width: 1200px;
	height: 175px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
	border-width: 1px 0;
}

#signInfo2 th {
	background-color: #EAEAEA;
	border: 1px solid lightgray;
	height: 35px;
}

#signInfo2 td {
	border: 1px solid lightgray;
	position: relative;
}

.circle {
	color: rgb(231, 76, 60);
	font-size: 80px;
	display: inline-block;
	position: relative;
	bottom: 120px;
	opacity: 70%;
}

h2, h3 {
	margin: 0;
	padding: 0;
}

#checkArea {
	width: 1200px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
}

/* input창 스타일(가로크기는 자유) */
.inputs {
	height: 30px;
	border: 1px solid lightgray;
	border-radius: 3px;
}
/* input창 스타일 */

/* textarea스타일 */
.textArea {
	border: 1px solid lightgray;
	border-radius: 3px;
	resize: none;
}

#signInfo3 {
	width: 750px;
	height: 100px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 18px;
	border-collapse: separate;
	border-spacing: 0 10px;
}

/* textarea스타일 */
#contentTable {
	width: 1200px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
	margin-bottom: 100px;
}

#contentTable th {
	background-color: #EAEAEA;
	border: 1px solid lightgray;
	height: 35px;
}

#contentTable td {
	border: 1px solid lightgray;
	position: relative;
}

#contentTable input {
	width: 96%;
	height: 35px;
	border: 1px solid white;
}

#fileArea {
	width: 1000px;
	height: 200px;
	padding: 5px;
	border: 1px solid lightgray;
	text-align: left;
}
#signContent{
	resize:none;
	padding: 0;
    height: 100%;
    border: 1px solid rgba(0,0,0,0);
}
</style>
</head>
<body>


	<div class="popup-outer">
		<div class="popup-title">기안상세</div>
		<div class="popup-content">
			<h1>휴가계</h1>
			<div id="btnArea">
				<button class="bigBtn" id="signSubmit" style="margin-left: 150px;">결재</button>
			</div>
			<br>
			<form id="signForm" action="#" method="get">
				<table id="signInfo1">
					<tr>
						<th>기안부서</th>
						<td width="400">${sd.deptTitle }</td>
						<th>문서분류</th>
						<td width="400">휴가계</td>
					</tr>
					<tr>
						<th>기안자</th>
						<td>${sd.empName }</td>
						<th>문서번호</th>
						<td>${sd.documentNo }</td>
					</tr>
					<tr>
						<th>기안일시</th>
						<td>${sd.draftDate }</td>
						<td colspan="2" style="display:none;"></td>
					</tr>
				</table>
				<br>
				<table id="signInfo2">
					<tr>
						<th rowspan="2" width="120">결재라인</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
					</tr>
					<tr>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>2</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>3</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>4</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>5</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>6</h2>
							<h3>전지현</h3></td>
					</tr>
					<tr>
						<th>수신참조</th>
						<td colspan="6" align="left">
							<c:if test="${!empty sgList }">
								<c:forEach var="sg" items="${sgList }">
									<c:if test="${sg.signType eq 0 }">
										<span>@${sg.empName } </span>
									</c:if>
								</c:forEach>
							</c:if>
						</td>
					</tr>
				</table>

				<!-- 결재완료시 체크될 부분 -->
				<table id="checkArea">
					<tr>
						<th width="120"></th>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
					</tr>
				</table>
				<table id="signInfo3">
					<thead>
						<tr>
							<th>휴가구분</th>
							<td align="left"><select class="inputs" name=""
								style="height: 35px;">
									<option selected>연차</option>
									<option>오전반차</option>
									<option>오후반차</option>
									<option>경조사</option>
									<option>공가</option>
									<option>병가</option>
									<option>휴직</option>
							</select></td>
							<th >잔여연차</th>
							<td align="left">15 일</td>
						</tr>
						<tr>
							<th>기간</th>
							<td align="left"><input class="inputs" name="" type="date" value="${sd.holidayStart }"> ~ <input
								class="inputs" name="" type="date" value="${sd.holidayEnd }"></td>
							<th>사용일수</th>
							<td align="left"><input type="text" class="inputs" value="1">
								일</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3"><input class="inputs" type="text" style="width: 100%;"
								value="${sd.signTitle }"></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="3"></td>
						</tr>
						<tr>
							<c:choose>
								<c:when test="${empty saList }">
									<td colspan="2">
										첨부된 파일이 없습니다.
									</td>
								</c:when>
								<c:otherwise>
									<td colspan="2" rowspan="2">
										<div id="fileArea">
											<c:forEach var="i" items="${saList }">
												<a href="${pageContext.servletContext.contextPath}/resources/uploadFiles/sign/${i.changeName }" download="${i.originName }">${i.originName }</a><br>											
											</c:forEach>
										</div>
									</td>								
								</c:otherwise>
							</c:choose>
						</tr>
						<tr></tr>
					</thead>
				</table>

				<!-- 테이블값 가져올 el -->
				<c:set var="contentVal" scope="page" />
				<input type="hidden" name="contentTable">
				<table id="contentTable">
						${sd.signContent }
						<!-- <tr>
							<th>휴가사유</th>
						</tr>
						<tr>
							<td rowspan="8" colspan="8">
								<textarea id="signContent" cols="168" rows="24">연차사용</textarea>
							</td>								
						</tr> -->
					</tbody>
				</table>

			</form>
		</div>
	</div>




	<!-- 팝업창 자동 사이즈맞춤용 스크립트 -->
	<script>
		//모든 input요소 readonly처리
		$('input').prop('readonly', true);
		$('textarea').attr('readonly',true);
		$('option').attr('disabled', true);

		
		$(document)
				.ready(
						function() {
							// 팝업 창 크기를 HTML 크기에 맞추어 자동으로 크기를 조정하는 함수.
							var strWidth;
							var strHeight;

							//innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저
							if (window.innerWidth && window.innerHeight
									&& window.outerWidth && window.outerHeight) {
								strWidth = $(".popup-outer").outerWidth()
										+ (window.outerWidth - window.innerWidth);
								strHeight = $(".popup-outer").outerHeight()
										+ (window.outerHeight - window.innerHeight);
							} else {
								var strDocumentWidth = $(document).outerWidth();
								var strDocumentHeight = $(document)
										.outerHeight();

								window.resizeTo(strDocumentWidth,
										strDocumentHeight);

								var strMenuWidth = strDocumentWidth
										- $(window).width();
								var strMenuHeight = strDocumentHeight
										- $(window).height();

								strWidth = $(".popup-outer").outerWidth()
										+ strMenuWidth;
								strHeight = $(".popup-outer").outerHeight()
										+ strMenuHeight;
							}

							//resize
							window.resizeTo(strWidth, strHeight);
						});
	</script>

</body>
</html>