@extends('site.tamplate.index')
@section('content')
@inject('siteinfo','App\Siteinfo')

<?php


$siteinformation=$siteinfo::find(1);


?>

    <div class="top-baner header2-baner">
		<div id="map-canvas" class="style-1" data-lat="39.3968490" data-lng="3.4163545" data-zoom="4" data-style="2"> </div>
        

       		@foreach($countries as $country)

		<div class="addresses-block">
			<a data-lat="{{$country->lat}}" data-lng="{{$country->lang}}" data-string="{{$country->name}}"  href="https://www.facebook.com/"></a>
		</div>
  
		@endforeach
       
    </div>      
                    <!-- ICON-BLOCK -->
					<div class="main-wraper bg-grey-2 padd-90">
                    	<div class="container">
                    		<div class="row">
                    			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
                    				<div class="second-title">
                    				</div>
                    			</div>
                    		</div>
                    		<div class="row">
                    		
                               @foreach($features as $feature)
                    			<div class="col-xs-12 col-sm-6 col-md-3">
                    				<div class="icon-block style-2 bg-white"  style="height:300px;" >
                    					<img class="icon-img bg-blue-2 border-grey-2" src="img/home_8/icon_4.png" alt="">
                    					<h5 class="icon-title color-dark-2">{{$feature->title}}</h5>
                              <div class="icon-text color-dark-2-light">{{$feature->desc}}</div>
                    					<a href="{{$feature->link}}" class="c-button small bg-blue hv-blue delay-2"><span>عرض المزيد</span></a>
                    				</div>
                    			</div>


                                 @endforeach

                    		</div>
                    	</div>
                    </div>
               
           		      <div class="main-wraper padd-90">
                    	<div class="container">
                    		<div class="row">
                    			<div class="col-md-12">
                    				<div class="second-title">
                    					<h2>أعضاء بوابة التجارة العربية</h2>
                    				</div>
                    			</div>
                    		</div>
                    		<div class="investors-block">
                    			<div class="row no-margin">
                    			
                    			@foreach($customers as $icon)
                    				<div class="col-mob-6 col-xs-4 col-sm-3 col-md-2 clear-mob-2 clear-xs-3 clear-sm-4 clear-md-6 no-padding">
                    					<a class="investor-logo" href="{{$icon->link}}"><img class="img-responsive"  src="{{asset('admin-assets/images/countries/'.$icon->photo)}}" alt=""></a>
                    				</div>
         
                          @endforeach
                    			</div>
                    		</div>
                    	</div>
                    </div>

           			<section class="section m-none">
                <div class="investors-block">
              		<div class="container">
              			<div class="row">
              				<div class="col-xs-12 col-sm-8 col-sm-offset-2">
              				</div>
              			</div>
              			<div class="tour-item-grid row">
              			
              	      @foreach($blogs  as $blog)
              				<div class="col-mob-12 col-xs-6 col-sm-6 col-md-4 clear-xs-2 clear-md-3">
              					<div class="tour-item style-2"   height="300px">
              						<div class="radius-top">
              						 	<img src="{{asset('admin-assets/images/blogs/'.$blog->photo)}}"  style="width:300px; height:200px;" alt="">
              						 	<div class="tour-weather"></div>
              						</div>
              						<div class="tour-desc bg-white">
              							<a href="#" class="c-button bg-green hv-green-o delay-2 small"><span>عرض المزيد </span></a>
              							<h4><a class="tour-title color-dark-2 link-green" href="#">{{$blog->title}} </a></h4>
              							<div class="tour-text color-grey-3">{{$blog->desc}}</div>
              					 	</div>
              					</div>
              				</div>
                     @endforeach
				</section><br><br><br><br><br>
         <section class="section section-default"style="background-color:gray">
                        <div class="container" >
                             <div class="col-md-6 mt-lg">
                                    <img class="img-responsive appear-animation" src="{{asset('admin-assets/images/countries/'.$siteinformation->photo)}}" style="width:356px; height:378px;"  data-appear-animation="fadeInRight" alt="">
                                </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br><h2 class="mt-lg">التجارة<strong>العربية </strong></h2>
                                    <p class="lead">{{$siteinformation->title}}
                                    <p class="mt-lg">{{$siteinformation->desc}}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section><br><br>
                    <div class="main-wraper padd-110">
		<div class="container clearfix contry-wrapp">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<div class="second-title style-3">
						<h4 class="subtitle color-dark-2-light">our tours</h4>
						<h2 class="color-dark-2">tours to any place in the world</h2>
					</div>					
				</div>
				<div class="col-xs-12 col-sm-12 col-md-9">
					<div class="row">
						@foreach($countries as $country)
						<div class="col-mob-12 col-xs-6 col-sm-4 col-md-2">
							<a class="contry-item">
								<img class="img-responsive" src="{{asset('admin-assets/images/countries/'.$country->photo)}}" alt="">
								<h5>{{$country->name}}</h5>
							</a>							
						</div>
                       @endforeach

					</div>
				</div>
			</div>
		</div>
	</div>

             <br> <div class="main-wraper color-2 padd-95">
               
                <div class="container">
                    <div class="counters row">
                      
					  @foreach($counters as $counter)
                        <div class="col-mob-12 col-xs-6 col-sm-3">
                            <div class="counter-entry">
                                <img class="counter-icon" src="{{asset('admin-assets/images/countries/'.$counter->photo)}}" style="width:100px; height:100px;" alt="">
                                <div class="counter-number underline color-orange" data-to="55598" data-speed="3000">{{$counter->number}}</div>
                                <h5 class="counter-title color-orange"> {{$counter->title}} </h5>
                            </div>
                        </div>
                      
                     	@endforeach											
                    </div>

                </div>
            </div><br><br><br><br>
            @endsection
