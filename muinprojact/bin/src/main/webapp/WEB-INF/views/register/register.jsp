<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
	<!-- 컨텐츠 -->
	
		<div class="contents">
		<h2 class="tit">무인마켓 회원가입</h2>
		<form action="register" method="post">
			<!-- 회원가입 박스 -->
			<div class="registerBox">
				<div class="regiFlex">
					<label for="id">아이디</label>
					<input type="text" name="id1" id="id">
				</div>
				<div class="regiFlex">
					<label for="pw">비밀번호</label>
					<input type="password" name="pw1" id="pw">
				</div>
				<div class="regiFlex">
					<label for="name">이름</label>
					<input type="text" name="name1" id="name">
				</div>
				<div class="regiFlex">
					<label for="birth">생년월일</label>
					<input type="text" name="birth" id="birth">
				</div>
				<div class="regiFlex">
					<label for="address">주소</label>
					<input type="text" name="address1" id="address">
				</div>
				<!-- 핸드폰 설정 시 - 사용할 건지? 확인 필요 -->
				<div class="regiFlex">
					<label for="phone">핸드폰</label>
					<input type="text" name="phone1" id="phone">
				</div>
				<div class="regiFlex">
					<label for="profile">사진 업로드</label>
					<input type="file" name="profile1" id="profile">
				</div>
			</div><!-- // register_box -->
			<div class="btnBox">
				<button type="button" class="backBtn btn">뒤로가기</button>
				<button type="submit" class="submitBtn btn">회원가입</button>
			</div>
		</form>
	</div>
	<!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
	 
