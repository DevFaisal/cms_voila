<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>American Pro</title>
	<!--Google font-->
	
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Maven+Pro" />
	<!--favicon-->
	<link rel="shortcut icon" type="image/x-icon" href="/assets/images/logo.png">
	<!-- <link rel="icon" href="/assets/images/favicon.png"> -->
	<!--stylesheet-->
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/assets/css/fontello.css">
	<link rel="stylesheet" href="/assets/css/animate.css">
	<link rel="stylesheet" href="/assets/css/style.css">
	<link rel="stylesheet" href="/assets/css/responsive.css">
</head>

<body>
	<!--===========================
        Start PreLoader
===========================-->
	<div class="preloader">
		<div class="loader">
			<span></span>
		</div>
		<!--end .loader-->
	</div>
	<!--end .preloader-->
	<!--===========================
        End PreLoader
===========================-->

	<!--===========================
        Start Header
===========================-->
<div class="fx">

	<header class="header_area">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-4 col-xs-12">
					<div class="header_social">
						<ul class="hd_social_icons">
                        @foreach($socials as $item)
							<li>
								<a href="{{url(''.$item->value)}}" target="_blank">
									<i class="{{$item->icon}}"></i>
								</a>
							</li>
                            @endforeach
							
							<div class="f2_line fl"></div>
							<a href="http://instagram.com/americanpro_hvac" target="_blank">
								<div class="inst fl"></div>
							</a>
							<div class="f2_line fl"></div>
							<a href="https://www.linkedin.com/in/americanpro" target="_blank">
								<div class="linkedin fl"></div>
							</a>
						</ul>

					</div>
				</div>
				<div class="col-md-6 col-sm-8 col-xs-12">
					<div class="header_contact text-right">
						<ul class=" search-header">
							<form name="ser" action="{{url('/search')}}" method="get">
								<input type="text" class="search keywords" id="word" placeholder="Search By Keywords" name="q" onfocus="ser_focaseword()">
								<button class="sub" type="submit">
									<i class="fa fa-search keyword"></i>
								</button>
							</form>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--===========================
        End Header
===========================-->

	<!--===========================
        Start Main Menu
===========================-->
	<div class="main_menu_area">
		<div class="container">
			<div class="row menu-row">
				<div class="col-md-2 col-xs-12">
					<button type="button" class="navbar-toggles">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<i class="fa fa-search keyword mob-search"></i>
					<a href="{{url('/')}}" class="logo">
						<img src="/assets/images/logo.png" alt="Logo" style="max-width:195px">
					</a>
				</div>
				<!--end .col-md-2-->
				<div class="col-md-10 col-xs-9 collapse_responsive">
					<div class="collapse navbar-collapse remove_padding" id="myNavbar">
						<ul class="nav navbar-nav text-center">
							@foreach($menus as $m) @if(isset($m->sons))
							<li>

								<a href="{{url(''.$m->url)}}">{{$m->title_en}} <i class="fa fa-angle-down"></i></a>

								<ul class="dropdown-menu dropdown-menu-responsive">
									@foreach($m->sons as $s)

									<li>
										<a href="{{url(''.$s->url)}}">{{$s->title_en}}</a>
									</li>

									@endforeach

								</ul>
							</li>

							@endif @if(!isset($m->sons))

							<li>
								<a href="{{url(''.$m->url)}}">{{$m->title_en}}</a>
							</li>
							@endif @endforeach
							<li class="header_right_btn">
								<a class="btn-yellow" href="{{url('/become_dealer')}}">Become A Dealer</a>
							</li>
						</ul>
					</div>
					<!--end .collapse-->
				</div>
				<!--end .col-md-10-->
			</div>
			<!--end .row-->
		</div>
		<!--end .container-->
	</div>
	<!--end .main_menu_area-->
</div>
	<!--===========================
        End Main Menu
===========================-->
	@yield('content')

	<!--===========================
        Start Footer
