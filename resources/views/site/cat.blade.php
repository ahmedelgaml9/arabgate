@extends('site.tamplate.index')
@section('content')
<!-- Section # Contact -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/droidarabickufi.css"><!-- Fontawesome Icons -->

<style>
        p,div,a{
        font-family: 'Droid Arabic Kufi'
        }

</style>	
<section id="contact" class="section dark-bg">
    <!-- Start # Header -->
    <header>
        <div class="container header">
            <div class="row">
                <div class="col-md-12">
                    <article>
                        <h1>{{ $cat->name }}</h1>
<!--                        <h4 class="sub-title">Don’t worry about the map .. we’ll show you ! <strong>the way</strong></h4>-->
                        <span class="breaker">
                            <span class="white-divider"></span>
                            <span class="other-divider"></span>
                            <span class="white-divider"></span>
                        </span>
                    </article>
                </div>
            </div>
        </div>
    </header>
    <!-- Start # Content -->
    <div class="white">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mrg-bottom pad-bottom">
                    <article>
                        <h2 class="section-title"> </h2>
                    </article>
                </div>
                @foreach($blogs as $blog)
                <div class="col-md-12 blog">
                    <article>
                        <div class="post-image">
                            <div class="flexslider slide-background no-shadow">
                                <ul class="slides">
                                    <li>
                                        <img src="{{ asset('admin-assets/images/blogs/'.$blog->photo) }}" alt="{{ $blog->photo_alt }}" style="height: 500px">
                                    </li>
                                    @foreach($blog->photoes as $photo)
                                    <li>
                                        <img src="{{ asset('admin-assets/images/blog/'.$photo->photo) }}" alt="{{ $blog->photo_alt }}" style="height: 500px">
                                    </li>
                                    @endforeach

                                </ul>
                            </div>
                             
                        </div>
                    </article>
                    <article>
                        <h3 class="blog-title">
                            <i class="fa fa-book"></i>
                            <span>{{ date('d M,Y',strtotime($blog->created_at))}}</span>
                            <a href="{{ url($blog->custom_url) }}" target="_blank">{{ mb_substr($blog->title,0,100) }}</a>
                        </h3>
                        <p>
                             <a href="">{{ $cat->name}}</a>
                        </p>
                    </article>
                    <article>
                        <p class="pad-top">{{ mb_substr($blog->desc,0,1000) }}</p>
                        <p class="pad-top text-right">
                            <a href="{{ url($blog->custom_url) }}" target="_blank" class="view-more"> view more</a>
                        </p>
                    </article>
                </div>
                @endforeach
            </div>
        </div>
    </div>


</section>
<!-- End Section # Contact -->
@section('js')

@endsection

@endsection