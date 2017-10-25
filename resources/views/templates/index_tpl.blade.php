@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$cateProducts = Cache::get('cateProducts');
?>

@include('templates.layout.slider')

<section id="content" class="clearfix container">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<!-- Content-->
			<div class="main-content">
				<!-- Sản phẩm trang chủ -->
				<div class="product-list clearfix" >			
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<aside class="styled_header  use_icon ">
								<h2>What hot</h2>
													
								<h3>Sản phẩm nổi bật</h3>
								<span class="icon"><img src="{{asset('public/images/icon_featured.png')}}" alt=""></span>
								
							</aside>
						</div>
					</div>	
					<!--Product loop-->
					<div class="row content-product-list products-resize">
						@foreach($hot_product as $hotProduct)
						<div class="col-md-3 col-sm-6 col-xs-6 pro-loop">
							<div class="product-block product-resize">
								<div class="product-img image-resize view view-third">
									<a href="{{url('san-pham/'.$hotProduct->alias.'.html')}}" title="{{$hotProduct->name}}">
										<img class="first-image  has-img" alt="{{$hotProduct->name}} " src="{{asset('upload/product/'.$hotProduct->photo)}}"  />
										<?php @$image = DB::table('images')->where('product_id', $hotProduct->id)->orderBy('id','asc')->first(); ?>			
										<img  class ="second-image" src="{{asset('upload/hasp/'.@$image->photo)}}"  alt=" {{$hotProduct->name}}" />
									</a>
									<div class="actionss">
										<div class="btn-cart-products">
											<a href="javascript:void(0);" onclick="add_item_show_modalCart(1009814266)">
												<i class="fa fa-shopping-bag" aria-hidden="true"></i>
											</a>
										</div>
										<div class="view-details">
											<a href="{{url('san-pham/'.$hotProduct->alias.'.html')}}" class="view-detail" > 
												<span><i class="fa fa-clone"> </i></span>
											</a>
										</div>
										<!-- <div class="btn-quickview-products">
											<a href="javascript:void(0);" class="quickview" data-handle="detail.html"><i class="fa fa-eye"></i></a>
										</div> -->
									</div>
								</div>

								<div class="product-detail clearfix">
									<!-- sử dụng pull-left -->
									<h3 class="pro-name"><a href="{{url('san-pham/'.$hotProduct->alias.'.html')}}" title="{{$hotProduct->name}}">{{$hotProduct->name}} </a></h3>
									<div class="pro-prices">	
										<p class="pro-price">{{number_format($hotProduct->price)}} ₫</p>
										<p class="pro-price-del text-left"></p>	
									</div>
								</div>
							</div>	
						</div>
						@endforeach
					</div>
					<div class="row">
						<div class="col-lg-12 col-sm-12 col-xs-12  pull-center center">
							<!-- <a class="btn btn-readmore" href="collectionshot-products.html" role="button">Xem thêm</a> -->
						</div>
					</div>
				</div>
									<!--Product loop-->

				<div class="row">
					<div class="col-lg-12 col-sm-12 col-xs-12">
						<div class="animation fade-in home-banner-1">
							<aside class="banner-home-1" >
								<div class="divcontent"><span class="ad_banner_1">Miễn phí vận chuyển<strong class="ad_banner_2" >Với tất cả đơn hàng trên 500k</strong></span>
									<span class="ad_banner_desc" >Miễn phí 2 ngày vận chuyển với đơn hàng trên 500k trừ trực tiếp khi thanh toán</span>
								</div>
								<div class="divstyle"></div>
							</aside>
						</div>	
					</div>
				</div>

				<div class="product-list clearfix ">
					<div class="row">
						<div class="col-lg-12 col-sm-12 col-xs-12">
							<aside class="styled_header  use_icon ">					
								<h3>Sản phẩm mới</h3>
								<span class="icon"><img src="{{asset('public/images/icon_sale.png')}}" alt="Newest trends"></span>	
							</aside>
						</div>
					</div>

					<div class="row content-product-list products-resize">
						@foreach($news_product as $newProduct)
						<div class="col-md-3 col-sm-6 col-xs-6 pro-loop">
							<div class="product-block product-resize">
								<div class="product-img image-resize view view-third">
									<a href="detail.html" title="Xe đẩy Geoby">
										<img class="first-image  has-img" alt=" {{$newProduct->name}} " src="{{asset('upload/product/'.$newProduct->photo)}}"  />
										<?php @$image = DB::table('images')->where('product_id', $newProduct->id)->orderBy('id','asc')->first(); ?>			
										<img  class ="second-image" src="{{asset('upload/hasp/'.$image->photo)}}"  alt=" {{$newProduct->name}} " />
									</a>
									<div class="actionss">
										<div class="btn-cart-products">
											<a href="javascript:void(0);" onclick="add_item_show_modalCart(1009814338)">
												<i class="fa fa-shopping-bag" aria-hidden="true"></i>
											</a>
										</div>
										<div class="view-details">
											<a href="detail.html" class="view-detail" > 
												<span><i class="fa fa-clone"> </i></span>
											</a>
										</div>
										<!-- <div class="btn-quickview-products">
											<a href="javascript:void(0);" class="quickview" data-handle="detail.html"><i class="fa fa-eye"></i></a>
										</div> -->
									</div>
								</div>

								<div class="product-detail clearfix">
									<!-- sử dụng pull-left -->
									<h3 class="pro-name"><a href="detail.html" title="{{$newProduct->name}}">{{$newProduct->name}} </a></h3>
									<div class="pro-prices">	
										<p class="pro-price">{{number_format($newProduct->price)}} đ</p>
										@if($newProduct->price_old > $newProduct->price)						
										<p class="pro-price-del text-left">{{number_format($newProduct->price_old)}}</p>
										@endif
									</div>
								</div>
							</div>	
						</div>
						@endforeach
					</div>
					<div class="row">
						<div class="col-lg-12 pull-center center ">
							<a class="btn btn-readmore" href="{{url('san-pham')}}" role="button">Xem thêm</a>
							
						</div>
					</div>
				</div>

				<div class="banner-bottom">
					<div class="row">
						
						<div class="col-xs-12 col-sm-6 home-category-item-2">
							<div class="block-home-category"> 
								<a   href="collectionshot-products.html">
									<img class="b-lazy b-loaded" src="{{asset('public/images/block_home_category1.jpg')}}"  alt="Thời trang nữ">
								</a>			
							</div>
						</div>
						
						
						<div class="col-xs-12 col-sm-6 home-category-item-3">
							<div class="block-home-category">
								<a   href="collectionshot-products.html">
									<img class="b-lazy b-loaded" src="{{asset('public/images/block_home_category2.jpg?v=21')}}" alt="Thời trang nam">
								</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
<!-- end Content-->
		</div>
</div>
</section>
@endsection