===========================-->
	<footer class="footer_area">
		<div class="footer_contact text-center">
			<div class="container">
				<div class="col-md-4 col-sm-4">
					<div class="footer_contact_width text-left">
						<p>
							<i class="icon-placeholder"></i> {{__('Address')}}
							<span>{{$info->address}}</span>
						</p>
					</div>
					<!--end .footer_contact_width-->
				</div>
				<!--end .col-md-4-->
				<div class="col-md-4 col-sm-4">
					<div class="footer_contact_width">
						<p>
							<i class="icon-contact"></i> {{__('Email')}}
							<span>
								<a href="#">{{$info->email}}</a>
							</span>
						</p>
					</div>
					<!--end .footer_contact_width-->
				</div>
				<!--end .col-md-4-->
				<div class="col-md-4 col-sm-4">
					<div class="footer_contact_width text-right">
						<p>
							<i class="icon-clock"></i> {{__('Open Hours')}}
							<span>
								<a href="">{{$info->open_hours}}</a>
							</span>
						</p>
					</div>
					<!--end .footer_contact_width-->
				</div>
				<!--end .col-md-4-->
			</div>
			<!--end .container-->
		</div>
		<!--end .footer_contact-->
		<div class="footer_content section_padding">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="footer_textwidget textwidget">
							<h2>{{__('About American Pro')}}</h2>
							<p>
								{{$info->about_footer}}
							</p>
							<h4>{{__('Get a Quote')}}</h4>
							<span class="number">{{$info->phone}}</span>
						</div>
						<!--end .footer_textwidget .textwidget-->
					</div>
					<!--end .col-md-4-->
					<div class="col-md-2 col-sm-3">
						<h2>{{__('Quick Links')}}</h2>
						<ul class="footer_link">
                            @foreach($footer_links as $key=>$item)
                            @if($key%2==0)
							<li>
								<a href="{{url(''.$item->link)}}">{{$item->name}}</a>
                            </li>
                            @endif
                            
                            @endforeach
							
						</ul>
						<!--end .footer_link-->
					</div>
					<!--end .col-md-2-->
					<div class="col-md-2 col-sm-3">
						<ul class="footer_link extra_mt">
							<!-- <li><a href="">Careers</a></li> -->
                            @foreach($footer_links as $key=>$item)
                            @if($key%2!=0)
							<li>
								<a href="{{url(''.$item->link)}}">{{$item->name}}</a>
                            </li>
                            @endif
                            
                            @endforeach
						</ul>
						<!--end .footer_link-->
					</div>
					<!--end .col-md-2-->
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="newslatter">
						<form action="{{url('/addNewsLetter')}}" id="news-letter" method="post">
						@csrf
							<h2>{{__('Request a Catalogue')}}</h2>
							<input type="email" required  name="email" placeholder="Enter your email">
							<button class="btn-yellow" type="submit" value="SUBMIT NOW">{{__('Send')}}</button>
							<br>
							<p class="alert alert-success hide msg-news-letter">success</p>
						</form>
						</div>
						<!--end .newslatter-->
					</div>
					<!--end .col-md-4-->
				</div>
				<!--end .row-->
				<div class="copyright_area">
					<div class="row">
						<div class="col-md-8 col-sm-6 col-xs-12 copyright_text">
						<p>&copy;{{__('2020 American Pro')}}</p>
							<a class="voila" href="{{url('terms')}}">{{__('Terms & Conditions')}}
								
							</a>
							<p>
									 {{__('power_by_voila')}}
									 <a href="#">
									<span class="voila">{{__('Voila')}} </span>
								</a>
							</p>
						</div>
						<!--end .col-md-8-->
						<div class="col-md-4 col-sm-6 text-right header_social">
							<ul class="hd_social_icons">
								
                            @foreach($socials as $item)
							<li>
								<a href="{{url(''.$item->value)}}" target="_blank">
									<i class="{{$item->icon}}"></i>
								</a>
							</li>
                            @endforeach
							</ul>
						</div>
						<!--end .col-md-4-->
                            
					</div>
					<!--end .row-->
				</div>
				<!--end .copyright_area-->
			</div>
			<!--end .container-->
		</div>
		<!--end .footer_content-->
		<!-- <img src="/assets/images/shape/footer-shape.png" class="footer_shape" alt="footer shape"> -->
	</footer>
	<!--end .footer_area-->
	<!--===========================
        End Footer
