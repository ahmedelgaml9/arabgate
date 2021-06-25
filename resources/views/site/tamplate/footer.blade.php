@inject('mytags','App\Tags')
@inject('b','App\Blog')
<?php

$tags= $mytags::all();
$latest = $b::where('status','1')->orderby('id','desc')->paginate(4);


?>

<footer class="bg-dark type-2">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
    				<div class="footer-block">
    					<img src="{{asset('admin-assets/images/photo/'.$main->logo)}}" alt="" class="logo-footer" style="width:200px;height:100px;">
    					<div class="f_text color-grey-7"> الاتحاد العربى للمخلصين الجمركيين</div>
    					<div class="footer-share">
    						<a href="{{$main->fb}}"><span class="fa fa-facebook"></span></a>
    						<a href="{{$main->tw}}"><span class="fa fa-twitter"></span></a>
    						<a href="{{$main->gp}}"><span class="fa fa-google-plus"></span></a>
    						<a href="{{$main->pn}}"><span class="fa fa-pinterest"></span></a>
    					</div>
    				</div>
    			</div>
    			<div class="col-lg-3 col-md-3 col-sm-6 col-sm-6 no-padding">
				   <div class="footer-block">
						<h6>التجارة العربية</h6>
					    
						@foreach($latest as  $blog)
						<div class="f_news clearfix">
							<a class="f_news-img black-hover" href="#">
								<img class="img-responsive" src="img/home_6/news_1.jpg" alt="">
								<div class="tour-layer delay-1"></div>
							</a>
							<div class="f_news-content">
								<a class="f_news-tilte color-white link-red" href="#">{{$blog->title}} </a>
								<span class="date-f"> {{$blog->created_at}}</span>
								<a href="{{$blog->custom_url}}" class="r-more">عرض المزيد</a>
							</div>
						</div>
                         @endforeach

				   </div>
				</div>
    			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
    			   <div class="footer-block">
                     <h6>العلامات الدلااليه</h6>
                      @foreach($tags as  $tag)
					
    			      <a href="{{$tag->custom_url}}" class="tags-b">{{$tag->tag}}</a>

					  @endforeach
				   </div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                   <div class="footer-block">
                     <h6>معلومات الاتصال</h6>
                       <div class="contact-info">
                        <div class="contact-line color-grey-3"><i class="fa fa-map-marker"></i><span>{{$main->address}}</span></div>
						<div class="contact-line color-grey-3"><i class="fa fa-phone"></i><a>{{$main->phone}}</a></div>
						<div class="contact-line color-grey-3"><i class="fa fa-envelope-o"></i><a>{{$main->email}}</a></div>					
						<div class="contact-line color-grey-3"><i class="fa fa-globe"></i><a href="#">{{$main->url}}</a></div>					
						
					</div>
				   </div> 
				</div>
    		</div>
    	</div>
    	<div class="footer-link bg-black">
    	  <div class="container">
    	  	<div class="row">
    	  	</div>
    	  </div>
    	</div>
    </footer>                                                                                                                      
<script src="{{asset('siteassets/js/jquery-2.1.4.min.js')}}"></script>
<script src="{{asset('siteassets/js/bootstrap.min.js')}}"></script>
<script src="{{asset('siteassets/js/jquery-ui.min.js')}}"></script>
<script src="{{asset('siteassets/js/idangerous.swiper.min.js')}}"></script>
<script src="{{asset('siteassets/js/jquery.viewportchecker.min.js')}}"></script>
<script src="{{asset('siteassets/js/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('siteassets/js/DateTimePicker.min.js')}}"></script>
<script src="{{asset('siteassets/js/jquery.mousewheel.min.js')}}"></script>
<script async defer
 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCSVTBT9lb_crgK1Qdq-3RTMWh1IjoxtrI

">
    </script>
<script src="{{asset('siteassets/js/map.js')}}"></script>
<script src="{{asset('siteassets/js/all.js')}}"></script>
</body>
</html>