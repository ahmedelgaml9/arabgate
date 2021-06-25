@extends('site.tamplate.index')
@section('content')

<div class="inner-banner style-6">
	<img class="center-image" src="{{asset('siteassets/img/detail/bg_3.jpg')}}" alt="">
	<div class="vertical-align">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
		  			<ul class="banner-breadcrumb color-white clearfix">
		  				<li><a class="link-blue-2" href="#">home</a> /</li>
		  				<li><a class="link-blue-2" href="#">blog</a> /</li>
		  				<li><span>blog detail</span></li>
		  			</ul>
		  			<h2 class="color-white">blog</h2>
  				</div>
			</div>
		</div>
	</div>
</div>

<!-- BLOG -->
<div class="detail-wrapper">
	<div class="container">
       	<div class="row padd-90">
       		<div class="col-xs-12 col-md-8">
       		

       			<div class="detail-content">
       				<div class="detail-content-block">
					    <img    class="s_news-img img-responsive"  src="{{asset('admin-assets/images/blogs/'.$singleblog->photo)}}">				
						<h3>{{$singleblog->title}}</h3>
						<p>{{$singleblog->desc}}</p>
							
						<div class="isotope-container row row10">
							<div class="grid-sizer col-mob-12 col-xs-6 col-sm-4"></div>
							<div class="item gal-item col10 col-mob-12 col-xs-6 col-sm-4">
								<a class="black-hover" href="#">
									<img class="img-full img-responsive" src="img/detail/blog_gal_1.jpg" alt="">
									<div class="tour-layer delay-1"></div>
									<div class="vertical-align">
										<div class="date color-white">July <strong>19th</strong> to July <strong>26th</strong></div>
										<h4 class="color-white"><b>tours in monaco</b></h4>
									</div>
								</a>
							</div>
							<div class="item gal-item col10 col-mob-12 col-xs-6 col-sm-4">
								<a class="black-hover" href="#">
									<img class="img-full img-responsive" src="img/detail/blog_gal_2.jpg" alt="">
									<div class="tour-layer delay-1"></div>
									<div class="vertical-align">
										<div class="date color-white">July <strong>19th</strong> to July <strong>26th</strong></div>
										<h4 class="color-white"><b>tours in monaco</b></h4>
									</div>
								</a>
							</div>
							<div class="item gal-item col10 col-mob-12 col-xs-6 col-sm-4">
								<a class="black-hover" href="#">
									<img class="img-full img-responsive" src="img/detail/blog_gal_3.jpg" alt="">
									<div class="tour-layer delay-1"></div>
									<div class="vertical-align">
										<div class="date color-white">July <strong>19th</strong> to July <strong>26th</strong></div>
										<h4 class="color-white"><b>tours in monaco</b></h4>
									</div>
								</a>
							</div>
							<div class="item gal-item col10 col-mob-12 col-xs-6 col-sm-4">
								<a class="black-hover" href="#">
									<img class="img-full img-responsive" src="img/detail/blog_gal_4.jpg" alt="">
									<div class="tour-layer delay-1"></div>
									<div class="vertical-align">
										<div class="date color-white">July <strong>19th</strong> to July <strong>26th</strong></div>
										<h4 class="color-white"><b>tours in monaco</b></h4>
									</div>
								</a>
							</div>
							<div class="item gal-item col10 col-mob-12 col-xs-6 col-sm-4">
								<a class="black-hover" href="#">
									<img class="img-full img-responsive" src="img/detail/blog_gal_5.jpg" alt="">
									<div class="tour-layer delay-1"></div>
									<div class="vertical-align">
										<div class="date color-white">July <strong>19th</strong> to July <strong>26th</strong></div>
										<h4 class="color-white"><b>tours in monaco</b></h4>
									</div>
								</a>
							</div>
							<div class="item gal-item col10 col-mob-12 col-xs-6 col-sm-4">
								<a class="black-hover" href="#">
									<img class="img-full img-responsive" src="img/detail/blog_gal_6.jpg" alt="">
									<div class="tour-layer delay-1"></div>
									<div class="vertical-align">
										<div class="date color-white">July <strong>19th</strong> to July <strong>26th</strong></div>
										<h4 class="color-white"><b>tours in monaco</b></h4>
									</div>
								</a>
							</div>											
						</div>
						

						<div class="tags clearfix">
							<div class="tags-title color-dark-2">tag:</div>
							<ul class="clearfix">
							@foreach($singleblog->tags as $tag)
	 							<li><a class="c-button b-30 b-1 bg-grey-2 hv-dr-blue-2" href="{{url('/tags'.$tag->tag)}}">{{$tag->tag}}</a></li>	
								 @endforeach				
	 						</ul>						
						</div> 
						<div class="share clearfix">
							<div class="share-title color-dark-2">share:</div>
							<ul>
		    			      	<li class="color-fb"><a href=""><i class="fa fa-facebook"></i>facebook<span class="color-fb-2">12</span></a></li>
		    			      	<li class="color-tw"><a href=""><i class="fa fa-twitter"></i>twitter<span class="color-tw-2">27</span></a></li>
		    			      	<li class="color-gg"><a href=""><i class="fa fa-google-plus"></i>google +<span class="color-gg-2">51</span></a></li>
		    			      	<li class="color-pin"><a href=""><i class="fa fa-pinterest"></i>pinterest<span class="color-pin-2">70</span></a></li>
	    			      	</ul>						
						</div>
					</div> 					     			
				</div>
				<div class="additional-block padd-90">
					<h4 class="additional-title">related posts</h4>
					<div class="may-interested row">
					@foreach($related as $blog)


						<div class="col-xs-12 col-sm-6">
							<div class="s_news-entry">
								<a href="{{url('/singleblog/'.$blog->custom_url)}}"><img class="s_news-img img-responsive" src="{{asset('admin-assets/images/blogs/'.$blog->photo)}}" alt=""></a>
								<h4 class="s_news-title"><a href="">{{$blog->title}}</a></h4>
								<div class="s_news-text color-grey-3">{{$blog->desc}}</div>	  	 	
							</div>				
						</div>

                           @endforeach

					</div>
				</div>					       			
       		</div>
       		<div class="col-xs-12 col-md-4">
       			<div class="right-sidebar">
       			
					<div class="sidebar-block type-2">
						<h4 class="sidebar-title color-dark-2">categories</h4>
						<ul class="sidebar-category color-5">
							<li>
								<a href="#">all <span class="fr">(125)</span></a>
							</li>
					        @foreach($cats  as $cat)
							<li>
								<a href="#">{{$cat->name}} <span class="fr">(72)</span></a>
							</li>	
							@endforeach																								
						</ul>
					</div> 
					<div class="sidebar-block type-2">
						<h4 class="sidebar-title color-dark-2">popular posts</h4>
						<div class="widget-popular">
					    @foreach($popular as $new) 
							<div class="hotel-small style-2 clearfix">
								<a class="hotel-img black-hover" href="{{url('/singleblog/'.$blog->custom_url)}}">
									<img class="img-responsive radius-0" src="{{asset('admin-assets/images/blogs/'.$blog->photo)}}" alt="">
									<div class="tour-layer delay-1"></div>        						
								</a>
								<div class="hotel-desc">
									
			    					<h4>{{$new->title }}</h4>
												    					
								</div>
							</div>

                               @endforeach

						</div>
					</div>
				
					<div class="sidebar-block type-2">
						<div class="widget-slider arrows">
							<div class="swiper-container" data-autoplay="0" data-loop="1" data-speed="900" data-center="0" data-slides-per-view="1">
								<div class="swiper-wrapper">
									<div class="swiper-slide radius-4 active" data-val="0">
										<img class="center-image" src="img/detail/widget_s.jpg" alt="">
										<div class="vertical-bottom">
											<h4 class="color-white">best hotels reviews</h4>
											<div class="tour-info-line clearfix">
												<div class="tour-info">
										  	 		<img src="img/calendar_icon.png" alt="">
										  	 		<span class="font-style-2 color-white">03/07/2015</span>
										  	 	</div>
												<div class="tour-info">
										  	 		<img src="img/people_icon.png" alt="">
										  	 		<span class="font-style-2 color-white">By Emma Stone</span>
										  	 	</div>					
											</div>											
										</div>
									</div>
									
								</div>    
								<div class="pagination pagination-hidden poin-style-1"></div>
							    <div class="arr-t-3">
									<div class="swiper-arrow-left sw-arrow"><span class="fa fa-angle-left"></span></div>
									<div class="swiper-arrow-right sw-arrow"><span class="fa fa-angle-right"></span></div>
								</div>			
							</div>
						</div>
				
					<div class="sidebar-block type-2">
						<h4 class="sidebar-title color-dark-2">popular tags</h4>
						<ul class="widget-tags clearfix">
 							
						  @foreach($mytags as $tag )
	 							<li><a class="c-button b-30 b-1 bg-grey-2 hv-dr-blue-2" href="{{url('/tags'.$tag->tag)}}">{{$tag->tag}}</a></li>	
								 @endforeach
 						</ul>
					</div>
																			
															      				
       			</div>       			
       		</div>
       	</div>
	</div>
</div>

@endsection
