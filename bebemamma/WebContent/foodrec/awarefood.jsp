<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

   <!-- header 시작 -->

<head>
<title>사용자 맞춤형 식품 공유 플랫폼, 베베맘마</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./awarefood.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link
   href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
   rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic&display=swap&subset=korean" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Nanum+Myeongjo&display=swap" rel="stylesheet">

<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">

<link rel="stylesheet" href="../css/animate.css">

<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">

<link rel="stylesheet" href="../css/aos.css">

<link rel="stylesheet" href="../css/ionicons.min.css">

<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/jquery.timepicker.css">


<link rel="stylesheet" href="../css/flaticon.css">

<!--additional item add (intro page icons) -->
<link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">


<link rel="stylesheet" href="../css/icomoon.css">
<link rel="stylesheet" href="../css/style.css">

<link rel="stylesheet" href="../css/custom.css">



<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
  <script>
    function calc(){
       var image = document.getElementById("state_img");
       
      if(weight.value != "" && height.value != ""){
        document.getElementById("result").value = (weight.value * 1)/((height.value * 1 )*(height.value * 1 )) * 10000;
        }
        else{
          document.getElementById("result").value = "";
        }

      if(result.value != "" && age.value != ""){
        if((age.value * 1) <= 12){
          if((result.value * 1) <= 15){
            document.getElementById("state").value = "영양불량";
            image.src = "../img/Starvation.png"; 
          }else if((result.value * 1) >15 && (result.value * 1) <=18){
            document.getElementById("state").value = "정상";
            image.src = "../img/Normal.png";
          }else if((result.value * 1) >18 && (result.value * 1) <= 20){
            document.getElementById("state").value = "비만경향";
            image.src = "../img/Overweight.png";
          }else if((result.value * 1) >=20){
            document.getElementById("state").value = "비만";
            image.src = "../img/Obese.png";
          }
        }
        else if((age.value * 1) > 12 && (age.value * 1) <= 24){
          if((result.value * 1) <= 13){
            document.getElementById("state").value = "영양불량";
            image.src = "../img/Starvation.png"; 
          }else if((result.value * 1) >13 && (result.value * 1) <=15){
            document.getElementById("state").value = "저체중";
            image.src = "../img/UnderWeight.png";
          }else if((result.value * 1) >15 && (result.value * 1) <= 18){
            document.getElementById("state").value = "정상";
            image.src = "../img/Normal.png";
          }else if((result.value * 1) >18 && (result.value * 1) <= 20){
              document.getElementById("state").value = "비만경향";
              image.src = "../img/Overweight.png";
          }else if((result.value * 1) >=20){
            document.getElementById("state").value = "비만";
            image.src = "../img/Obese.png";
          }
        }
      }else{
        document.getElementById("state").value = "";
      }
    }
  </script>
</head>

<body class="goto-here">
   <div class="py-1 bg-primary">
      <div class="container">
         <div
            class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
               <div class="row d-flex">
                  <div class="col-md pr-4 d-flex topper align-items-center">
                     <div
                        class="icon mr-2 d-flex justify-content-center align-items-center">
                        <span class="icon-paper-plane"></span>
                     </div>
                     <% if((String)session.getAttribute("id") == null){ %>
                     <span class="text">로그인 되어있지 않음</span>
                     <% }else{ %>
                     <span class="text"><strong><%=(String)session.getAttribute("id")%>님 안녕하세요!</strong></span>
                     <% } %>
                  </div>
                  <div
                     class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                     <span class="text"><strong>당신의 아이를 위한 이유식정보 제공 &amp; 추천</strong></span>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>


   <!-- header 끝 -->

   <nav
      class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
      id="ftco-navbar">
      <div class="container">
         <a class="navbar-brand" href="./intro.jsp">BEBEMAMMA</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#ftco-nav" aria-controls="ftco-nav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
         </button>


         <% if((String)session.getAttribute("id") == null){ %>
         <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
            <!-- 화면 두개의 필요성 있음 -->
               <li class="nav-item active"><a href="./intro.jsp"
                  class="nav-link">Home</a></li>
               <li class="nav-item"><a href="about.jsp" class="nav-link">사이트 소개</a></li>
               <li class="nav-item"><button class="nav-link"><a href="./reallogin.jsp">로그인</a></button></li>

            </ul>
         </div>

         <% }else{ %>

         <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active">
                  <a href="./intro.jsp" class="nav-link" >Home</a>
               </li>
               <li class="nav-item">
                  <a href="./about.jsp" class="nav-link">사이트 소개</a>
               </li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">우리아이 이유식</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="../foodrec/guide.html">아기 연령대별 섭취 가이드</a> 
                     <a class="dropdown-item" href="../foodrec/age.jsp">이유식 리스트</a> 
                     <a  class="dropdown-item" href="../foodrec/ingre.jsp">필수 14개의 이유식 성분 시각화</a> 
                     <a class="dropdown-item" href="../foodrec/awarefood.jsp">가족력에 따른 주의, 권장 식품(재료)</a> 
                </div>
               </li>
               
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">베베맘마 톡톡</a>
               <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="../bbs/bbs.jsp">리뷰 및 Q&A 게시판</a> 
                     <a class="dropdown-item" href="../qna/consultant.jsp">이유식 전문가가 말한다!</a>
                     <a class="dropdown-item" href="../qna/FAQs.jsp">FAQs</a>
               </div>
               <li class="nav-item"><a href="../mypage/mypage.jsp" class="nav-link">마이페이지</a></li>
               <li class="nav-item"><button href="./logout.jsp" class="nav-link">로그아웃</button></li>
            </ul>
         </div>
            <% } %>


      </div>
   </nav>
   <!-- END nav -->
   
   
   <section class="ftco-section ftco-no-pt ftco-no-pb py-5">
  <div class="container py-4">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-10 ">


        <div class="page-header mt-1">
            <h2>카우프 지수</h2>
        </div>

        <p class="lead">아기의 카우프 지수를 통해 아이 상태를 알아보아요</p>
        <hr />
        <p>&nbsp;</p>
      
  
        <div class="page-header mt-1" >
          
            <h2>1. 비만도(BMI Index)를 계산하는 방법</h2>
        </div>

        <p class="lead">
        [부제] BMI Index : 성인의 비만도를 측정하는 지수</p>
        <hr>
        

