@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">                           
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li><a href="{{url('')}}" target="_self">Trang chủ</a></li>
                    <li><a href="{{url('san-pham')}}" target="_self">Sản phẩm</a></li>
                    <li class="active"><span>Tất cả sản phẩm</span></li>
                </ol>
            </div>
        </div>
    </div>                          
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="collection" class="content-pages collection-page" data-sticky_parent>
    
    <!-- Begin collection info -->
    <!-- Content--> 
    <div class="col-lg-12 visible-sm visible-xs">
        <div class="visible-sm visible-xs">
            <h1 class="title-sm" >
                Tất cả sản phẩm
            </h1>
        </div>
        
        <div class="filter-by-wrapper">
            <div class="filter-by" >
                
                <div class="sort-filter-option navbar-inactive" id="navbar-inner">
                    <div class="filterBtn txtLeft btn-navbar-collection">
                        <span class="list-coll">
                            <i class="fa fa-server" aria-hidden="true"></i>
                            Danh mục 
                        </span>
                    </div>
                </div>
                
                
                <div class="sort-filter-option js-promoteTooltip" >
                    <div class="filterBtn txtLeft showOverlay" >
                        <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i>
                        <span  class="custom-dropdown custom-dropdown--white">
                            <select class="sort-by custom-dropdown__select custom-dropdown__select--white">
                                <option value="price-ascending">Giá: Tăng dần</option>
                                <option value="price-descending">Giá: Giảm dần</option>
                                <option value="title-ascending">Tên: A-Z</option>
                                <option value="title-descending">Tên: Z-A</option>
                                <option value="created-ascending">Cũ nhất</option>
                                <option value="created-descending">Mới nhất</option>
                                <option value="best-selling">Bán chạy nhất</option>
                            </select>
                        </span>
                    </div>
                </div>
                        
            </div>
        </div>
    </div>
    <div class=" col-md-3 col-sm-12 col-xs-12 leftsidebar-col" data-sticky_column >
        <div class="group_sidebar">

            <div class="list-group navbar-inner ">
                    
                <div class="mega-left-title btn-navbar title-hidden-sm">
                    <h3 class="sb-title">Danh mục </h3>
                </div>
                
                <ul class="nav navs sidebar menu" id='cssmenu'>   
                    @foreach($cate_pro as $key=>$cate)
                        <?php $cateChilds = DB::table('product_categories')->where('parent_id',$cate->id)->get(); ?>
                    <li class='item has-sub active first'>
                        <a href="{{url('danh-muc/'.$cate->alias)}}">
                            <span class="lbl">{{$cate->name}}</span>
                            @if(count($cateChilds) > 0)
                            <span data-toggle="collapse" data-parent="#cssmenu" href="#sub-item-{{$key}}" class="sign drop-down"></span>
                            @endif
                        </a>
                        <ul class="nav children collapse" id="sub-item-{{$key}}">
                            @if($cateChilds)
                                @foreach($cateChilds as $cateChild)
                                <li class="first">
                                    <a href="{{url('danh-muc/'.$cateChild->alias)}}" title="{{$cateChild->name}}">
                                        <span>{{$cateChild->name}}</span>
                                    </a>
                                </li>
                                @endforeach
                            @endif
                        </ul>
                    </li>
                    @endforeach
                </ul>
            </div>

            <!-- Banner quảng cáo -->
                <div class="list-group_l banner-left hidden-sm hidden-xs">
                    <a href="">
                        <img src="{{asset('public/images/left_image_ad.jpg')}}" >
                    </a>
                </div>
        </div>
        <script>
        $(document).ready(function(){
            //$('ul li:has(ul)').addClass('hassub');
            $('#cssmenu ul ul li:odd').addClass('odd');
            $('#cssmenu ul ul li:even').addClass('even');
            $('#cssmenu > ul > li > a').click(function() {
                $('#cssmenu li').removeClass('active');
                $(this).closest('li').addClass('active');
                var checkElement = $(this).nextS();
                if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                    $(this).closest('li').removeClass('active');
                    checkElement.slideUp('normal');
                }
                if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                    $('#cssmenu ul ul:visible').slideUp('normal');
                    checkElement.slideDown('normal');
                }
                if($(this).closest('li').find('ul').children().length == 0) {
                    return true;
                } else {
                    return false;
                }
            });

            $('.drop-down').click(function(e){      
                if ( $(this).parents('li').hasClass('has-sub') ){
                    e.preventDefault();
                    if($(this).hasClass('open-nav')){
                        $(this).removeClass('open-nav');
                        $(this).parents('li').children('ul.lve2').slideUp('normal').removeClass('in');
                    }else {
                        $(this).addClass('open-nav');
                        $(this).parents('li').children('ul.lve2').slideDown('normal').addClass('in');
                    }
                }else {

                }
            });

        });
        $("#list-group-l ul.navs li.active").parents('ul.children').addClass("in");
        </script>
    </div>
    <div class="content-col col-md-9 col-sm-12 col-xs-12" data-sticky_column>
        <div class="row">
            <div class="main-content">
                <div class="col-md-12 hidden-sm hidden-xs">
                    <div class="sort-collection">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <h1>
                                    Tất cả sản phẩm
                                </h1>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="browse-tags">
                                    <span>Sắp xếp theo:</span>
                                    <span  class="custom-dropdown custom-dropdown--white">
                                        <select class="sort-by custom-dropdown__select custom-dropdown__select--white">
                                            <option value="">Sắp xếp</option>
                                            option
                                            @foreach($sortType as $type => $value)
                                            <option value="{{ $type }}" @if($type == $selected) {{"selected"}} @endif >{{ $value['text'] }}</option>
                                            @endforeach
                                        </select>
                                    </span>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>              
                <div class="col-md-12 col-sm-12 col-xs-12 content-product-list">
                    <div class="row product-list">
                        @foreach($products as $product)
                        <div class="col-md-4  col-sm-6 col-xs-12 pro-loop">
                            <div class="product-block product-resize">
                                <div class="product-img image-resize view view-third">
                                    <a href="{{url('san-pham/'.$product->alias.'.html')}}" title="Xe trượt HDL">
                                        <img class="first-image  has-img" alt=" {{$product->name}} " src="{{asset('upload/product/'.$product->photo)}}"  /> <?php @$image = DB::table('images')->where('product_id', $product->id)->orderBy('id','asc')->first(); ?>     
                                        <img  class ="second-image" src="{{asset('upload/hasp/'.@$image->photo)}}"  alt="{{$product->name}}" />
                                    </a>
                                    <div class="actionss">
                                        <!-- <div class="btn-cart-products">
                                            <a href="javascript:void(0);" onclick="add_item_show_modalCart(1009814358)">
                                                <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                        <div class="view-details">
                                            <a href="{{url('san-pham/'.$product->alias.'.html')}}" class="view-detail" > 
                                                <span><i class="fa fa-clone"> </i></span>
                                            </a>
                                        </div> -->
                                        <!-- <div class="btn-quickview-products">
                                            <a href="javascript:void(0);" class="quickview" data-handle="detail.html"><i class="fa fa-eye"></i></a>
                                        </div> -->
                                    </div>
                                </div>
                                <div class="product-detail clearfix">
                                    <!-- sử dụng pull-left -->
                                    <h3 class="pro-name"><a href="{{url('san-pham/'.$product->alias.'.html')}}" title="{{$product->name}}">{{$product->name}} </a></h3>
                                    <div class="pro-prices">    
                                        <p class="pro-price">{{number_format($product->price)}} ₫</p>
                                        <p class="pro-price-del text-left"></p> 
                                    </div>
                                </div>
                            </div>  
                        </div> 
                        @endforeach                       
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12 ">
                    <div class="clearfix">
                        <div id="pagination" class="">
                            <div class="paginations">
                                {{ $products->links() }}
                            </div>
                        
                            <!-- <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs">
                                    
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 text-center">
                                
                                
                                
                                <span class="page-node current">1</span>
                                
                                
                                
                                <a class="page-node" href="#">2</a>
                                
                                
                                
                                <a class="page-node" href="#">3</a>  
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs"> 
                                <a class="pull-right next fa fa-angle-right" href="#"><span>Trang sau</span></a> 
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- End collection info -->
    <!-- Begin no products -->

    
    <!-- End no products -->
</div>


</div>
</section>
@endsection
