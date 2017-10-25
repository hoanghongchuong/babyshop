<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();

?>
@if(isset($slider))

	<div class="slider-default bannerslider">
		<div class="hrv-banner-container">
			<div class="hrvslider">
				<ul class="slides">
					@foreach($slider as $item)
					<li>
						<a href="{{$item->link}}" class="hrv-url">
							<img class="img-responsive" src="{{ asset('upload/hinhanh/'.$item->photo) }}" alt="Thời trang dạo phố" />
						</a>
						<div id="hrv-banner-caption1" class="hrv-caption hrv-banner-caption">
							<div class="container">
								<div class="hrv-caption-inner">
									<div class="hrv-banner-content slider-1">
											<h2 class="hrv-title1">{{$item->name}}</h2>						
										<h3 class="hrv-title2">{{$item->mota}}</h3>			
										<a href="{{$item->link}}" class="hrv-url">Xem ngay</a>
									</div>	
								</div>
							</div>
						</div>			
					</li>
					@endforeach
				</ul>
			</div>
		</div>
	</div>
@endif