일반적으로 영유아들은 성장을 체크할 때 성별,연령별 집단의 신장과 체중의 분포 
즉, 백분위수를 이용하여 판단합니다.  <br />
<p></p>
백분위에서 아이의 위치를 확인하여 현재 상태와 성장 방향을 예측하게 되는데요. <br></br>
 <p></p>
이때 동일 집단에 비교하여 95 백분위 수 이상일 때를 비만이라고 이야기합니다. <br />

<p></p>

<div class="alert alert-warning alert-dismissible mt-3" role="alert">
            <code class="codeblock">[ 비만도(BMI Index) = (실제 체중 - 신장별 이상 체중) / 신장별 이상 체중 x 100 ] </code><br />
</div>
<p></p>
비만도는 공식을 이용하여 계산하기도 하는데, 
이 공식을 이용하여 계산했을 때 10% 이하일 경우에는 체중미달, <p></p>
10%는 정상체중, 10~20%는 과체중/비만 경향, 
20% 이상이면 비만, 30% 이상일 때를 고도비만으로 봅니다.

<hr />
        <p></p>
        <p></p>

<p>&nbsp;</p>        
<p>&nbsp;</p>        

<h4><center>이제 아기의 상태를 보기 위한 '카우프 지수'를 설명드리겠습니다.</center></h4>

   <p>&nbsp;</p>
   <p>&nbsp;</p>      

        <div class="page-header mt-1">
            <h2>2. '카우프 지수(Kaup Index)'를 계산하는 방법</h2>
        </div>

        <p class="lead">아기의 비만도를 측정하는 지수</p>
        <hr>


이 지수는 5세 미만의 어린이, 특히 2세 미만의 비만 판정에 많이 쓰이는 지수로 계산법은 다음과 같습니다 <br />



<div class="alert alert-warning alert-dismissible mt-3" role="alert">
            <code class="codeblock">[ 카우프지수(Kaup Index) = (체중(g) / (신장(cm) * 신장(cm))) * 10 ] </code><br />
</div>

    
이때 체중은 그램 단위로, 신장은 센티미터 단위로 계산해야 합니다. <br />

<p></p>

아이가 예를 들어 12.8kg에 82cm라고 생각해봅시다. 그렇다면 체중은 12800, 신장은 82로 계산을 할 수 있습니다. <br />

<p>&nbsp;</p> 



<p></p>

기준) <br />



1세 미만 - 15이하 : 영양불량 / 15~18 : 정상 / 18~20 : 비만 경향 / 20이상 : 비만 <br />


1세 ~ 2세 - 14이하 : 영양불량 / 14~17 : 정상 / 17~18.5 : 비만 경향 / 18.5 이상 : 비만 <br />

<p>&nbsp;</p> 
<p>&nbsp;</p> 

<h4><center>직접 계산하기 복잡하시죠? 어떤 결과가 나올지 빨리 알고 싶으시죠?</center></h4>


<h4><center>그래서 베베맘마에서 아이의 카우프 지수를 측정할 수 있는 도구를 만들었습니다.</center></h4> <br />


<h4><center>카우프 지수에 따른 결과에 따라 아이에게 이유식을 만들어 줄 때</center></h4> <br />
<h4><center>어떻게 할 지 참고하면 좋겠죠?</center></h4> <br />


        <p>&nbsp;</p>        
<p>&nbsp;</p> 
        
