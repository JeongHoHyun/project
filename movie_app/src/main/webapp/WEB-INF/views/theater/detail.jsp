<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>
<jsp:include page="../common/nav.jsp"/>

	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="alternate" href="http://m.cgv.co.kr">
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <title id="ctl00_ctl00_headerTitle"></title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css">
    <!-- <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css"> -->
    <link href="/resources/css/reset.css" rel="stylesheet">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css">

    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css">
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css">
    <link rel="stylesheet" type="text/css"
        href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">

    <script type="text/javascript" async="" src="http://www.google-analytics.com/analytics.js"></script>
    <script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-NNNFR3"></script>
    <script async="" src="//www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript"
        src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>

    <!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" media="all" type="text/css"
        href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css">

    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css">

    <!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css">

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css">
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start-->

    <link rel="stylesheet" media="all" type="text/css"
        href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">

<link rel="stylesheet" href="/resources/mycss/modalStyle.css">


    <div id="contaniner" class="">
        <!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


        <!-- Contents Area -->
        <div id="contents" class="">


            <!-- Contents Start -->

            <div class="sect-common">
                <div class="favorite-wrap">
                    <div class="sect-favorite">
                        <h4><img src="https://img.cgv.co.kr/R2014/images/title/h4_favorite_cgv.png" alt="자주가는 CGV"></h4>
                        <ul id="favoriteTheaters">
                                <c:forEach items="${mylist}" var="fvo">
                                        <li><a href="/theater/detail?tno=${fvo.tno }&mno=${mvo.mno}" data-regioncode="02" data-tno="${fvo.tno}"
                                                data-selecteddate="20220811"></span>OGV${fvo.tname}</a></li>
                                </c:forEach>
                        </ul>
                        <c:choose>
                        	<c:when test="${mvo.mno eq null || mvo.mno eq '' }">
		                        <button id="btn_set_my_favorite" type="button" title="새창" class="setFavorTh">자주가는 CGV 설정</button>
                        	</c:when>
                        	<c:otherwise>
		                        <button id="btn_set_my_favorite" type="button" title="새창" class="setFavorTh" data-bs-toggle="modal" data-bs-target="#myModal">자주가는 CGV 설정</button>
                        	</c:otherwise>
                        </c:choose>
                        
                    </div>
                    <div class="sect-city">
                    <input type="hidden" value="${mvo.mno }" id="mnoVal">
                        <ul id="thRegionList">
                            <li class="on"><a class="region" data-region="0">서울</a>
                                <div class="area" id="printZone">
                                    <ul>
                                    	<c:forEach items="${list}" var="tvo">
                                    	
                                    	<c:choose>
				<c:when test="${ses.id eq null || ses.id eq '' }">
					<li class=""><a title="OGV${tvo.tname}"
                                                href="/theater/detail?tno=${tvo.tno}&mno=0">OGV${tvo.tname}</a>
                                        </li>
				</c:when>
				<c:otherwise>
					<li class=""><a title="OGV${tvo.tname}"
                                                href="/theater/detail?tno=${tvo.tno}&mno=${mvo.mno}">OGV${tvo.tname}</a>
                                        </li>
				</c:otherwise>
			</c:choose>
			
                                        </c:forEach>
                                    </ul>
                                </div>
                            </li>
                            <li><a class="region" data-region="1">경기</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="2">인천</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="3">강원</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="4">대전/충청</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="5">대구</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="6">부산/울산</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="7">경상</a>
                                <div class="area">
                                </div>
                            </li>
                            <li><a class="region" data-region="8">광주/전라/제주</a>
                                <div class="area">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 실컨텐츠 시작 -->
            <div class="wrap-theater">
                <h3><img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif" alt="THEATER"></h3>
                <div class="sect-theater ">
                    <h4 class="theater-tit"><span>OGV${tvo.tname}</span></h4>

                    <div class="box-thaeteralert" id="divBoxImportantNotice">
                    </div><!-- .box-thaeteralert -->

                    <div class="wrap-theaterinfo">
                        <div class="box-image">
                            <div id="theater_img_container" class="thumb-image"><img
                                    src="https://img.cgv.co.kr/Theater/Theater/2021/0514/16209668518950.jpg" alt="">
                            </div>
                        </div>
                        <div class="box-contents">
                            <div class="theater-info">
                                <strong class="title">${tvo.addr}<a
                                        href="./?page=location&amp;theaterCode=0292#menu">위치/주차 안내 &gt;</a></strong>
                                <span class="txt-info">
                                    <em>1544-1122</em>
                                    <em>${tvo.totalRoom}관 / ${tvo.totalSeat}석</em>
                                    <span>${tvo.description }</span>
                                </span>
                                <!-- 최대 10개까지만 보여집니다 -->
                                <span class="screentype">
                                        <c:choose>
                                        <c:when test="${tvo.showType eq 1}">
                                                <a href="#"
                                                class="forDX">4DX</a>
                                        </c:when>
                                        <c:when test="${tvo.showType eq 2}">
                                                <a href="#" class="imax">IMAX</a>
                                        </c:when>
                                        <c:when test="${tvo.showType eq 3}">
                                        		<a href="#" class="forDX">4DX</a>
                                                <a href="#" class="imax">IMAX</a>
                                        </c:when>
                                        <c:otherwise>

                                        </c:otherwise>
                                                
                                        </c:choose>


                                </span>
                            </div>
                        </div>
                    </div>
                </div><!-- .sect-theater -->

                <div class="theater-ad">
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_980" width="980"
                        height="90" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"
                        name="SponsorBar_980" id="SponsorBar_980"></iframe>
                </div>
                <ul class="tab-menu" id="menu">
                    <li class="on"><a href="#"
                            title="현재 선택됨">상영시간표</a></li>
                </ul>
                <div class="cols-content">
                    <!-- 상영시간표 UserControl -->

                    <div class="col-detail">
                        <div class="descri-info theater" style="display: block;">
                            <ul>
                            </ul>
                        </div>
                        <!-- 탭메뉴 class="on" 에따라서 아래 h4 내용을 바꿔주세요 -->
                        <h4 class="hidden"> + [상영시간표]</h4>

                        <!-- Showtimes Start -->
                        
                        
                        <!-- /Showtimes End -->

                    </div>



                    <div class="col-aside">
                        <div class="ad-partner01">
                            <img src="https://adimg.cgv.co.kr/images/202207/NOPE/0817_160x300.jpg" width="160" height="300" border="0" alt="놉">
                        </div>
                        <div class="ad-partner02">
                        </div>
                    </div>
                </div>
            </div>
            <!-- 실컨텐츠 끝 -->
            <!--/ Contents End -->
            <!-- 시간 선택 -->
            <div id="calendar" class="col-11 mx-auto d-flex justify-content-center align-items-center">
            </div>
            <div id="ticket_zone" class="col-11 col-md-10 col-lg-9 col-xl-8 col-xxl-7 mx-auto pt-4 px-4 px-md-5 px-xxl-4 position-relative">
                <div class="position-absolute top-50 start-50 translate-middle text-center">
                    <p class="mb-1"><i class="bi bi-camera-reels fs-1"></i></p>
                    <p class="mb-0">조회 가능한 상영 시간이 없습니다.</p>
                </div>
            </div>
        </div>
    </div>
        <!-- /Contents Area -->
    
    <!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Modal body -->
      <div class="layer-wrap modal_body" style="position:static; top:auto; left:auto;">
            <div class="popwrap" style="width:633px;">
                <h1>자주 가는 OGV 설정</h1>
                <div class="pop-contents fav-cgv">
                <!-- Contents Addon -->
                    <div class="sect-cgv-control">
                        <h2 class="hidden">자주가는 지역 및 영화관 선택</h2>
                        <p>영화관을 선택하여 등록해주세요. <strong>최대 5개까지</strong> 등록하실 수 있습니다.</p>
                        <p>
                            <select id="select_region" title="자주가는 지역선택" class="thRegion">                        
                            <option value="" selected="selected">지역선택</option>
                            <option value="0">서울</option>
                            <option value="1">경기</option>
                            <option value="2">인천</option>
                            <option value="3">대구</option>
                            <option value="4">부산</option>
                            </select>
                            <select id="select_theater" title="자주가는 CGV선택" class="thList">                        
                            <option value="" selected="selected">극장선택</option></select> 
                            <button id="btn_add_favorite_theater" type="button" class="round inblack on" ><span class="addModal" data-mno="${mvo.mno }">자주가는 OGV 추가</span></button>
                        </p>
                    </div>
                    <div class="sect-favorite-control">
                        <h2><strong>${mvo.name }님</strong>이 자주 가는 OGV</h2>
                        <div class="theater-choice">
                            <ul id="myFvoList">
                                <c:forEach items="${mylist}" var="fvo" varStatus="index">
                                <li class="liTag">
                                    <div class="box-polaroid">
                                        <div class="box-inner">
                                            <div class="theater">OGV${fvo.tname}</div>
                                            <button type="button" class="removeModal" data-idx="${index.index }" data-mno="${mvo.mno }" data-tno="${fvo.tno }">OGV${fvo.tname} 삭제</button>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
        
                    <div class="set-btn fix-width">
                        <button id="setFavorBtn" type="button" class="modal_close">닫기</button>
                    </div>
                <!-- //Contents Addon -->
                </div>
                <button id="btn_close" type="button" class="btn-close modal_close">자주 가는 CGV 설정 팝업 닫기</button>
            </div>
        </div>
    </div>
  </div>
</div>
    
<script>
    const get_tno = `<c:out value="${tvo.tno }"/>`;
</script>
<script src="/resources/js/theater.detail.js"></script>
<jsp:include page="../common/footer.jsp"/>