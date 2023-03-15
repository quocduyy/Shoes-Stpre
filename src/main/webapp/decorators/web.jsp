<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file ="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chu</title>
<!--===============================================================================================-->	
	
		<link href="<c:url value='/template/web/images/icons/favicon.png'/>" rel="stylesheet" type="text/css">
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/fonts/iconic/css/material-design-iconic-font.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/fonts/linearicons-v1.0.0/icon-font.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/animate/animate.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->	
	
		<link href="<c:url value='/template/web/vendor/css-hamburgers/hamburgers.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/animsition/css/animsition.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/select2/select2.min.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->	
	
		<link href="<c:url value='/template/web/vendor/daterangepicker/daterangepicker.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/slick/slick.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/MagnificPopup/magnific-popup.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/vendor/perfect-scrollbar/perfect-scrollbar.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
	
		<link href="<c:url value='/template/web/css/util.css'/>" rel="stylesheet" type="text/css">
	
	
		<link href="<c:url value='/template/web/css/main.css'/>" rel="stylesheet" type="text/css">
	
<!--===============================================================================================-->
</head>
<body class="animsition">
	
	
	<%@include file ="/common/web/header.jsp" %>
	<dec:body/>
		

	

	<%@include file ="/common/web/footer.jsp" %>
	

<!--===============================================================================================-->	
	
	<script src="<c:url value='/template/web/vendor/jquery/jquery-3.2.1.min.js'/>"></script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/animsition/js/animsition.min.js'/>"></script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/bootstrap/js/popper.js'/>"></script>
	
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/select2/select2.min.js'/>"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/daterangepicker/moment.min.js'/>"></script>
	
	<script src="<c:url value='/template/web/vendor/daterangepicker/daterangepicker.js'/>"></script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/slick/slick.min.js'/>"></script>
	
	<script src="<c:url value='/template/web/js/slick-custom.js'/>"></script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/parallax100/parallax100.js'/>"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/MagnificPopup/jquery.magnific-popup.min.js'/>"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/isotope/isotope.pkgd.min.js'/>"></script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/vendor/sweetalert/sweetalert.min.js'/>"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	
	
	<script src="<c:url value='/template/web/vendor/perfect-scrollbar/perfect-scrollbar.min.js'/>"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	
	<script src="<c:url value='/template/web/js/main.js'/>"></script>
</body>
</html>