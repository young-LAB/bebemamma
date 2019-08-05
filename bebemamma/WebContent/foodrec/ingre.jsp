<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="./ingre.css" />


	<script src="https://d3js.org/d3.v4.js"></script>
    <script src="https://d3js.org/d3-scale-chromatic.v1.min.js"></script>
    
</head>
<body>
<%@include file="../include/header.jsp"%>

<table>
      <h3>전체 영양소 정보</h3>
	<tr>
	    <td><input type="checkbox" name="chk_info" value="감자">감자</td>
	    <td><input type="checkbox" name="chk_info" value="흰살생선">흰살생선</td>
      <td><input type="checkbox" name="chk_info" value="닭고기">닭고기</td>
	</tr>
	<tr>
	    <td><input type="checkbox" name="chk_info" value="고구마">고구마</td>
	    <td><input type="checkbox" name="chk_info" value="버섯류">버섯류</td>
      <td><input type="checkbox" name="chk_info" value="어패류">어패류</td>
	</tr>
  <tr>
    <td><input type="checkbox" name="chk_info" value="쇠고기">쇠고기</td>
    <td><input type="checkbox" name="chk_info" value="미역">미역</td>
    <td><input type="checkbox" name="chk_info" value="시금">시금치</td>
  </tr>
    </table>

    <h3>선택한 재료의 영양소</h3>
    <svg id = "my_ingre"></svg>
    <script src="./ingre.js"></script>
<br>
<%@include file="../include/footer.jsp"%>
</body>
</html>