<h4><center>&lt;카우프 지수 계산 도구&gt;</center></h4> <br />

   <table border="1">
      <th>$</th>
      <th>현재 상태</th>
      <th>카우프지수</th>
      <th>나이(개월)</th>
      <th>아이 키(cm)</th>
      <th>아이 몸무게(kg)</th>
      <tr>
        <!-- 첫번째 줄 시작 -->
        <td>카우프지수</td>
        <td style="background-color: #d0d0d0;"><img id = "state_img" style="width:100px; height:100px;" src="../img/Normal.png" alt="My Image"><br>   
        <input style="background-color: #d0d0d0;" type="text" id="state" disabled /></td>
        <td style="background-color: #d0d0d0;"><input style="background-color: #d0d0d0;" type="text" id="result" disabled /></td>
        <td><input type="text" id="age" onkeyup="calc()" /></td>
        <td><input type="text" id="height" onkeyup="calc()" /></td>
        <td><input type="text" id="weight" onkeyup="calc()" /></td>
      </tr>
      <!-- 첫번째 줄 끝 -->
    </table>

    </div>
  </div>

      </div>

</section>
   



<!-- footer 시작 -->

   <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
         <div class="row d-flex justify-content-center py-5">
            <div class="col-md-6">
               <h2 style="font-size: 22px;" class="mb-0">아기 이유식에 대한 최신 정보를 받고 싶으면</h2>
               <h2 style="font-size: 22px;" class="mb-0">구독할 이메일을 오른쪽 칸에 기재해주세요~</h2>
               <span>Get e-mail updates about our latest news</span>
            </div>
            <div class="col-md-6 d-flex align-items-center">
               <form action="#" class="subscribe-form">
                  <div class="form-group d-flex">
                     <input type="text" class="form-control"
                        placeholder="Enter email address"> <input type="submit"
                        value="Subscribe" class="submit px-3">
                  </div>
               </form>
            </div>
         </div>
      </div>
   </section>
   <footer class="ftco-footer ftco-section">
      <div class="container">
         <div class="row">
            <div class="mouse">
               <a href="#" class="mouse-icon">
                  <div class="mouse-wheel">
                     <span class="ion-ios-arrow-up"></span>
                  </div>
               </a>
            </div>
         </div>
         <div class="row mb-5">
            <div class="col-md">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">베베맘마</h2>
                  <p>Bebemamma always think about baby with mom's heart</p>
                  <ul
                     class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">

                     <li class="ftco-animate">
                     <a href="https://www.facebook.com/Bebemamma-106180030764796/?modal=admin_todo_tour">
                     <span class="fa fa-twitter"></span></a>
                     </li>
                     <li class="ftco-animate">
                     <a href="https://www.facebook.com/Bebemamma-106180030764796/?modal=admin_todo_tour">
                     <span class="fa fa-facebook-official"></span></a>
                     </li>

                     <li class="ftco-animate"><a href="#">
                     <span class="fa fa-instagram"></span></a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-4 ml-md-5">
                  <h2 class="ftco-heading-2">Menu</h2>
                  <ul class="list-unstyled">
                     <li><a href="./intro.jsp" class="py-2 d-block">Home</a></li>
                     <li><a href="./about.jsp" class="py-2 d-block">About</a></li>
                     <li><a href="./" class="py-2 d-block">Baby Food</a></li>
                     <li><a href="./" class="py-2 d-block">Contact Us(Journal)</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md-4">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">Help</h2>
                  <div class="d-flex">
                     <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                        <li><a href="#" class="py-2 d-block">Recommendation Information</a></li>
                        <li><a href="#" class="py-2 d-block">Essential 14 Baby Food Products</a></li>
                        <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                        <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                     </ul>
                     <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">FAQs</a></li>
                        <li><a href="#" class="py-2 d-block">Contact</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">혹시 불편한 사항이 있으신가요?</h2>
                  <div class="block-23 mb-3">
                     <ul>
                        <li><span class="icon icon-map-marker"></span><span
                           class="text">31253) 충청남도 천안시 창업지원센터 Inframince</span></li>
                        <li><a href="#"><span class="icon icon-phone"></span><span
                              class="text">Tel. 041-560-1114</span></a></li>
                        <li><a href="#"><span class="icon icon-envelope"></span><span
                              class="text">bebemamma.forbaby@gmail.com</span></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-12 text-center">

               <p>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;
                  <script>
                     document.write(new Date().getFullYear());
                  </script>
                  All rights reserved | Bebemamma <i
                     class="icon-heart color-danger" aria-hidden="true"></i> by <a
                     href="https://colorlib.com" target="_blank">inframince</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
               </p>
            </div>
         </div>
      </div>
   </footer>



   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
   </div>


   <script src="../js/jquery.min.js"></script>
   <script src="../js/jquery-migrate-3.0.1.min.js"></script>
   <script src="../js/popper.min.js"></script>
   <script src="../js/bootstrap.min.js"></script>
   <script src="../js/jquery.easing.1.3.js"></script>
   <script src="../js/jquery.waypoints.min.js"></script>
   <script src="../js/jquery.stellar.min.js"></script>
   <script src="../js/owl.carousel.min.js"></script>
   <script src="../js/jquery.magnific-popup.min.js"></script>
   <script src="../js/aos.js"></script>
   <script src="../js/jquery.animateNumber.min.js"></script>
   <script src="../js/bootstrap-datepicker.js"></script>
   <script src="../js/scrollax.min.js"></script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="../js/google-map.js"></script>
   <script src="../js/main.js"></script>

   <!-- footer 끝 -->

</body>
</html> 