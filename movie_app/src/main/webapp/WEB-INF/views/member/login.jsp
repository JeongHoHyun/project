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

<div id="contaniner" class="">
        <!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


        <!-- Contents Area -->
        <div id="contents" class="">


            <!-- Contents Start -->


            <!-- 실컨텐츠 시작 -->
            <div class="wrap-login">
                <div class="sect-login">
                    <ul class="tab-menu-round">
                        <li class="on">
                            <a href="/member/login/">로그인</a>
                        </li>
                       <!--  <li>
                            <a href="/user/guest/login-agreement.aspx">비회원 예매</a>
                        </li>
                        <li>
                            <a href="/user/guest/login.aspx">비회원 예매확인</a>
                        </li> -->
                    </ul>
                    <div class="box-login">
                        <h3 class="hidden">회원 로그인</h3>
                        <form id="form1" method="post" action="/member/login" novalidate="novalidate">
                            <fieldset>
                                <legend>회원 로그인</legend>
                                <p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
                                <div class="login">
                                    <input type="text" title="아이디" id="txtUserId" name="id" data-title="아이디를 "
                                        data-message="입력하세요." required="required">
                                    <input type="password" title="패스워드" id="txtPassword" name="pwd"
                                        data-title="패스워드를 " data-message="입력하세요." required="required">
                                </div>

                                <button type="submit" id="submit" title="로그인"><span>로그인</span></button>
                                <div class="login-option">
                                    <a href="#">아이디 찾기</a>
                                    <a href="#">비밀번호 찾기</a>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="sect-loginguide">
                    <div class="box-useguide">
                        <span style="margin-right: 100px;">회원가입하시고 다양한 혜택을 누리세요!</span>
                        <strong>
                            <a title="새창" target="_blank" href="/member/register" class="round red"><span>CJ ONE
                                    회원가입하기</span></a>
                        </strong>
                        <em>

                        </em>
                    </div>
                </div>
                <div class="sect-loginad" style="background:#d2cbbe;">
                </div>
            </div>
            <!-- 실컨텐츠 끝 -->

            <!-- LogIn -->
            <form name="loginform" id="loginform" method="post" action="https://www.cgv.co.kr/user/login/login.aspx"
                novalidate="novalidate">
                <input type="hidden" name="id" id="id">
                <input type="hidden" name="password" id="password">
                <input type="hidden" name="id_save" id="id_save">
                <input type="hidden" name="returnURL" value="http://www.cgv.co.kr">
            </form>
        </div>
    </div>

<jsp:include page="../common/footer.jsp"/>