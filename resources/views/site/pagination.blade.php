
@if ($paginator->lastPage() > 1)


<div class="c_pagination clearfix">
			<a href="{{ $paginator->url(1) }}" class="c-button b-40 bg-dr-blue-2 hv-dr-blue-2-o fl">prev page</a>
			<a href="{{ $paginator->url($paginator->currentPage()+1) }}" class="c-button b-40 bg-dr-blue-2 hv-dr-blue-2-o fr">next page</a>
			<ul class="cp_content color-3">

@for ($i = 1; $i <= $paginator->lastPage(); $i++)


	<li class="active"><a href="{{ $paginator->url($i)}}"> {{$i}}</a></li>
				
                @endfor	
		</ul>
	</div>

        @endif