<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
      String sessionId = (String)session.getAttribute("id");
	   %>
      <script>
        $(document).ready(function(){
            var session = '<%= sessionId %>';
            if(session === "null"){
                $('#myPage').hide();
            } else {
                $('#login').hide();
            }
        });
     </script>
</div><!-- // contents -->
			<!-- 풋터 -->
			<footer>
					<ul  class="footerNavbar">
						<li><a href="#">
									<span><i class="fas fa-bars"></i></span>
									<span>카테고리</span>
								</a>
						</li>
						<li id="login"><a href="login">
									<span><i class="fas fa-user-plus"></i></span>
									<span>로그인</span>
								</a>
						</li>
						<li><a href="myPage">
									<span><i class="fas fa-user-plus"></i></span>
									<span>마이페이지</span>
								</a>
						</li>
						<li><a href="#">
									<span><i class="fas fa-plus-circle"></i></span>
									<span>등록</span>
								</a>
						</li>
						<!-- 추후에 추가될 수도 있음 -->
					</ul>
			</footer>

	</body>
</html>