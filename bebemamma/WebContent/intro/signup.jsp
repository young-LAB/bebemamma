<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

	  fieldset {
	       margin:20px;
	       width:800px;
	       padding:30px;
	       border:solid 2px #000e6f;
	       background:#f2f5ff;
	  }
	  h1#signup {
	    margin-top: 20px;
	    margin-bottom: 30px;
	  }
	  input.tx {
	    margin: 5px;
	    height: 25px;
	    width:150px;
	    border: 1px solid #c5c5c5;
	    border-radius: 5px;
	  }
	  button{
	    margin: 5px;
	    height: 30px;
	    width: 50px;
	    background: #0d0098;
	    font-size: 15px;
	    color: white;
	    border-radius: 5px;
	    display:inline-block;
	    text-align: center;
	  }
	  </style>
</head>
<body>
<%@include file="../include/header.jsp"%>
<form action="#" method="get">
    <fieldset>

      <h1 id="signup">회원가입</h1>
      <p>이름 : <input class="tx" type="text" name="name" placeholder="이름 입력" /></p>
      <p>현재 아이의 연령대는?<br>
        <input class="rd" type="radio" name="age" value="0~4개월" />0~4개월
        <input class="rd" type="radio" name="age" value="4~9개월" />4~9개월
        <input class="rd" type="radio" name="age" value="9~24개월" />9~24개월
        <input class="rd" type="radio" name="age" value="2~3세" />2~3세
        <input class="rd"v type="radio" name="age" value="3~4세" />3~4세
        <input class="rd" type="radio" name="age" value="4~5세" />4~5세
        <input class="rd" type="radio" name="age" value="5세 이상" />5세 이상
      </p>
      <p> 아이의 성별은? <br>
        <input class="rd" type="radio" name="gender" value="남" />남자
        <input class="rd" type="radio" name="gender" value="여" />여자
      </p>

      <p>현재 아이의 키, 몸무게를 입력해주세요. (카우프 지수 측정용)<br>
        <input class="tx"type="text" name="height" placeholder="키 입력" />cm
      <input class="tx" type="text" name="weight" placeholder="몸무게 입력" />kg</p>

      <p>아이의 가족력에 대해 체크해주세요.<br>
        <input class="ch" type="checkbox" name="history" value="고혈압" />고혈압
        <input class="ch" type="checkbox" name="history" value="아토피" />아토피
        <input class="ch" type="checkbox" name="history" value="당뇨병" />당뇨병
        <input class="ch" type="checkbox" name="history" value="심장병" />심장병
        <input class="ch" type="checkbox" name="history" value="뇌질환" />뇌질환
      </p>

      <p>아이가 가지고 있는 알레르기에 대해 체크해주세요.<br>
        <input class="ch" type="checkbox" name="allergy" value="땅콩" />땅콩
        <input class="ch" type="checkbox" name="allergy" value="계란" />계란
        <input class="ch" type="checkbox" name="allergy" value="복숭아" />복숭아
        <input class="ch" type="checkbox" name="allergy" value="갑각류" />갑각류
        <input class="ch" type="checkbox" name="allergy" value="우유" />우유 
        <input class="ch" type="checkbox" name="allergy" value="기타" />기타 <input class="tx" type="text" name="allergy" placeholder="알레르기를 입력해주세요." />
      </p>

      <p><button onclick="#" />완료!</p>
    </fieldset>
  </form>
</body>
</html>