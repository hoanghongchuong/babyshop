<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

    <link href="{{asset('public/css/default_style.min.css')}}" rel='stylesheet' type='text/css'  media='all'  />
    <link rel="stylesheet" href="{{asset('public/css/bootstrap.3.3.1.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/flexslider.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/roboto.css')}}">
    <link href="{{asset('public/css/font-awesome.min.css')}}" rel='stylesheet' type='text/css'  media='all'  />
    <link href="{{asset('public/css/styles.css')}}" rel='stylesheet' type='text/css'  media='all'  />

    <script src="{{asset('public/js/jquery.min.1.11.0.js')}}"></script>
    <script src="{{asset('public/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('public/js/option_selection.js')}}" type='text/javascript'></script>
    <script src="{{asset('public/js/api.jquery.js')}}" type='text/javascript'></script>
    <script src="{{asset('public/js/default_script.min.js')}}" type='text/javascript'></script>
    <script src="{{asset('public/js/scripts.js')}}" type='text/javascript'></script>
    <script src="{{asset('public/js/myscript.js')}}" type='text/javascript'></script>
    <script src="{{asset('public/js/custom.js')}}" type='text/javascript'></script>


</head>
<body>
    <nav id="menu-mobile" class="hidden" >
        <ul>
            <li><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li class="has-children"><a href="{{url("san-pham")}}" title="">Sản phẩm</a>
                <?php $cates = DB::table('product_categories')->where('parent_id',0)->get(); ?>
                <ul class="child count-nav-5">
                    @foreach($cates as $cate)
                        <?php $cateChilds = DB::table('product_categories')->where('parent_id',$cate->id)->get(); ?>
                    <li class="has-children">
                        <a href="{{url('danh-muc/'.$cate->alias)}}">{{$cate->name}}</a>
                        <ul class="child">  
                            @if($cateChilds)
                                @foreach($cateChilds as $cateChild)                    
                                    <li><a href="{{url('danh-muc/'.$cateChild->alias)}}">{{$cateChild->name}}</a></li> 
                                @endforeach
                            @endif           
                            <!-- <li><a href="collections5.html">Đồ chơi hướng nghiệp</a></li>   <li><a href="collections5.html">Đồ chơi vận động</a></li>               
                            <li><a href="collections5.html">Đồ chơi cho bé gái</a></li>   -->           
                        </ul>
                    </li>
                    @endforeach
                   
                </ul>

            </li>
            <li><a href="{{url('tin-tuc')}}">Blog</a></li>
            <li><a href="{{url('gioi-thieu')}}">Giới thiệu</a></li>
            <li><a href="{{url('lien-he')}}">Liên hệ</a></li>
        </ul>
    </nav>
   <div id="page">
        <section id="page_content">
            @include('templates.layout.header')
            @yield('content')
            @include('templates.layout.footer')
        </section>
        
   </div>
    <a href="#" class="scrollToTop ">
        <i class="fa fa-chevron-up"></i>
    </a>
   

    {{ $setting->codechat }}
    {{ $setting->analytics }}
    @yield('script')
</body>
</html>