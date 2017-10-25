@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    // $chinhanh = Cache::get('chinhanh');
?>
<div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">                           
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li><a href="/" target="_self">Trang chủ</a></li>
                    
                    <li class="active"><span>Liên hệ</span></li>
                    
                </ol>
            </div>
        </div>
    </div>                      
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="page">
            <div class="col-md-12 col-xs-12" id="layout-page">

                <span class="header-contact header-page clearfix">
                    <h1>Liên hệ</h1>
                </span>

                <div class="content-contact content-page">
                
                <p class="text-center">
                    <div class="map_container">{!! $setting->iframemap !!}</div>
                </p>
                <div class="col-md-7 col-sm-12 col-xs-12 contactFormWrapper" id="col-left ">
                    <h3>Viết nhận xét</h3>
                    <hr class="line-left"/>
                    <p>
                        Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại với bạn sớm nhất có thể .
                    </p>
                    <form accept-charset='UTF-8' action="{{route('postContact')}}" class='contact-form' method='post'>
                        <input name='form_type' type='hidden' value='contact'>
                        <input name='_token' type='hidden' value="{{csrf_token()}}">
                        <input name='utf8' type='hidden' value='✓'>
                        <div class="form-group">
                            <label for="contactFormName" class="sr-only">Tên</label>
                            <input required type="text" id="contactFormName" class="form-control input-lg" name="name" placeholder="Tên của bạn" autocapitalize="words" value="">
                        </div>
                        <div class="form-group">
                            <label for="contactFormEmail" class="sr-only">Email</label>
                            <input required type="email" name="email" placeholder="Email của bạn" id="contactFormEmail" class="form-control input-lg" autocorrect="off" autocapitalize="off" value="">
                        </div>
                        <div class="form-group">
                            <label for="contactFormMessage" class="sr-only">Nội dung</label>
                            <textarea required rows="6" name="content" class="form-control" placeholder="Viết bình luận" id="contactFormMessage"></textarea>
                        </div>
                        <input type="submit" class="btn btn-primary btn-lg btn-rb" value="Gửi liên hệ" />
                    </form>
                </div>
                <div class="col-md-5 sm-12 col-xs-12 " id="col-right">
                    <h3>Chúng tôi ở đây</h3>
                    <hr class="line-right"/>
                    <h3 class="name-company">{{$setting->company}}</h3>
                    <!-- <p> Giải pháp bán hàng toàn diện từ website đến cửa hàng </p> -->
                    <ul class="info-address">
                        <li>
                            <i class="fa fa-map-marker"></i>
                            <span>{{$setting->address}}</span>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-envelope"></i>
                            <span>{{$setting->email}}</span>
                        </li>
                        <li>
                            <i class="fa fa-phone"></i> 
                            <span>{{$setting->phone}}</span>
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
