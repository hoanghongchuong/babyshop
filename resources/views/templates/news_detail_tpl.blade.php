@extends('index')
@section('content')

<div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">                           
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5 blog-breadcrumb ">
        <ol class="breadcrumb breadcrumb-arrows">
            <li><a href="{{url('')}}" target="_self">Trang chủ</a></li>
            
            <li><a href="{{url('tin-tuc')}}">Blog - Tin tức</a></li>

            <li class="active"><span>{{$news_detail->name}}</span></li>
            
        </ol>
    </div>
        </div>
    </div>  
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="article" class="content-pages main-content article-detail clearfix " data-sticky_parent>
            <div class="col-md-12 col-sm-12 col-xs-12 article" >
                <div class="row">
                    <!-- Begin article -->
                    <div class="article-body">
                        <div class="col-md-3 col-sm-12 col-xs-12   leftsidebar-col" data-sticky_column>
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
                                    <h3 class="sb-title"> Bài viết mới nhất</h3>       
                                    @foreach($hot_news as $hotNews)
                                    <div class="article seller-item">
                                        <div class="sellers-img">
                                            <a href="{{url('tin-tuc/'.$hotNews->alias.'.html')}}" class="products-block-image content_img clearfix">
                                                <img src="{{asset('upload/news/'.$hotNews->photo)}}" alt="{{$hotNews->name}}"/>
                                            </a>
                                        </div>
                                        <div class="post-content has-sellers-img ">
                                            <a href="{{url('tin-tuc/'.$hotNews->alias.'.html')}}">{{$hotNews->name}}</a><span class="date"> <i class="fa fa-calendar-o"></i>{{date('d/m/Y', strtotime($hotNews->created_at))}}</span>
                                        </div>
                                    </div>                                
                                    @endforeach
                                    
                                </div>
                                <!--End: Bài viết mới nhất-->
                            </div>
                            <!-- End sidebar -->
                        </div>
                        <div class="col-md-9 col-sm-12 col-xs-12   articles " id="layout-page"  data-sticky_column>
                            <span class="clearfix">
                                <h1 class="sb-title-article">{{$news_detail->name}}</h1>
                            </span>

                            <div class="content-page row">
                                <div class="col-md-12 col-sm-12 col-xs-12 article-content">

                                    <div class="body-content">
                                        <ul class="info-more">
                                            <li><i class="fa fa-calendar-o"></i><time pubdate datetime="2016-12-15">{{date('d/m/Y', strtotime($news_detail->created_at))}}</time></li>
                                            <li><i class="fa fa-file-text-o"></i><a href="{{url('tin-tuc')}}"> Tin tức </a> </li>
                                                
                                        </ul>
                                        <div class="article-pages">
                                            {!! $news_detail->content !!}
                                        </div>
                                    </div>

                                </div>
                                
                            </div>

                        </div>   
                        <!-- End article--> 


                        <!-- Begin sidebar -->

                    </div>    
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
