<!DOCTYPE html>
<html  lang="AR">
  <head>
    <meta charset="utf-8">
    
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />
           
    <link rel="shortcut icon" href="favicon.ico"/> 
    <link href="{{asset('siteassets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
	<link href="{{asset('siteassets/css/jquery-ui.structure.min.css')}}" rel="stylesheet" type="text/css"/>
	<link href="{{asset('siteassets/css/jquery-ui.min.css')}}" rel="stylesheet" type="text/css"/>
	<link href="{{asset('siteassets/css/DateTimePicker.min.css')}}" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">        
	<link href="{{asset('siteassets/css/style.css')}}" rel="stylesheet" type="text/css"/>     
	<title>بوابة التجارة العربية </title>
  </head>
  
<body data-color="theme-1">
  <div class="loading dr-blue">
	<div class="loading-center">
		<div class="loading-center-absolute">
			<div class="object object_four"></div>
			<div class="object object_three"></div>
			<div class="object object_two"></div>
			<div class="object object_one"></div>
		</div>
	</div>
  </div>
  
  <header class="color-1 hovered menu-3">
   <div class="container">
   	  <div class="row">
   	  	 <div class="col-md-12">
   	  	     <div class="nav">
   	  	    <a href="" class="logo">
   	  	    	<img src="{{asset('admin-assets/images/photo/'.$main->logo)}}" alt="">
   	  	    </a>
   	  	    <div class="nav-menu-icon">
		      <a href="#"><i></i></a>
		    </div>
   	  	 	
    		</div>
   	  	 	<nav class="menu">
			  	<ul>
					<li class="type-1 active">
						<a href="{{url('/')}}">الصفحة الرئيسية</a>
					</li>
					<li class="type-1"><a href="{{url('/blogs')}}">أخبار البوابة<span class="fa fa-angle-down"></span></a>
						
					</li>
					<li class="type-1"><a href="{{url('/countries')}}">الدول <span class="fa fa-angle-down"></span></a>
						
					</li>
					<li class="type-1"><a href="{{url('/aboutus')}}"> عن البوابة<span class="fa fa-angle-down"></span></a>
						
					</li>
					<li class="type-1"><a href="{{url('/contactus')}}">اتصل بنا<span class="fa fa-angle-down"></span></a>
						
					</li>
					<li class="type-1"><a href="{{url('/subscribtion')}}">سجل عضوية<span class="fa fa-angle-down"></span></a>
					</li>
                <li><a href="{{url('login')}}" class="c-button m-right bg-1 b-40">login</a></li> 
			  	</ul>
		   </nav>
		   </div>
   	  	 </div>
   	  </div>
   </div>
  </header>
  