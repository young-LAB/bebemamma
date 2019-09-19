<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bebemamma.ItemDAO" %>
<%@ page import="com.bebemamma.itemrecommend.UserRecommend" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="mgr" class="bebemamma.MemberMgr"/>
<%@ page import="bebemamma.MemberBean" %>
<% request.setCharacterEncoding("UTF-8"); %>

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
<link rel="stylesheet" href="./modal.css">
<link rel="stylesheet" href="../css/ionicons.min.css">

<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/jquery.timepicker.css">


<link rel="stylesheet" href="../css/flaticon.css">

<!--additional item add (intro page icons) -->
<link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">


<link rel="stylesheet" href="../css/icomoon.css">
<link rel="stylesheet" href="../css/style.css">

<link rel="stylesheet" href="../css/custom.css">
<link rel="stylesheet" href="./star.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

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
               <li class="nav-item"><button class="nav-link"><a href="../intro/reallogin.jsp">로그인</a></button></li>
            
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
                     <a class="dropdown-item" href="./guide.jsp">아기 연령대별 섭취 가이드</a> 
                     <a class="dropdown-item" href="./age.jsp">이유식 리스트</a> 
                     <a  class="dropdown-item" href="./ingre.jsp">필수 14개의 이유식 성분 시각화</a> 
                     <a class="dropdown-item" href="./awarefood.jsp">가족력에 따른 주의, 권장 식품(재료)</a> 
                  </div>
               </li>
               
               <li class="nav-item"><a href="../bbs/bbs.jsp" class="nav-link">베베맘마 톡톡</a></li>
               <li class="nav-item"><a href="../mypage/mypage.jsp" class="nav-link">마이페이지</a></li>
               <li class="nav-item"><button class="nav-link"><a href="../intro/logout.jsp">로그아웃</a></button></li>

            </ul>
         </div>
            <% } %>
         
         
      </div>
   </nav>
   <!-- END nav -->
	<%
	String FilePath = request.getSession().getServletContext().getRealPath("/").toString() +"foodrec\\item.csv";
  	ItemDAO itemDAO = new ItemDAO();
  	String itemid = "1";
  	if(request.getParameter("itemid") != null){
  		itemid = request.getParameter("itemid");
  	}  	
  	try{
  		Integer.parseInt(itemid);
  	} catch(Exception e){
  		session.setAttribute("messageType", "오류 메시지");
  		session.setAttribute("messageContent", "페이지번호가 잘못되었습니다.");
  		response.sendRedirect("age.jsp");
  	}
  	HashMap<String, Object> map = itemDAO.getIteminfo(Integer.parseInt(itemid));
  %>
