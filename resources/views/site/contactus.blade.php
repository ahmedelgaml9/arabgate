@extends('site.tamplate.index')
@section('content')

<div class="map-block">
	<div id="map-canvas" class="style-4" data-lat="33.664467" data-lng="-117.601586" data-zoom="10" data-style="2"></div>
    <div class="addresses-block">
        <a data-lat="33.664467" data-lng="-117.601586" data-string="Santa Monica Hotel"></a>
    </div>
</div>
<div class="main-wraper">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">
					<h4 class="subtitle color-dr-blue-2 underline">contact info</h4>
					<h2>get in touch</h2>
				</div>
			</div>
		</div>
		<div class="contact-row">
		 @foreach($contacts  as $contact)
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="contact-entry">
						<img class="contact-icon" src="{{asset('siteassets/img/loc_icon_2_dark.png')}}" alt="">
						<div class="contact-label color-grey-3">Address:</div>
						<div class="contact-text color-dark-2">{{$contact->address}}</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="contact-entry">
						<img class="contact-icon" src="{{asset('siteassets/img/mail_icon_l_dark.png')}}" alt="">
						<div class="contact-label color-grey-3">Email us:</div>
						<a class="contact-text color-dark-2 link-dr-blue-2" href="mailto:let’s_travel@world.com">{{$contact->email}}</a>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="contact-entry">
						<img class="contact-icon" src="{{asset('siteassets/img/phone_icon_3_dark.png')}}" alt="">
						<div class="contact-label color-grey-3">Phone:</div>
						<a class="contact-text color-dark-2 link-dr-blue-2" href="tel:">{{$contact->phone}}/a>
					</div>
				</div>						
			</div>
             @endforeach
		</div>
		<div class="share style-2 clearfix">
			<ul>
		      	<li class="color-in"><a href=""><i class="fa fa-linkedin"></i>linkedin<span class="color-in-2"></span></a></li>			
		      	<li class="color-fb"><a href=""><i class="fa fa-facebook"></i>facebook<span class="color-fb-2"></span></a></li>
		      	<li class="color-tw"><a href=""><i class="fa fa-twitter"></i>twitter<span class="color-tw-2"></span></a></li>
		      	<li class="color-gg"><a href=""><i class="fa fa-google-plus"></i>google +<span class="color-gg-2"></span></a></li>
		      	<li class="color-pin"><a href=""><i class="fa fa-pinterest"></i>pinterest<span class="color-pin-2"></span></a></li>
	      	</ul>						
		</div>
	</div>
</div>	

<!-- CONTACT-FORM -->
<div class="main-wraper padd-90">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">
					<h4 class="subtitle color-dr-blue-2 underline">contact form</h4>
					<h2>have a question?</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
				<div class="second-description text-center color-grey-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</div>			
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">

			{!! Form::open(array('action' =>'OursiteController@submitcontactus','method'=>'POST')) !!}
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<div class="input-style-1 type-2 color-2">
							  	<input type="text" required=""  name="name" placeholder="Enter your name">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="input-style-1 type-2 color-2">
							  	<input type="text" required=""  name="email" placeholder="Enter your email">
							</div>
						</div>
						
						<div class="col-xs-12 col-sm-6">
							<div class="input-style-1 type-2 color-2">
							  	<input type="text" required=""   name="subject" placeholder="Enter your subject">
							</div>
						</div>	
					
						<div class="col-xs-12">
							<textarea class="area-style-1 color-1" required=""  name="message" placeholder="Enter your comment"></textarea>
							<div class="text-center">
								<button type="submit" class="c-button bg-dr-blue-2 hv-dr-blue-2-o"><span>submit comment</span></button>
							</div>
						</div>
					</div>					
				</form>
			</div>
		</div>
	</div>
</div>	   
@endsection