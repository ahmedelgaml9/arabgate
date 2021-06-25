@extends('site.tamplate.index')
@section('content')

<div class="inner-banner style-6">
	<img class="center-image" src="{{asset('siteassets/img/detail/bg_4.jpg')}}" alt="">
	<div class="vertical-align">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-8 col-md-offset-2">
					<ul class="banner-breadcrumb color-white clearfix">
						<li><a class="link-blue-2" href="#">home</a> /</li>
						<li><a class="link-blue-2" href="#"></a> /</li>
						<li><span>detail</span></li>
					</ul>
					<h2 class="color-white"></h2>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- DETAIL WRAPPER -->
<div class="detail-wrapper">
	<div class="container">
		<div class="detail-header">
			<div class="row">
				<div class="col-xs-12 col-sm-8">
					<h2 class="detail-title color-dark-2">{{$singlecountry->name}}</h2>
				</div>
			</div>
		</div>
		<div class="row padd-90">
			<div class="col-xs-12 col-md-8">
				<div class="detail-content">
					<div class="detail-content-block clearfix">
						<h3>General Information About tour</h3>
						<p>
							{{$singlecountry->desc}}
						</p>
						<img class="left-img" src="img/detail/flight_2.jpg" alt="">


						<table class="table table-bordered">
							<tr>
								<thead>
									<th> name</th>
									<th>link</th>
								</thead>
							</tr>

							<tbody>
								@foreach($countrylinks as $links )
								<tr>
									<td>{{$links->name}}</td>

									<td>{{$links->link}}</td>
								</tr>
								@endforeach
							</tbody>

						</table>

					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4">
				<div class="right-sidebar">
					<div class="help-contact bg-grey-2">
						<h4 class="color-dark-2">Need Help?</h4>
						<p class="color-grey-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
							ut labore et dolore magna aliqua.</p>
						<a class="help-phone color-dark-2 link-red-3" href="tel:0200059600"><img src="img/detail/phone24-red.png" alt="">020
							00 59 600</a>
						<a class="help-mail color-dark-2 link-red-3" href="mailto:let’s_travel@world.com"><img src="img/detail/letter-red.png"
							 alt="">let’s_travel@world.com</a>
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
				@foreach($countryinfo as $country)
				@if(Auth()->user()|| $country->status == 0)

				<div class="blog-grid-entry col-mob-12 col-xs-12 col-sm-6 col-md-4">
					<div class="s_news-entry style-2">
						<a href="{{url('/singleblog/'.$country->custom_url)}}"><img class="s_news-img img-responsive" src="{{ asset('admin-assets/images/countriesinfo/'.$country->photo) }}" width="200" height="100"
							 alt=""></a>
						<h4 class="s_news-title"><a href="{{url('/singleblog/'.$country->custom_url)}}">{{ $country->title }}</a></h4>
						<div class="tour-info-line clearfix">
						
						</div>
						<div class="s_news-text color-grey-3">{{ $country->desc }}</div>
						<a href="{{url('/singleblog/'.$country->custom_url)}}" class="c-button small bg-dr-blue-2 hv-dr-blue-2-o"><span>view
								more</span></a>
					</div>
				</div>
				@endif
				@endforeach

			</div>
		</div>
	</div>
</div>
</div>

@endsection