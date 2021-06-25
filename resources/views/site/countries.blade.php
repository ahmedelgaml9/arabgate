@extends('site.tamplate.index')
@section('content')
<div class="inner-banner style-6">
	<img class="center-image" src="{{asset('siteassets/img/inner/bg_6.jpg')}}" alt="">
	<div class="vertical-align">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
		  			<ul class="banner-breadcrumb color-white clearfix">
		  				<li><a class="link-blue-2" href="#">home</a> /</li>
		  				<li><span>countries</span></li>
		  			</ul>
		  			<h2 class="color-white">countries</h2>
  				</div>
			</div>
		</div>
	</div>
</div>

<!-- S_NEWS-ENTRY -->
<div class="main-wraper padd-120">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">

				</div>
			</div>
		</div>
		<div class="blog-grid row">
		             @foreach($countries  as $country)
			<div class="blog-grid-entry col-mob-12 col-xs-12 col-sm-6 col-md-4">
				<div class="s_news-entry style-2">
					<a href="{{url('/singlecountry/'.$country->custom_url)}}"><img class="s_news-img img-responsive" src="{{asset('admin-assets/images/countries/'.$country->photo)}}" alt=""></a>
					<h4 class="s_news-title"><a href="{{url('/singlecountry/'.$country->custom_url)}}">{{$country->name}}</a></h4>
					<div class="tour-info-line clearfix">						
					</div>
					<div class="">{{$country->desc}}</div>
					<a href="{{url('/singlecountry/'.$country->custom_url)}}" class="c-button small bg-dr-blue-2 hv-dr-blue-2-o"><span>view more</span></a>	  	 	
				</div>				
			</div>
            
			@endforeach
              	      
		</div>

				     @include('site.pagination', ['paginator' =>$countries])


	</div>
</div> 

@endsection