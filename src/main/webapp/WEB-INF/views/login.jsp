<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login.jsp</title>
<link rel="stylesheet" href="resources/style.css" type="text/css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<h1>[Login.jsp</h1>
	<div id="top">
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
	<div>
		<form action="loginPost" method="post">
			<table border=1 width=300>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="uid"></td>
					<td rowspan=2><input type="submit" value="Login" style="width:100%;"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="upw"></td>
				</tr>
			</table>
		</form>
		<div id="naver_id_login"></div>
	</div>
</body>
<script type="text/javascript">
  	var naver_id_login = new naver_id_login("ybKemyEJH16DmJ3Mx0X1", "http://localhost:8088/web/naverlogin");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("green", 3,40);
  	naver_id_login.setDomain("YOUR_SERVICE_URL");
  	naver_id_login.setState(state);
  	//naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
</html>