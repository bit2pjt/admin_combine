<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/**
* @Class Name :  index.jsp
* @Description : index
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.08.10 박현민 최초 생성
*
* @author BIT 116기 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by bit 2조 All right reserved.
*/
-->
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>srtdash - SEO Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="resources/images/icon/favicon.ico">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/metisMenu.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="resources/css/typography.css">
<link rel="stylesheet" href="resources/css/default-css.css">
<link rel="stylesheet" href="resources/css/styles.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<!--yj : add css-->
<link rel="stylesheet" href="resources/css/modifystyles.css">

<!-- modernizr css -->
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- login area start -->
	<div class="login-area">
		<div class="container">
			<div class="login-box ptb--100">
				<form>
					<div class="login-form-head">
						<h4>LOGIN</h4>
						<p>관리자 계정으로 로그인 해 주세요.</p>
					</div>
					<div class="login-form-body">
						<div class="form-gp">
							<label for="exampleInputEmail1">ADMIN ID</label> <input
								type="text" id="exampleInputEmail1">
						</div>
						<div class="form-gp">
							<label for="exampleInputPassword1">PASSWORD</label> <input
								type="password" id="exampleInputPassword1"> <i
								class="ti-lock"></i>
						</div>
						<div class="row mb-4 rmber-area">
							<div class="col-6">
								<div class="custom-control custom-checkbox mr-sm-2">
									<input type="checkbox" class="custom-control-input"
										id="customControlAutosizing"> <label
										class="custom-control-label" for="customControlAutosizing">Remember
										Me</label>
								</div>
							</div>
						</div>
						<div class="submit-btn-area">
							<button id="form_submit" type="submit">
								로그인 <i class="ti-arrow-right"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- login area end -->


	<!-- footer area start-->
	<footer>
		<div class="footer-area">
			<p>
				© Copyright 2018. All right reserved. Template by <a
					href="https://colorlib.com/wp/">Colorlib</a>.
			</p>
		</div>
	</footer>
	<!-- footer area end-->
	</div>
	<!-- page container area end -->

	<!-- jquery latest version -->
	<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/metisMenu.min.js"></script>
	<script src="resources/js/jquery.slimscroll.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>

	<!-- start chart js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
	<!-- start highcharts js -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<!-- start amcharts -->
	<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
	<script src="https://www.amcharts.com/lib/3/ammap.js"></script>
	<script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
	<script src="https://www.amcharts.com/lib/3/serial.js"></script>
	<script
		src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
	<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
	<!-- all line chart activation -->
	<script src="resources/js/line-chart.js"></script>
	<!-- all pie chart -->
	<script src="resources/js/pie-chart.js"></script>
	<!-- all bar chart -->
	<script src="resources/js/bar-chart.js"></script>
	<!-- all map chart -->
	<script src="resources/js/maps.js"></script>
	<!-- others plugins -->
	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>

</html>