<div class="hero-wrap hero-bread" style="background-image: url('../img/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="../intro/index.html">Home</a></span> <span class="mr-2"><a href="./age.jsp">Product</a></span> <span>Product Single</span></p>
            <h1 class="mb-0 bread">Product Single</h1>
          </div>
        </div>
      </div>
    </div>

	<section class="ftco-section ftco-no-pt ftco-no-pb py-5">
			<div class="container py-4">
				<div class="row d-flex justify-content-center py-5">
					<div class="col-md-10 ">


						<div class="page-header mt-1">
							<h2>제품 상세 정보</h2>
						</div>

						<p class="lead">제품명, 브랜드, 재료, 알레르기 정보</p>
						<hr>
					</div>
				</div>
			<div class="row">
				<div class="col-lg-6 mb-5 ftco-animate">
					<%
						out.println("<a href=\"../img/" + map.get("filename")
								+ "\" class=\"image-popup\"><img class=\"img-fluid\" src=\"../img/" + map.get("filename")
								+ "\" alt=\"Colorlib Template\"><div class=\"overlay\"></div></a>");
					%>
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">
					<h3><%=map.get("product_name")%></h3>
					<div class="rating d-flex">
						<%
							//UserRecommend usr = new UserRecommend(FilePath);
							UserRecommend usr = new UserRecommend();
							int realid = mgr.get_Idnum(session.getAttribute("id").toString());
							int realitem = Integer.parseInt(map.get("product_id").toString());
							int count = usr.checkID_inItem(realid, realitem);
							if (count == -1) {
						%>
						<div class="starRev">
							<span class="starR on">별1</span> <span class="starR">별2</span> <span
								class="starR">별3</span> <span class="starR">별4</span> <span
								class="starR">별5</span>
						</div>
						<input type="button" value="submit" onclick="getResult()">
						<%
						  String v = request.getParameter("score");
						  System.out.println(v);
							}else{
								for(int z =0; z<count; z++){
									out.print("<span class=\"starR on\">별1</span>");
								}
								for(int t =0; t<5-count; t++){
									out.print("<span class=\"starR\">별2</span>");		
								}
							}
						%>

						<p class="text-left mr-4">
							<a href="#" class="mr-2" style="color: #000;"> 100 <span
								style="color: #bbb;">Rating</span></a>
						</p>
						<p class="text-left">
							<a href="#" class="mr-2" style="color: #000;">500 <span
								style="color: #bbb;">Sold</span></a>
						</p>
					</div>
					<p class="price">
						<span><%=map.get("brand")%></span>
					</p>
					<h2 class="heading"><%=map.get("ingredient")%></h2>
					<%
					String aller = mgr.getAllegy(session.getAttribute("id").toString());
					String ingridi = map.get("ingredient").toString();
					String alle_arr[] = aller.split(",");
					String ingridi_arr[] = ingridi.split(",");
					//String alert_in[]= new;
					int boom = 0;
					boolean flag = false;
					for(int b =0; b< alle_arr.length; b++){
						for(int c=0; c<ingridi_arr.length; c++){
							if(alle_arr[b].equals(ingridi_arr[c])){
								flag = true;
								//alert_in[boom] = ingridi_arr[c];
							}
						}
					}
					if(flag==true){
				%>
					<p class="price">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 알레르기 있습니다
						주의하세요.... 해당 재료는 !</p>
					<%
					}else{
				%>
					<p class="price"><span>해당하는 알레르기가 없습니다.</span></p>
					<%
					}
				%>
				</div>
				<p>
				<img src="../img/img_alle.png" >
				</p>
			</div>
		</div>
	</section>

	<section class="ftco-section">
    	<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Products</span>
            <h2 class="mb-4">관련 상품들</h2>
            <p>현재 선택한 상품과 관련 있는 상품들 입니다.</p>
          </div>
        </div>   		
    	</div>
    	<div class="container">
    		<div class="row">
						<%
							List<Object> foodlist = itemDAO.get_RelatedItem(String.valueOf(map.get("month")));
							Collections.shuffle(foodlist);
							for(int s =0; s<4; s++){
								HashMap<String, Object> hmap = itemDAO.getIteminfo(Integer.parseInt(foodlist.get(s).toString()));
								out.println("<div class=\"col-md-6 col-lg-3 ftco-animate\">");
								out.println("<div class=\"product\">");
								out.println("<a href=\"./itemdetail.jsp?itemid=" + String.valueOf(hmap.get("product_id"))
										+ "\" class=\"img-prod\"><img class=\"img-fluid\" src=\"../img/" + hmap.get("filename")
										+ "\" alt=\"Colorlib Template\"><div class=\"overlay\"></div></a>");
								out.println("<div class=\"text py-3 pb-4 px-3 text-center\">");
								out.println("<h3><a href=\"" + 123 + "\">" + hmap.get("product_name") + "</a></h3>");
								out.println(
										"<div class=\"d-flex\"><div class=\"pricing\"><p class=\"price\"><span class=\"price-sale\">"
												+ hmap.get("brand") + "</span></p></div></div>");
								out.println("<div class=\"bottom-area d-flex px-3\">");
								out.println("</div></div></div></div>");
							}
							
						%>
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

   <script src="./star.js"></script>
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