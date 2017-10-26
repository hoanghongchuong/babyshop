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
                    <li class="active"><span>Blog - Tin tức</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="blog" class="page-content main-content content-pages" data-sticky_parent>
            <!-- Begin content -->
            <div class="blog-content col-md-12 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-md-3  col-sm-12 col-xs-12 leftsidebar-col" data-sticky_column>
                        <!-- Begin sidebar blog -->
                        <div class="sidebar ">
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
                            </div>
                            <!-- End: Danh mục tin tức -->
                            
                            
                                                                                
                            <!--Begin: Bài viết mới nhất-->
                            <div class=" group_sidebar">
                                <h3 class="sb-title">
                                Bài viết nổi bật
                                </h3>
                                @foreach($tintuc_noibat as $hotNews)
                                <div class="article seller-item">
                                    
                                    <div class="sellers-img">
                                        <a href="{{url('tin-tuc/'.$hotNews->alias.'.html')}}" class="products-block-image content_img clearfix">
                                            <img src="{{asset('upload/news/'.$hotNews->photo)}}" alt="{{$hotNews->name}}"/>
                                        </a>
                                    </div>
                                    
                                    <div class="post-content has-sellers-img ">
                                        <a href="{{url('tin-tuc/'.$hotNews->alias.'.html')}}">{{$hotNews->name}}</a><span class="date"> <i class="fa fa-calendar-o"></i>15/12/2016</span>
                                    </div>
                                </div>                                
                                @endforeach
                            </div>
                            <!--End: Bài viết mới nhất-->
                            
                        </div>
                        <!-- End sidebar blog -->
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12 " id="blog-container" data-sticky_column>
                        <div class="row">
                            <div class="articles clearfix" id="layout-page">
                                <div class="col-md-12  col-sm-12 col-xs-12">
                                    <h1>Tin tức</h1>
                                </div>
                                @foreach($tintuc as $news)
                                <div class="news-content">
                                    
                                    <div class="col-md-5 col-xs-12 col-sm-12 img-article">
                                        <div class="art-img">
                                            <img src="{{asset('upload/news/'.$news->photo)}}" alt="" >
                                        </div>
                                    </div>
                                    
                                    <div class=" col-md-7 col-sm-12  col-xs-12" >
                                        <!-- Begin: Nội dung bài viết -->
                                        <h2 class="title-article"><a href="{{url('tin-tuc/'.$news->alias.'.html')}}">{{$news->name}}</a></h2>
                                        <div class="body-content">
                                            <ul class="info-more">
                                                <li><i class="fa fa-calendar-o"></i><time pubdate datetime="2016-12-15">15/12/2016</time></li>
                                                <li><i class="fa fa-file-text-o"></i><a href="#"> Tin tức   </a> </li>
                                                
                                            </ul>
                                            <p>{{$news->mota}}</p>
                                        </div>
                                        <!-- End: Nội dung bài viết -->
                                        <a class="readmore btn-rb clear-fix" href="{{url('tin-tuc/'.$news->alias.'.html')}}" role="button">Xem tiếp <span class="fa fa-angle-double-right"></span></a>
                                    </div>
                                </div>
                                <hr class="line-blog"/>
                                @endforeach
                               
                                <!-- End: Nội dung blog -->
                            </div>
                            <div class="col-md-12">
                                <!-- Begin: Phân trang blog -->
                                <div id="pagination" style="text-align: center;" class="">
                                    <div class="paginations">
                                        {{ $tintuc->links() }}
                                    </div>
                                    
                                </div>
                                <!-- End: Phân trang blog -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End content -->
            
        </div>
    </div>
</section>
@endsection
