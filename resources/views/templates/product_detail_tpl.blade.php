@extends('index')
@section('content')
<div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">                           
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li><a href="{{url('')}}" target="_self">Trang chủ</a></li>
                    <li><a href="{{url('danh-muc/'.$cateProduct->alias)}}" target="_self">{{$cateProduct->name}}</a></li>
                    <li class="active"><span> {{$product_detail->name}}</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="product" class="content-pages" data-sticky_parent>
            <div class="col-md-3 col-sm-12 col-xs-12  leftsidebar-col" data-sticky_column>
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
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12" data-sticky_column>
                <div  id="wrapper-detail" class="product-page">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div id="surround">
                                <a class="slide-prev slide-nav" href="javascript:">
                                    <i class="fa fa-arrow-circle-o-left fa-2"></i>
                                </a>
                                <a class="slide-next slide-nav" href="javascript:">
                                    <i class="fa fa-arrow-circle-o-right fa-2"></i>
                                </a>
                                <img class="product-image-feature" src="{{asset('upload/product/'.$product_detail->photo)}}" alt="{{$product_detail->name}}">
                                <div id="sliderproduct" class="">
                                    <ul class="slides" >
                                        @foreach($album_hinh as $album)
                                        <li class="product-thumb">
                                            <a href="javascript:" data-image="{{asset('upload/hasp/'.$album->photo)}}" data-zoom-image="{{asset('upload/hasp/'.$album->photo)}}">
                                                <img alt="{{$product_detail->name}}" src="{{asset('upload/hasp/'.$album->photo)}}" data-image="{{asset('upload/hasp/'.$album->photo)}}" >
                                            </a>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>                      
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="product-title">
                                <h1>{{$product_detail->name}}</h1>
                                <span id="pro_sku"></span>
                            </div>
                            <div class="product-price" id="price-preview">  
                                <span>{{number_format($product_detail->price)}} ₫</span>           
                            </div>
                            <form id="add-item-form" action="{{ route('addProductToCart') }}" method="post" class="variants clearfix"> 
                                {!! csrf_field() !!}
                                <input type="hidden" name="product_id" value="{{ $product_detail->id }}">               
                                <div class="select-wrapper ">
                                    <label>Số lượng</label>
                                    <input id="quantity" type="number" name="product_numb" min="1" value="1" class="tc item-quantity" />
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-6 col-xs-12">
                                        <button id="add-to-cart" type="submit" class="btn-detail btn-color-add btn-min-width btn-mgt addtocart-modal" name="add"> 
                                                Thêm vào giỏ 
                                        </button>
                                    </div>
                                    <!-- <div class="col-lg-6 col-md-12 col-sm-6 col-xs-12">                             
                                        <button id="buy-now" class=" btn-detail btn-color-buy btn-min-width btn-mgt">
                                            Mua ngay
                                        </button>
                                    </div> -->          
                                
                            </form>
                        </div>
                            <!-- <div class="pt20"> 
                                <div class="tag-wrapper">
                                    <label>
                                        Tags:
                                    </label>
                                    <ul class="tags">
                                        <li class="active">
                                            <a href="#">PaPa</a>
                                        </li>
                                    </ul>
                                </div>
                            </div> -->
                            

                            <div class="pt20">                                                              
                                <!-- Begin social icons -->
                                <div class="addthis_toolbox addthis_default_style ">
                                    
                                    <div class="info-socials-article clearfix">
                                        <div class="box-like-socials-article">
                                            <div class="fb-send" data-href="{{url('san-pham/'.$product_detail->alias.'.html')}}">
                                            </div>
                                        </div>
                                        <div class="box-like-socials-article">
                                            <div class="fb-like" data-href="{{url('san-pham/'.$product_detail->alias.'.html')}}" data-layout="button_count" data-action="like">
                                            </div>
                                        </div> 
                                        <div class="box-like-socials-article">
                                            <div class="fb-share-button" data-href="{{url('san-pham/'.$product_detail->alias.'.html')}}" data-layout="button_count">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- End social icons -->
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top:20px;">
                            <div role="tabpanel" class="product-comment">
                                <!-- Nav tabs -->
                                <ul class="nav visible-lg visible-md" role="tablist">
                                    <li role="presentation" class="active"><a data-spy="scroll" data-target="#mota" href="#mota" aria-controls="mota" role="tab">Mô tả sản phẩm</a></li>
                                    
                                </ul>
                                <!-- Tab panes -->

                                <div id="mota">     

                                    <div class="title-bl visible-xs visible-sm">
                                        <h2>Mô tả</h2>
                                    </div>                                      

                                    <div class="product-description-wrapper">
                                        
                                    </div>
                                </div>
                                
                                <div id="binhluan">
                                    <div class="title-bl">
                                        <h2>Bình luận</h2>
                                    </div>
                                    <div class="product-comment-fb">
                                        <div id="fb-root"></div>                    
                                        <div class="fb-comments" data-href="{{url('san-pham/'.$product_detail->alias.'.html')}}" data-numposts="5" width="100%" data-colorscheme="light"></div>
                                        
                                    </div>
                                </div>  
                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
$(document).ready(function(){
    if($(".slides .product-thumb").length>4){
        $('#sliderproduct').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth:95,
            itemMargin: 10,
        });
    }
    if($(window).width() > 960){
        jQuery(".product-image-feature").elevateZoom({
            gallery:'sliderproduct',
            scrollZoom : true
        });
    } else {

    }
    jQuery('.slide-next').click(function(){
        if($(".product-thumb.active").prev().length>0){
            $(".product-thumb.active").prev().find('img').click();
        }
        else{
            $(".product-thumb:last img").click();
        }
    });
    jQuery('.slide-prev').click(function(){
        if($(".product-thumb.active").next().length>0){
            $(".product-thumb.active").next().find('img').click();
        }
        else{
            $(".product-thumb:first img").click();
        }
    });
});
</script>
@endsection
