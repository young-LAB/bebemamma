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
              <h2>FAQs</h2>
          </div>
            
          <p class="lead">회원님의 자주 묻는 궁금증을 풀어드립니다.</p>
          <hr>
    
          <div class="panel panel-default">
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <div class="accordion" id="accordion">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse1">▶ 이 사이트는 어떤 사용자에게 적합하나요?</a>
              </h4>
            </div>
            <div id="collapse1" class="panel-collapse collapse in">
              <div class="panel-body">
                저희 식품 공유 웹 플랫폼 사이트는 <strong>만 24개월 미만의 아기를 키우고 있는 부모님들이 </strong> 이용하기 적합합니다.
              </div>
            </div>
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">▶  이유식이 너무 늦을 경우 어떤 문제가 있을까요? </a>
              </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse in">
              <div class="panel-body">
               <strong>6개월이 지나도록</strong> 이유식을 시작하지 않으면 나중에는 점점 더 힘들어 집니다.
            좀 더 늦으면 덩어리가 있는 음식은 다 뱉어 버리고 심지어 분유 이외의 음식은 다 토하는 아기도 있습니다.
            이유식이 늦은 아기들은 분유와 같은 액체 음식을 탐닉해서 <strong>비만</strong>의 위험이 있으며, 심지어 <strong>발달이 늦어지기도</strong> 합니다.
            더불어 컵이나 스푼의 사용시기도 더 늦어질 수 있으니 적절한 시기에 이유식을 시작하도록 해 주셔야 합니다.
              </div>
            </div>
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">▶ 이유식을 먹일 때 올바른 자세는 무엇인가요?</a>
              </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse in">
              <div class="panel-body">
                   이유식을 할때는 아기를 무릎에 앉히거나 안고 먹이는게 좋습니다.

            아기를 눕혀서 먹이게 되면 아기가 숨이 막힐 수도 있습니다.

            아기가 6∼7개월이 되어서 혼자서 앉을 수 있게 되면, 식탁에 아기 자리를 만들어주고, 아기 혼자 앉아서 먹을 수 있게 해 줍니다.
              </div>
            </div>
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">▶ 이유식은 어떤 온도로 먹여야 가장 적당한가요? </a>
              </h4>
            </div>
            <div id="collapse4" class="panel-collapse collapse in">
              <div class="panel-body">
                이유식뿐 아니라 아기가 먹는 모든 음식의 온도는 체온 정도가 가장 적합합니다.

아기에게 가장 좋은 식품인 엄마의 모유 역시 체온 정도의 온도입니다. 이유식을 데워 먹이는 방법은 중탕법과 전자레인지를 이용하는 방법이 있습니다.

요즘 대부분의 어머님들은 편리상 전자레인지를 많이 이용하시는데, 몇 가지 유의하셔야 합니다.

전자레인지로 데울 경우 균일하게 데워지지 않고 일부는 너무 뜨겁고 일부는 차가울 경우가 있으니 이를 주의해서 살피셔야 합니다.

안전상 뜨겁게 데웠다가 체온 정도로 식혀서 먹이는 것이 가장 좋습니다.
              </div>
            </div>
            
             <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">▶ 식사시간은 어느 정도로 잡아야 하나요?  </a>
              </h4>
            </div>
            <div id="collapse5" class="panel-collapse collapse in">
              <div class="panel-body">
        이유 처음부터 먹는 시간은 되도록 짧게 잡아 이유 초기에는 20분 정도, 중기에는 30분 이내로 끝내도록 합니다.

그렇게 하기 위해서는 아기가 장난을 치면서 다 먹을 때까지 기다리지 말고 먹다 남겼더라도 시간이 되면 식사를 끝내 식사 중에 장난하는 습관을 붙이지 않게 해야합니다.

그러나 아기의 입맛에 문제가 있을 수 있고 싫어하는 식품인 경우도 있으므로 이 점을 유의해서 살펴봅니다.

              </div>
            </div>
            
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">▶ 아기가 숟가락으로 이유식을 먹는 것을 싫어해요. 어떻게 해야 하나요?  </a>
              </h4>
            </div>
            <div id="collapse6" class="panel-collapse collapse in">
              <div class="panel-body">
       생후 4∼5개월 된 아기가 처음 이유식을 먹을 때는 최소 1∼2 주 정도의 적응기간이 필요합니다.

모유나 분유는 빨면 바로 삼킬 수 있는데 반해 이유식은 숟가락으로 떠서 입안에 넣고 삼키는 노력이 필요하죠. 딱딱한 숟가락에 담겨있는 이유식은 모유나 분유와 전혀 다른 맛인데다 숟가락이 입안으로 들어올 때의 느낌조차 아기에게는 낯선 경험입니다.

아기가 혀로 이유식을 밀어내거나 입을 꼭 다문채 열려고 하지 않는다면 이유식을 억지로 먹이기 보다는 아기가 먹고 싶어하는 만큼만 먹이거나 1∼2주 정도 이유식을 쉬어도 좋습니다.

