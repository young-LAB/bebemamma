<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

   <!-- header 시작 -->

<head>
<title>사용자 맞춤형 식품 공유 플랫폼, 베베맘마</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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



<!-- FAQs 부분에서 추가 -->

<!-- 부트스트랩 CSS 추가하기 -->
    <link rel="stylesheet" href="../css/bootstrap-1.0.min.css">


<style>
      .flaticon-recommended:before { 
      content: "\f103"; 
      font-size: 50px;
      margin-left: 8px;
      margin-right: 5px;
      }
      
      .flaticon-circular-graphic-outline-with-quarter-apart:before { 
      content: "\f100"; 
      font-size: 50px;
      margin-left: 8px;
      margin-right: 5px;
      }
      
      .flaticon-diet:before { 
      content: "\f104"; 
      font-size: 50px;
      margin-left: 8px;
      margin-right: 5px;
      }
      
      .flaticon-body-mass-index:before { 
      content: "\f102"; 
      font-size: 50px;
      margin-left: 8px;
      margin-right: 5px;
      }
      
</style>

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
         <a class="navbar-brand" href="../intro/intro.jsp">BEBEMAMMA</a>
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
                  <a href="../intro/intro.jsp" class="nav-link" >Home</a>
               </li>
               <li class="nav-item">
                  <a href="../intro/about.jsp" class="nav-link">사이트 소개</a>
               </li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">우리아이 이유식</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="../foodrec/guide.jsp">아기 연령대별 섭취 가이드</a> 
                     <a class="dropdown-item" href="../foodrec/age.jsp">이유식 리스트</a> 
                     <a  class="dropdown-item" href="../foodrec/ingre.jsp">필수 14개의 이유식 성분 시각화</a> 
                     <a class="dropdown-item" href="../foodrec/awarefood.jsp">카우프 지수에 따른 주의, 권장 식품(재료)</a> 
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
               <li class="nav-item"><button href="../intro/logout.jsp" class="nav-link">로그아웃</button></li>

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
              <h2>이유식 전문가가 말한다!</h2>
          </div>
       
<hr />         
<br />



<div class="row">
 <div class="col s12 m12 l5">
    <iframe width="426" height="240" src="https://www.youtube.com/embed/Edk-VB96C2k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 
 </div>
 <div class="col s12 m12 l7">
   <h5>
     이유식 똑똑하게 고르려면? &emsp;<a href="https://www.ibabynews.com/news/articleView.html?idxno=71027" target="_blank"><i class="material-icons">Learn more</i></a>
   </h5>
   <hr>
   <ol style="font-size: larger">
     <li>아기의 발달 능력에 맞춰 월령별 섭취 가능 식품과 섭취하면 안 될 식품을 확인</li>
     <li>HACCP(해썹) 인증 여부 확인</li>
     <li>안전한 용기에 이유식을 담았는지 확인</li>
     <li>이유식을 담기 전 용기를 안전하게 살균했는지 확인</li>
   </ol>
 </div>
</div>
<br>
<div class="row">
 <div class="col s12 m12 l5">
   <iframe width="426" height="240" src="https://www.youtube.com/embed/qUq0BPW2M78" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 </div>
 <div class="col s12 m12 l7">
   <h5>
     우리아이 첫 이유식 만들기! &emsp;<a href="https://www.ibabynews.com/news/articleView.html?idxno=78194" target="_blank"><i class="material-icons">Learn more</i></a>
   </h5>
   <hr>
   <br />
   <ol style="font-size: larger">
     <li>의사쌤이 알려주는 10분만에 이유식만들기</li>
     <li>우리아기 이유식은 언제부터 시작해도 되는걸까요?</li>
     <li>이유식 먹일때 쌀 알러지가 생길수 있다는데...?</li>
   </ol>
 </div>
</div>
<br>
<div class="row">
 <div class="col s12 m12 l5">
<iframe width="426" height="240" src="https://www.youtube.com/embed/S1XWSSGpuGc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
 </div>
 <div class="col s12 m12 l7">
   <h5>
     이유식을 잘 안 먹거나 조금 먹는다면?&emsp;<a href="https://www.youtube.com/user/ibabynews" target="_blank"><i class="material-icons">Learn more</i></a>
   </h5>
   <hr>
   
   <ol style="font-size: larger">
     <li>우리아이 이유식 만들기 팁!</li>
     <li>생후 6개월이 지나면 엄마몸에서 받은 영양소가 다 사라진 다는데...?</li>
     <li>초기이유식에 두가지 식재료를 섞으면 안된다고?</li>
   </ol>
 </div>
</div>
<br>


<div class="row">
 <div class="col s12 m12 l5">
 <iframe width="426" height="240" src="https://www.youtube.com/embed/S2WqHFfeZI0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 </div>
 <div class="col s12 m12 l7">
   <h5>
     장운동을 도와 변비를 예방해주는 이유식&emsp;<a href="https://www.facebook.com/EBSparenting/" target="_blank"><i class="material-icons">Learn more</i></a>
   </h5>
   <hr>
   
   <ol style="font-size: larger">
     <li>초기이유식은 어떤 순서대로 먹여야 되는거지 ?</li>
     <li>변비에 걸린 우리 아기 바나나이유식을 먹이면 되는걸까?</li>
   </ol>
 </div>
</div>
<br>
     </div>
   </main>
          
     
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
                     <input type="text" class="form-control" placeholder="Enter email address"> 
                        <input type="submit" value="Subscribe" class="submit px-3">
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


   <!-- FAQs -->
    <!-- 제이쿼리 자바스크립트 추가하기 -->
    <script src="../js/jquery-3.2.2.min.js"></script>
    <!-- Popper 자바스크립트 추가하기 -->
    <script src="../js/popper-1.0.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가하기 -->
    <script src="../js/bootstrap.min.js"></script>
   

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