===========================-->


	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/owl.carousel.min.js"></script>
	<script src="/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="/assets/js/waypoint.js"></script>
	<script src="/assets/js/jquery.counterup.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA_Agsvf36du-7l_mp8iu1a-rXoKcWfs2I"></script>
	<script src="/assets/js/custom.js"></script>
	<!--<script src="/assets/js/sweetalert2.js"></script>-->

	<script>
		$(document).ajaxStart(function () {
			// Show image container
			$(".preloader").show();
			
		});
		$(document).ajaxComplete(function () {
			// Hide image container
			$(".preloader").hide();
			
		});
		$(".base-categories>option").map(function() { 
			
			var value= $(this).val(); 
			if(value==-2){
			$(this).val($("#target option:first").val());

			}
			
			});

		$('body').on('change', '.base-categories', function () {
			

			var selected =null;
			var level=null;
			$(".preloader").show();


			selected = this.value;
			$("#cat-id").val(selected);
			level = $(this).attr('data-level');
			var parent=$(this).parent();
			
			if(selected ==""){
			var prevv=$(parent).prev("li.li-select");
			var base=$(prevv).find('select.base-categories')[0];
			selected=base.value;
			window.location.href="/products?category="+selected ;
			
			
			
			}

			window.location.href="/products?category="+selected ;
			
			return;
			if(selected ==-1){
			
			window.location.href="/products";
			return;
			}
			if(selected ==-2){
			var prevv=$(parent).prev("li.li-select");
			var base=$(prevv).find('select.base-categories')[0];
			selected=base.value;
			level=$(base).attr("data-level");
			
			
			
			}
			


			if (selected != 0) {
				$.get('/getsub/' + selected + '/' + level, function (res) {
					if (res.categories.length > 0) {

						var insertHtml = ``;
						res.categories.forEach(element => {
							insertHtml += `<option value="` + element.id + `">` + element.name + `</option>`
						});
						for (var index = parseInt(res.level); index < 500; index++) {
							$(`.sub-cat-` + index + ``).remove();
						}
						var levelUp = res.level;
						$(`
				<li class="li-select li-rem sub-cat-`+ levelUp + `">
						<select class="base-categories" data-level="`+ levelUp + `">
							<option value="-2" disable=""  selected="">{{__('SubCategory')}}</option>
							`+
							insertHtml
							+ `
						</select>
					</li>
				
				`).insertBefore(".ll")
					}
					else {
						for (var index = parseInt(res.level); index < 500; index++) {
							$(`.sub-cat-` + index + ``).remove();
						}

					}

					$("#msg-res").addClass("hide");

					$(".footer-padding").empty();
					if (res.products.length > 0) {
					$(".spanres").text("Products ("+res.products.length+")");

						res.products.forEach(element => {
							$(".footer-padding").append(`
						<div class="col-md-4 col-sm-6 prod-box">
						<a href="/products/`+ element.id + `">
							<div class="service_box">
								<div class="service_img">
									<div>
										<img src="`+ element.image + `" class="imagel" alt="" />
									</div>
								</div>
								<div class="service_details">
									<h2>`+ element.name + `</h2>
									<div class="limit_char_ul">
										<p class="">
											`+ element.breif + `
										</p>
									</div>
									<input type="button" class="btn-yellow" value="{{__('LEARN MORE')}}">
								</div>
							</div>
						</a>
					</div>
	
	`);
						});
					}
					else {
					$(".spanres").text('');
					$("#msg-res").removeClass("hide");
					}

				})
			}
		});



	</script>


	<script>

		$(document).ready(function () {
		
					setTimeout(function(){$(".alert-page").addClass("hide-warning"); }, 4000);

					$.get("https://ipinfo.io", function(response) {	
					$("#country-ip").val(response.city);
					
					}, "jsonp");
		
		    $("select").each(function () {
		    
       			 $(this).val($(this).find('option[selected]').val());
    			});

			$(".project-carousel.owl-carousel").owlCarousel({
				loop: true,
				margin: 10,
				nav: true,
				navText: ["<i class='fa fa-angle-left'>", "<i class='fa fa-angle-right'>"],
				responsive: {
					0: {
						items: 2
					},
					600: {
						items: 3
					},
					1000: {
						items: 4
					}
				}
			});
		});
	</script>

	<script>

		$("#request-code").submit(function (event) {
			event.preventDefault(); //prevent default action 
			var post_url = $(this).attr("action"); //get form action url
			var request_method = $(this).attr("method"); //get form GET/POST method
			var form_data = $(this).serialize(); //Encode form elements for submission
			$('body').css({ 'cursor': 'wait' });
			$("#alert-msg-check").addClass('hide-warning');
			$.ajax({
				url: post_url,
				type: request_method,
				data: form_data
			}).done(function (response) { //

				$('body').css({ 'cursor': 'default' });
				$('#request-code').trigger("reset");
				$("#alert-msg-check").removeClass('hide-warning');
				$(".alert-success").removeClass('hide-warning');

				
				setTimeout(function(){$("#alert-msg-check").addClass("hide-warning"); }, 4000);
				setTimeout(function(){$(".alert-success").addClass("hide-warning"); }, 4000);


			});
		});

			$("#news-letter").submit(function (event) {
			event.preventDefault(); //prevent default action 
			var post_url = $(this).attr("action"); //get form action url
			var request_method = $(this).attr("method"); //get form GET/POST method
			var form_data = $(this).serialize(); //Encode form elements for submission
			$('body').css({ 'cursor': 'wait' });
			setTimeout(function(){$(".alert-page").addClass("hide-warning"); }, 4000);
			console.log(form_data );
	
			$.get("https://ipinfo.io", function(response) {	
			form_data=form_data+'&country='+response.city;
			debugger;

			  $.ajax({
				url: post_url,
				type: request_method,
				data: form_data
			}).done(function (response) { //

				$('body').css({ 'cursor': 'default' });
				$('#news-letter').trigger("reset");
				$(".msg-news-letter").removeClass('hide');
				setTimeout(function(){$(".alert").addClass("hide-warning"); }, 4000);

			});
			  
			}, "jsonp");
			

			
		});




		$("#filter-products").submit(function (event) {
			event.preventDefault(); //prevent default action 
			var post_url = $(this).attr("action"); //get form action url
			var request_method = $(this).attr("method"); //get form GET/POST method
			var form_data = $(this).serialize(); //Encode form elements for submission
			$('body').css({ 'cursor': 'wait' });

			$.ajax({
				url: post_url,
				type: request_method,
				data: form_data
			}).done(function (response) { //


				$('body').css({ 'cursor': 'default' });
				$('#request-code').trigger("reset");
				$("#alert-msg").removeClass('hide');

				$("#msg-res").addClass("hide");

				$(".footer-padding").empty();
				if (response.data.length > 0) {

					response.data.forEach(element => {
						$(".footer-padding").append(`
								<div class="col-md-4 col-sm-6">
						             <a href="/products/`+ element.id + `">
						                <div class="service_box">
						                    <div class="service_img">
						                        <div>
						                            <img src="`+ element.image + `" class="imagel" alt="" />
						                        </div>
						                    </div>
						                    <div class="service_details">
						                        <h2>`+ element.name + `</h2>
						                        <div class="limit_char_ul">
						                            <p class="">
						                                `+ element.breif + `
						                            </p>
						                        </div>
						                        <input type="button" class="btn-yellow" value="{{__('LEARN MORE')}}">
						                    </div>
						                </div>
						            </a>
						        </div>
			
						`);
					});
				}
				else {
					$("#msg-res").removeClass("hide");

				}

			});
		});


		$("#request-check-code").submit(function (event) {
			event.preventDefault(); //prevent default action 
			var post_url = $(this).attr("action"); //get form action url
			var request_method = $(this).attr("method"); //get form GET/POST method
			var form_data = $(this).serialize(); //Encode form elements for submission
			$('body').css({ 'cursor': 'wait' });
			$("#msg-res").addClass("hide-warning");

			$.ajax({
				url: post_url,
				type: request_method,
				data: form_data
			}).done(function (response) { //

				$('body').css({ 'cursor': 'default' });
				$('#request-check-code').trigger("reset");
				if (response == false) {
				$("#msg-res").removeClass("hide-warning");
					
				setTimeout(function(){$(".alert").addClass("hide-warning"); }, 4000);

				}
				else {
					window.open('/' + response.file, '_blank');
					$("#myModal").modal("hide");
				}


			});
		});
		
		
		
		$('body').on("click","#sh-pop",function(){
		var id=$(this).attr("data-id");
		$("#modalLRInput10id").val(id);
		$("#cat-id-request").val(id);
		
		});
		
		
		
	


					





	</script>
</body>

</html>