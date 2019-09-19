<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- header 시작 -->

<head>
<title>사용자 맞춤형 식품 공유 플랫폼, 베베맘마</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link
   href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
   rel="stylesheet">

<link
   href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean"
   rel="stylesheet">

<link
   href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap"
   rel="stylesheet">

<link
   href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic&display=swap&subset=korean"
   rel="stylesheet">

<link
   href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Nanum+Myeongjo&display=swap"
   rel="stylesheet">

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
                     <%
                        if ((String) session.getAttribute("id") == null) {
                     %>
                     <span class="text">로그인 되어있지 않음</span>
                     <%
                        } else {
                     %>
                     <span class="text"><strong><%=(String) session.getAttribute("id")%>님
                           안녕하세요!</strong></span>
                     <%
                        }
                     %>
                  </div>
                  <div
                     class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                     <span class="text"><strong>당신의 아이를 위한 이유식정보 제공
                           &amp; 추천</strong></span>
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


         <%
            if ((String) session.getAttribute("id") == null) {
         %>
         <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
               <!-- 화면 두개의 필요성 있음 -->
               <li class="nav-item active"><a href="./intro.jsp"
                  class="nav-link">Home</a></li>
               <li class="nav-item"><a href="about.jsp" class="nav-link">사이트
                     소개</a></li>
               <li class="nav-item"><button class="nav-link">
                     <a href="./reallogin.jsp">로그인</a>
                  </button></li>

            </ul>
         </div>

         <%
            } else {
         %>

         <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active"><a href="../intro/intro.jsp"
                  class="nav-link">Home</a></li>
               <li class="nav-item"><a href="../intro/about.jsp" class="nav-link">사이트
                     소개</a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">우리아이
                     이유식</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="../foodrec/guide.jsp">아기 연령대별
                        섭취 가이드</a> <a class="dropdown-item" href="../foodrec/age.jsp">이유식
                        리스트</a> <a class="dropdown-item" href="../foodrec/ingre.jsp">필수
                        14개의 이유식 성분 시각화</a> <a class="dropdown-item"
                        href="../foodrec/awarefood.jsp">카우프 지수에 따른 주의, 권장 식품(재료)</a>
                  </div></li>

               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" id="dropdown04"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">베베맘마
                     톡톡</a>
                  <div class="dropdown-menu" aria-labelledby="dropdown04">
                     <a class="dropdown-item" href="../foodrec/.jsp">리뷰 및 Q&A 게시판</a>
                     <a class="dropdown-item" href="../qna/consultant.jsp">이유식
                        전문가가 말한다!</a> <a class="dropdown-item" href="../qna/FAQs.jsp">FAQs</a>
                  </div>
               <li class="nav-item"><a href="../mypage/mypage.jsp"
                  class="nav-link">마이페이지</a></li>
               <li class="nav-item"><button href="./logout.jsp"
                     class="nav-link">로그아웃</button></li>

            </ul>
         </div>
         <%
            }
         %>


      </div>
   </nav>
   <!-- END nav -->

   <section class="ftco-section ftco-no-pt ftco-no-pb py-5">
      <div class="container py-4">
         <div class="row d-flex justify-content-center py-5">
            <div class="col-md-10 ">


               <div class="page-header mt-1">
                  <h2>아기 연령대별 섭취 가이드</h2>
               </div>

               <p class="lead">아기 월령에 따라 먹을 수 있는 식품과 먹지 못하는 식품에 주의해주세요!</p>
               <hr>

               <div class="col-md-12 d-flex ftco-animate">
                  <div class="blog-entry align-self-stretch d-md-flex">
                     <a
                        href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-1-from-birth-until-around-6-months"
                        class="block-20"
                        style="background-image: url('../img/image_1.jpg');"> </a>
                     <div class="text d-block pl-md-4">
                        <div class="meta mb-3">
                           <div>
                              <a href="#">2019년 6월 최종 업데이트</a>
                           </div>

                           <div>
                              <a href="#" class="meta-chat"><span class="icon-chat"></span>
                              </a>
                           </div>
                        </div>
                        <h3 class="heading">
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-1-from-birth-until-around-6-months">1단계
                              - 생후 6개월까지</a>
                        </h3>
                        <p>모유, 분유, 미음 아기가 생후 6개월까지 필요한 모든 영양소는 모유와 분유 그리고 미음에서 얻을 수
                           있습니다. 모유수유는 비용도 들어가지 않고 자연적이며 성장하는 아기가 때때로 필요로 하는 영양공급에 맞춰 적응할
                           수 있습니다. 분유도 괜찮은 선택지입니다. 생후 6개월전 1~2개월부터는 미음으로 젖떼기를 시작하면 됩니다.</p>
                        <p>
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-1-from-birth-until-around-6-months"
                              class="btn btn-primary py-2 px-3">Read more</a>
                        </p>
                     </div>
                  </div>
               </div>
               <div class="col-md-12 d-flex ftco-animate">
                  <div class="blog-entry align-self-stretch d-md-flex">
                     <a
                        href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-2-from-around-6-until-7-months"
                        class="block-20"
                        style="background-image: url('../img/image_2.jpg');"> </a>
                     <div class="text d-block pl-md-4">
                        <div class="meta mb-3">
                           <div>
                              <a href="#">2019년 7월 1일 최종 업데이트</a>
                           </div>

                           <div>
                              <a href="#" class="meta-chat"><span class="icon-chat"></span>
                              </a>
                           </div>
                        </div>
                        <h3 class="heading">
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-2-from-around-6-until-7-months">2단계
                              - 생후 6개월 전후</a>
                        </h3>
                        <p>이유식은 혼합 식단을 아기에게 처음 먹이는 가장 좋은 방법입니다. 과일, 채소 등의 부드러운 이유식은
                           브라운 핸드블렌더 하나면 쉽게 준비 가능합니다. 우선 브라운 핸드블렌더를 이용하여 고속으로 블렌딩 해보세요.
                           바나나가 특히 좋으며 물, 모유 또는 분유를 이용하며 농도를 균일하게 맞춰주세요.</p>
                        <p>
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-2-from-around-6-until-7-months"
                              class="btn btn-primary py-2 px-3">Read more</a>
                        </p>
                     </div>
                  </div>
               </div>
               <div class="col-md-12 d-flex ftco-animate">
                  <div class="blog-entry align-self-stretch d-md-flex">
                     <a
                        href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-3-from-around-7-until-9-months"
                        class="block-20"
                        style="background-image: url('../img/image_3.jpg');"> </a>
                     <div class="text d-block pl-md-4">
                        <div class="meta mb-3">
                           <div>
                              <a href="#">2019년 7월 7일 최종 업데이트</a>
                           </div>

                           <div>
                              <a href="#" class="meta-chat"><span class="icon-chat"></span>
                              </a>
                           </div>
                        </div>
                        <h3 class="heading">
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-3-from-around-7-until-9-months">3단계
                              - 생후 7~9개월</a>
                        </h3>
                        <p>생후 8개월 정도 되면 아기들은 음식을 손으로 직접 잡을 수 있고 부드러운 과일이나 익힌 채소와 같은
                           ‘핑거 푸드’를 좋아하게 됩니다. 구운 야채를 특히 좋아합니다. 질식의 위험이 있기 때문에 식사 때마다 부모의
                           보살핌이 필요하다는 점 잊지 마세요. 여러분이 무엇을 선택하든, 과일과 야채를 철저히 씻고 주방에서 좋은 위생
                           기준을 지키도록 하는 것이 중요합니다.</p>
                        <p>
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-3-from-around-7-until-9-months"
                              class="btn btn-primary py-2 px-3">Read more</a>
                        </p>
                     </div>
                  </div>
               </div>
               <div class="col-md-12 d-flex ftco-animate">
                  <div class="blog-entry align-self-stretch d-md-flex">
                     <a
                        href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-4-from-around-9-until-12-months"
                        class="block-20"
                        style="background-image: url('../img/image_4.jpg');"> </a>
                     <div class="text d-block pl-md-4">
                        <div class="meta mb-3">
                           <div>
                              <a href="#">2019년 8월 2일 최종 업데이트</a>
                           </div>

                           <div>
                              <a href="#" class="meta-chat"><span class="icon-chat"></span>
                              </a>
                           </div>
                        </div>
                        <h3 class="heading">
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-4-from-around-9-until-12-months">4단계
                              - 생후 9~12개월</a>
                        </h3>
                        <p>9개월에서 12개월 사이의 아기는 몇 가지 좋아하는 음식을 찾았을 수도 있고, 도움 없이 직접 먹기
                           시작했을 수도 있습니다. 몇 달이 지나면서 새로운 맛으로 아기의 미각을 계속 넓혀줘야 합니다. 채소와 딱딱한
                           과일은 모두 잘 익혀 자르거나 브라운 핸드 블렌더를 저속으로 사용하여 블렌딩해주면 됩니다.</p>
                        <p>
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-4-from-around-9-until-12-months"
                              class="btn btn-primary py-2 px-3">Read more</a>
                        </p>
                     </div>
                  </div>
               </div>
               <div class="col-md-12 d-flex ftco-animate">
                  <div class="blog-entry align-self-stretch d-md-flex">
                     <a
                        href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-5-from-around-13-until-23-months"
                        class="block-20"
                        style="background-image: url('../img/image_5.jpg');"> </a>
                     <div class="text d-block pl-md-4">
                        <div class="meta mb-3">
                           <div>
                              <a href="#">2019년 9월 1일 최종 업데이트</a>
                           </div>

                           <div>
                              <a href="#" class="meta-chat"><span class="icon-chat"></span>
                              </a>
                           </div>
                        </div>
                        <h3 class="heading">
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-5-from-around-13-until-23-months">5단계
                              - 생후 13~23개월</a>
                        </h3>
                        <p>이 시기에 식사를 온 가족이 함께 하는 습관을 들이는 것이 좋습니다. 다른 가족 구성원들이 먹는 식사와
                           비슷한 이유식을 준비하는 것은 매우 좋은 생각입니다. 그래도 아기는 여전히 부드럽고 먹기 쉬운 음식을 선호할
                           것이라는 점을 잊지 마세요.</p>
                        <p>
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-5-from-around-13-until-23-months"
                              class="btn btn-primary py-2 px-3">Read more</a>
                        </p>
                     </div>
                  </div>
               </div>
               <div class="col-md-12 d-flex ftco-animate">
                  <div class="blog-entry align-self-stretch d-md-flex">
                     <a
                        href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-6-from-24-months-upwards"
                        class="block-20"
                        style="background-image: url('../img/image_6.jpg');"> </a>
                     <div class="text d-block pl-md-4">
                        <div class="meta mb-3">
                           <div>
                              <a href="#">2019년 9월 5일 최종 업데이트</a>
                           </div>

                           <div>
                              <a href="#" class="meta-chat"><span class="icon-chat"></span>
                              </a>
                           </div>
                        </div>
                        <h3 class="heading">
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-6-from-24-months-upwards">6단계
                              - 생후 24개월 이상</a>
                        </h3>
                        <p>아이들이 두 번째 생일을 맞을 때쯤에는 적은 양이지만 가족들이 먹는 음식을 함께 섭취하고, 또한 많은
                           과일과 채소도 먹어야 합니다. 이 단계까지 아이들의 식단에는 어류와 식물성 기름 등과 같이 불포화 지방을 더 많이
                           포함하고 버터, 치즈, 육류, 그리고 케이크 및 페이스트리와 같은 포화 지방 함량이 높은 식품의 과도한 섭취는
                           피해야 합니다.</p>
                        <p>
                           <a
                              href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-6-from-24-months-upwards"
                              class="btn btn-primary py-2 px-3">Read more</a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>


         <div class="row d-flex justify-content-center py-5">
            <div class="col-md-10 ">
               <div class="page-header mt-1">
                  <h3 class="heading">Tag Cloud</h3>
               </div>
               <div class="tagcloud">
                  <a href="#" class="tag-cloud-link">Top : 맨 처음부터 천천히 보기</a> <a
                     href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-1-from-birth-until-around-6-months"
                     class="tag-cloud-link"> 우리 아이 이유식 1단계</a> <a
                     href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-2-from-around-6-until-7-months"
                     class="tag-cloud-link">우리 아이 이유식 2단계</a> <a
                     href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-3-from-around-7-until-9-months"
                     class="tag-cloud-link">우리 아이 이유식 3단계</a> <a
                     href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-4-from-around-9-until-12-months"
                     class="tag-cloud-link">우리 아이 이유식 4단계</a> <a
                     href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-5-from-around-13-until-23-months"
                     class="tag-cloud-link">우리 아이 이유식 5단계</a> <a
                     href="https://www2.braunhousehold.com/ko-kr/baby-nutrition-centre/the-stages-of-feeding/stage-6-from-24-months-upwards"
                     class="tag-cloud-link">우리 아이 이유식 6단계</a>
               </div>
            </div>
            
         <div class="container py-4">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-10 ">

               <div class="page-header mt-1">
                  <h3 class="heading">Mom's Love And Attention</h3>
               </div>
                 
                 <p class="lead">아기에 대한 사랑은 엄마의 사랑과 관심으로부터 시작됩니다!</p>
                 
                 

    </div>
  </div>

      </div>

