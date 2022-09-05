<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
<jsp:include page="../common/nav.jsp" />

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
			<input type="hidden" id="isTown" name="isTown" value="Y"> <input
				type="hidden" id="userTownMemberInfo" name="userTownMemberInfo"
				value="">
			<div class="mycgv-info-wrap">
				<div class="skipnaiv">
					<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
				</div>
				<div class="sect-person-info">
					<h2 class="hidden">개인화 영역</h2>
					<div class="box-image">
						<c:choose>
						<c:when test="${mvo.profileLink eq null || mvo.profileLink eq '' }">
							<span class="thumb-image"> <img
							src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"
							alt="mvo.name님 프로필 사진"
							onerror="errorImage(this, {'type':'profile'})"> <span
							class="profile-mask"></span>
							</span>
						</c:when>
						<c:otherwise>
							<span class="thumb-image"> <img
							src="/upload/member/profile/${mvo.id }_th_${mvo.profileLink}"
							alt="mvo.name님 프로필 사진"
							onerror="errorImage(this, {'type':'profile'})"> <span
							class="profile-mask"></span>
							</span>
						</c:otherwise>
					</c:choose>
					</div>
					<div class="box-contents newtype">
						<div class="person-info">
						<input type="hidden" value="${mvo.mno }" id="mnoVal">
							<strong>${mvo.name }님</strong> <em>${mvo.id }</em> <span>닉네임
								: ${mvo.nickName } </span>
						</div>
						<div class="grade-info">

							<p
								style="margin-bottom: 4px; color: #342929; font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif; font-size: 20px; line-height: 20px;">

								고객님은 <strong class="txt-purple">일반</strong> 입니다.

							</p>

							<button type="button" id="view_usergrade" class="round black">
								<span>MY 지난등급이력 보기</span>
							</button>


							<div class="mycgv_btn_special2">
								<!-- 대구 아이피접속자 중 : 동성로 미가입 고객시 a.special_pop_text 노출/ 가입 고객은 a.special0_pop 노출 부탁드립니다.
						또한 아무 해당 없는 고객에게는 .mycgv_btn_special2 에 클래스 none 추가 부탁드립니다. 
						-->


							</div>


						</div>
					</div>
				</div>
				<div class="cols-benefit-info">
					<div class="col-one-point">
						<h3>OGV ONE POINT</h3>
						<a href="#">OGV ONE POINT
							더보기</a>
						<ul>
							<li><strong>OGV ONE 사용가능 포인트</strong> <span><em
									class="txt-maroon"><a
										href="/user/mycgv/cjone-point/pointlist.aspx">${mvo.point }</a></em>
									점</span></li>
						</ul>

					</div>
					<div class="col-favorite-theater">
						<h3 class="hidden">자주가는 OGV</h3>
						<div class="sect-favorite">
							<ul id="favoriteTheaters">
									<c:forEach items="${mylist }" var="fvo">
										<li><a href="/theater/detail?tno=${fvo.tno }&mno=${ses.mno}" data-theatercode="${fvo.tno }">OGV${fvo.tname }</a></li>
									</c:forEach>
							</ul>
							<button id="setFavorTh" title="새창" type="button"
								class="setFavorTh" data-bs-toggle="modal" data-bs-target="#myModal">
								자주가는 OGV<br>설정하기
							</button>
						</div>
					</div>

					<div class="cols-point-wrap"></div>

				</div>
			</div>
		</div>

		<div class="cols-content" id="menu">
			<div class="col-aside">
				<div class="skipnaiv">
					<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
				</div>
				<h2>MY CGV 서브메뉴</h2>
				<div class="snb">
					<ul>
						<li class="on"><a href="/member/mypage?mno=${mvo.mno }" title="현재 선택">MY
								OGV HOME <i></i>
						</a></li>
						<li><a href="/member/mypage?mno=${mvo.mno }">나의 예매내역 <i></i></a></li>

						<li><a href="/member/mypage?mno=${mvo.mno }">회원정보<i></i></a>
							<ul>

								<li><a href="/member/modify?mno=${mvo.mno }">개인정보
										변경</a></li>
								<li><a href="/member/remove?mno=${mvo.mno }">회원탈퇴</a>
								</li>

							</ul></li>
						<li><a
							href="/member/modify?mno=${mvo.mno }">프로필
								관리<i></i>
						</a></li>
						<!-- <li class="my-event"><a href="#">내가
								본 영화</a></li> -->
						<!-- <li class="my-event"><a href="/user/mycgv/event/?g=1">나의 참여 이벤트</a></li> -->
					</ul>
					<div class="ad-partner01">
						<img src="https://adimg.cgv.co.kr/images/202207/NOPE/0817_160x300.jpg" width="160" height="300" border="0" alt="놉">
					</div>
					<div class="ad-partner02">
						<img src="https://adimg.cgv.co.kr/images/202208/PORORO/160x35.png" width="160" height="35" border="0" alt="광고-뽀로로 극장판 드래곤캐슬 대모험">
					</div>
				</div>
			</div>
			<div class="col-detail" id="mycgv_contents">

				<!-- <div class="sect-mycgv-reserve movielog col3">
					<div class="box-polaroid">
						<div class="box-inner preegg">
							<a href="http://www.cgv.co.kr/user/movielog/" title="기대되는 영화">
								<h3>기대되는 영화</h3> <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?
							</span>
							</a>
						</div>
						<div class="box-inner watched">
							<a href="http://www.cgv.co.kr/user/movielog/watched.aspx"
								title="내가 본 영화">
								<h3>내가 본 영화</h3> <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?
							</span>
							</a>
						</div>
						<div class="box-inner mvdiary">
							<a href="http://www.cgv.co.kr/movies/point/my-list.aspx"
								title="내가 쓴 평점">
								<h3>내가 쓴 평점</h3> <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?
							</span>
							</a>
						</div>

					</div>
				</div> -->
				<div class="tit-mycgv">
					<h3>MY 예매내역</h3>
					<p>
						<!-- <em>1건</em>  <a href="/user/mycgv/reserve/">예매내역 더보기</a> -->
					</p>
					<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
				</div>

				<form name="aspnetForm" method="post" action="./" id="aspnetForm"
					novalidate="novalidate">
					<div>
						<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET"
							value=""> <input type="hidden" name="__EVENTARGUMENT"
							id="__EVENTARGUMENT" value=""> <input type="hidden"
							name="__VIEWSTATE" id="__VIEWSTATE"
							value="/wEPDwUKMTc0NzIwMTk3M2RkGpTZbHfO8pvW/Ta9En5loRX6E2E=">
					</div>

					<div>
						<input type="hidden" name="__VIEWSTATEGENERATOR"
							id="__VIEWSTATEGENERATOR" value="F268F2D4"> <input
							type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
							value="/wEdAANOZtRado8flmBd6Juf8OumAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW37qSeqQYBLB9CRMYU4y53rNrIwxzA==">
					</div>
					<!-- 팝업시작 -->
					<!-- 팝업 노출 시 .layer-wrap 에 클래스 .off는 없애고 .on 추가해주세요.-->

					<!-- 팝업끝 -->
					<!-- MY 예매내역 -->
					<input type="hidden" id="hidCancelReserveNo"
						name="hidCancelReserveNo">
					<div class="sect-base-booking">
						<div class="box-polaroid">
							<div class="box-inner">
