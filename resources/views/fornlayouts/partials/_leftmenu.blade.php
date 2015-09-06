<?php $i=0;?>

@foreach ($items as $item)

<li role="presentation">
     <a href="{{ route('index.showbycategory',$item['id']) }}" data-toggle="collapse" data-target="#{{ $i }}" aria-expanded="false" aria-controls="{{ $i }}">{{ $text }}{{ $item['name'] }}</a> 

    @if(isset($item['sub']))
    	<ul class="nav nav-pills nav-stacked collapse" id="{{ $i }}">
    		@include('fornlayouts.partials._leftmenu', array('items' => $item['sub'],'text'=>'    - '.$text))
    	</ul>
    @endif
</li>

@endforeach
<?php $i++;?>