</section>
                 



   <!-- .section -->



   <!-- footer 시작 -->

   <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
         <div class="row d-flex justify-content-center py-5">
            <div class="col-md-6">
               <h2 style="font-size: 22px;" class="mb-0">아기 이유식에 대한 최신 정보를 받고
                  싶으면</h2>
               <h2 style="font-size: 22px;" class="mb-0">구독할 이메일을 오른쪽 칸에
                  기재해주세요~</h2>
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

                     <li class="ftco-animate"><a
                        href="https://www.facebook.com/Bebemamma-106180030764796/?modal=admin_todo_tour">
                           <span class="fa fa-twitter"></span>
                     </a></li>
                     <li class="ftco-animate"><a
                        href="https://www.facebook.com/Bebemamma-106180030764796/?modal=admin_todo_tour">
                           <span class="fa fa-facebook-official"></span>
                     </a></li>

                     <li class="ftco-animate"><a href="#"> <span
                           class="fa fa-instagram"></span></a></li>
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
                     <li><a href="./" class="py-2 d-block">Contact
                           Us(Journal)</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md-4">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">Help</h2>
                  <div class="d-flex">
                     <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                        <li><a href="#" class="py-2 d-block">Recommendation
                              Information</a></li>
                        <li><a href="#" class="py-2 d-block">Essential 14 Baby
                              Food Products</a></li>
                        <li><a href="#" class="py-2 d-block">Terms &amp;
                              Conditions</a></li>
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
                  All rights reserved | Bebemamma <i class="icon-heart color-danger"
                     aria-hidden="true"></i> by <a href="https://colorlib.com"
                     target="_blank">inframince</a>
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