그리고 숟가락과 친해질 수 있도록 평상시에도 숟가락을 가지고 놀게 해 주세요.

또 엄마 아빠가 숟가락으로 뭔가를 먹는 모습을 자꾸 보여 주게 되면 아기는 엄마 아빠를 따라하고 싶어하는 욕구가 생기게 되어 훨신 빨리 적응할 수 있을 겁니다. 

 
              </div>
            </div>

            
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">▶ 견과류는 언제부터 먹일 수 있나요?  </a>
              </h4>
            </div>
            <div id="collapse7" class="panel-collapse collapse in">
              <div class="panel-body">
       견과류는 불포화지방산, 철분, 지용성 비타민 등이 많이 들어 있어 몸에 좋고 맛도 고소하여 아기들에게 좋은 식품입니다.

그러나 견과류는 알레르기를 일으킬 위험이 많고 단단하여 목에 걸릴 위험이 있습니다.

또 대부분 지방성분이기 때문에 너무 많이 먹을 경우 설사를 하거나 열량과다로 인해 비만이 될 수도 있지요.

생후 7∼8개월 부터는 3∼5g 정도의 견과류를 소량으로 시도해 볼 수 있습니다.

지적했다시피 단단해서 목에 걸릴 수 있기 때문에 반드시 곱게 갈아 가루를 내어 먹입니다.

처음 2∼3번은 알레르기 반응이 일어나지 않는지 살펴 보신후 아무 증상이 없다면 이유식에 첨가하여 먹일 수 있습니다. 
 
              </div>
            </div>
            
     
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">▶ 모유는 언제 떼야 하나요? </a>
              </h4>
            </div>
            <div id="collapse8" class="panel-collapse collapse in">
              <div class="panel-body">
             모유 떼는 시기에 대해서는 전문의에 따라 의견이 분분합니다만 보통 12 ~ 15개월 사이에 뗄 것을 권고하고 있습니다.

모유를 먹이거나 분유를 먹이든 돌 전후에는 이유식이 주 영양 공급원이 되도록 연습을 해야 합니다.
              </div>
            </div>
            
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">▶ 회원정보수정은 어떻게 하나요? </a>
              </h4>
            </div>
            <div id="collapse9" class="panel-collapse collapse in">
              <div class="panel-body">
          로그인 후 홈페이지 상단의 "마이페이지 > 회원정보 > 회원정보수정"을 통하여 회원본인이 직접 수정하실 수 있습니다.
              </div>
            </div>
            
            
            <div class="panel-heading mt-3">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">▶ 회원가입은 어떻게 하나요? </a>
              </h4>
            </div>
            <div id="collapse10" class="panel-collapse collapse in">
              <div class="panel-body">
         베베맘마에서 운영되고 있는 홈페이지는 안전하게 개인정보가 관리되고 있습니다.

회원가입은 홈페이지 상단의 "로그인"을 클릭하시면 베베맘마 통합 로그인 및 회원가입 페이지로 안내가 됩니다.

안내에 따라 정보를 입력하시면 회원가입이 완료가 되며, 베베맘마 회원로서의 혜택을 이용하실 수 있습니다. 
              </div>
            </div>
            
   
          </div>
          <div class="alert alert-warning alert-dismissible mt-3" role="alert">
          
         베베맘마는 아기의 상태 정보에 따른 이유식 제품을 추천해주고 관련 정보를 제공해주는 사이트입니다.
         
         <br /><br />
         
         ※ 베베맘마가 모든 것을 보증하는 것은 아닙니다.

베베맘마는 여러분이 마음껏 베베맘마 서비스를 이용할 수 있도록 합리적인 수준의 주의를 기울여 베베맘마 서비스를 제공합니다.

베베맘마는 법령상 허용되는 한도 내에서 베베맘마 서비스와 관련하여 본 약관에 명시되지 않은 어떠한 구체적인 사항에 대한 약정이나 보증을 하지 않습니다. 예를 들어, 베베맘마는 베베맘마 서비스에 속한 콘텐츠, 서비스의 특정 기능, 서비스의 이용가능성에 대하여 어떠한 약정이나 보증을 하는 것이 아니며, 베베맘마 서비스를 ‘있는 그대로’ 제공할 뿐입니다.

   <p></p>
          다른 문의사항은 게시판을 이용해주시기 바랍니다.
          <br />
          이유식 관련 문의 시 아기의 이유식 단계, 이유식 적응상태, 식사 스케줄, 키, 몸무게 등을 제시해 주시면 전문가와의 상담에 도움이 됩니다.  <br />
이유식 관련 문의 시, 제공되는 상담 내용은 온라인 상담의 특성상 정확성에 한계가 있습니다.  <br />
답변은 회원님의 판단에 따라 적응하시기 바라며, 이에 대한 책임은 회원님께 있음을 숙지 하시기 바랍니다.  <br />
      일요일/공휴일에는 질문을 받지 않습니다.  <br />
          <p></p>
            이외의 사항은 고객센터(Tel. 041-560-1114)로 전화해주시면 친절히 답해드리겠습니다.
          </div>
          </div>
         
        
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