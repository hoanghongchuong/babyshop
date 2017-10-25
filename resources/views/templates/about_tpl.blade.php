@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
 <div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">                           
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li><a href="/" target="_self">Trang chủ</a></li>
                    
                    <li class="active"><span>Giới thiệu</span></li>
                    
                </ol>
            </div>
        </div>
    </div>
                            
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 " id="layout-page">
            <span class="header-page clearfix">
                <h1>Giới thiệu</h1>
            </span>
            <div class="content-page">
                {!! $about->content !!}
            </div>
        </div>
    </div>
</section>
@endsection