<c:choose>
	<c:when test="${bvo eq null || bvo eq '' }">
                    <div class="lst-item">
		    	        고객님의 예매내역이 존재하지 않습니다.
	    	        </div>
	</c:when>
	<c:otherwise>
	<c:forEach items="${bookList }" var="book">
											<div class="lst-item">
												<div class="box-number">
													<em>예매번호</em> <strong><i>${book.bvo.bno }</i></strong> <span>
														<!-- 예매 날짜 DATE -->
													</span>
												</div>
												<div class="box-image">
													<a href="#"> <span class="thumb-image"> <img
															class="img-"
															src="https://file.cineq.co.kr/i.aspx?movieid=${book.mvo.movieId }&amp;size=210">
													</span>
													</a>
												</div>
												<div class="box-contents has_not_storeitem">
													<dl>
														<dt>
															<a href="#">${book.mvo.movieNm }</a>

														</dt>
														<dd>
															<em>관람극장</em> <strong>OGV${book.tname }</strong> <a
																href="/theater/detail?tno=${book.scvo.tno }&mno=${mvo.mno}">[극장정보]</a>
														</dd>
														<dd>
															<em>관람일시</em> <strong>${book.scvo.startTime }</strong>
														</dd>
														<dd>
															<em>관람좌석</em> <strong> <c:forEach
																	items="${book.bsvoList }" var="bsvo">
												${bsvo.sid } 
												</c:forEach>
															</strong>
														</dd>
													</dl>
												</div>
												<div class="box-detail"></div>
												<div class="price-n-btns">
													<div class="bd-wrap">
														<dl>
															<dt>총 결제금액</dt>
															<dd>
																<strong class="txt-lightblue"> ${book.bvo.pay }원</strong>
															</dd>
														</dl>
														<div class="set-btn">
															<input type="hidden" class="reserve-no" name="reserve-no"
																value="s46e6+Hm440j3/27hH1dpZrIlZ2m1Q+diDeOmtcp9s4=">
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
	</c:otherwise>
</c:choose>
							</div>
						</div>
					</div>
				</form>
				<form name="targetform" id="targetform" method="post"
					novalidate="novalidate">
					<input type="hidden" name="reverse_no" id="reverse_no">
				</form>

			</div>


			<!--/ Contents End -->
		</div>
		</div>
    </div>
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
                            <option value="3">강원</option>
                            <option value="4">대전/충청</option>
                            <option value="5">대구</option>
                            <option value="6">부산/울산</option>
                            <option value="7">경상</option>
                            <option value="8">광주/전라/제주</option></select>
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
                <button id="btn_close" type="button" class="btn-close modal_close">자주 가는 OGV 설정 팝업 닫기</button>
            </div>
        </div>
    </div>
  </div>
</div>
    
<script src="/resources/js/member.favorThSet.js"></script>
<jsp:include page="../common/footer.jsp" />
