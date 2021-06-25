@extends('site.tamplate.index')
@section('content')

<div class="inner-banner style-5">
	<img class="center-image" src="img/inner/bg_1.jpg" alt="">
	<div class="vertical-align">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
	  			<ul class="banner-breadcrumb color-white clearfix">
	  				<li><a class="link-blue-2" href="#">home</a> /</li>
	  				<li><a class="link-blue-2" href="#">tours</a> /</li>
	  				<li><span>list tours</span></li>
	  			</ul>
	  			<h2 class="color-white">all tours for you</h2>
	  			<p class="color-white-light">Curabitur nunc erat, consequat in erat ut, congue bibendum nulla. Suspendisse id pharetra lacus, et hendrerit mi quis leo elementum. Lorem ipsum dolor sit.</p>
  			</div>
			</div>
		</div>
	</div>
</div>

<!-- SIMPLE-TEXT -->
<div class="main-wraper">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">
					<h4 class="subtitle color-dr-blue-2 underline">about us</h4>
					<h2>Rockstar Team</h2>
				</div>
			</div>
		</div>  	
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-5">
				<div class="simple-text">
					<h3>Who We Are?</h3>

					<p class="color-grey">{{$main->vision}}</p>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="simple-text">
					<h3>What We Do?</h3>
					<div class="row">
					
						<div class="col-mob-12 col-xs-6">
                        <p class="color-grey">{{$main->mission}}</p>

						</div>						
					</div>
				</div>
			</div>
			<div class="col-mob-12 col-xs-6 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0">
				<img class="img-responsive img-full" src="img/inner/about.jpg" alt="">
			</div>
		</div>
    </div>
</div>

<!-- TEAM -->
<div class="main-wraper padd-90">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">
					<h4 class="subtitle color-dr-blue-2 underline">our team</h4>
					<h2>MEET OUR TEAM</h2>
				</div>
			</div>
		</div>
		<div class="row">
		

 @foreach($team as $mem)  		
 
 	<div class="col-xs-12 col-sm-4">
				<div class="team-entry">
					<div class="image">
				  	<img class="team-img img-responsive" src="{{ asset('admin-assets/images/team/'.$mem->photo) }}"    style="height:300px; width:400px;" alt="">
					  <div class="team-layer bg-dark-blue">
					
				      </div>
				    </div>
					<h3 class="team-name color-dark-2">{{ $mem->name}}</h3>
					<h5 class="team-position color-dark-2-light">{{ $mem->position}}</h5>
				</div>
			</div>

                        @endforeach

		</div>
	</div>
</div>


<!-- ICON-BLOCK -->
<div class="main-wraper bg-grey-2 padd-90">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">
					<h4 class="subtitle color-dr-blue-2 underline">our services</h4>
					<h2>we are the best</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="swiper-container" data-autoplay="0" data-loop="0" data-speed="1000" data-slides-per-view="responsive" data-mob-slides="1" data-xs-slides="2" data-sm-slides="2" data-md-slides="3" data-lg-slides="4" data-add-slides="4">
				  <div class="swiper-wrapper">
				  @foreach($features as $feature)

					<div class="swiper-slide">
						<div class="icon-block style-2 bg-white">
							<img class="icon-img bg-dr-blue-2 border-grey-2" src="img/home_8/icon_4.png" alt="">
							<h5 class="icon-title color-dark-2">{{$feature->title}}</h5>
							<div class="icon-text color-dark-2-light">{{$feature->desc}}</div>
							<a href="#" class="c-button small bg-dr-blue-2 hv-dr-blue-2-o"><span>view more</span></a>
						</div>					
					</div>

                         @endforeach
				  </div>
				<div class="pagination poin-style-2"></div>  
			</div>
		</div>				
	</div>
</div>


@endsection