<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $cateProducts = Cache::get('cateProducts');
?>
<header class="header bkg hidden-sm hidden-xs">
    <div class="container clearfix">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 logo">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-7 col-xs-7">
                        <!-- LOGO -->
                        <h1>
                            <a href="{{url('')}}">
                                <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="default-baby" class="img-responsive logoimg"/>
                            </a>
                        </h1>
                        
                        <h1 style="display:none">
                            <a href="index.html">default-baby</a>
                        </h1>
                    </div>
                    <div class="hidden-lg hidden-md col-sm-5 col-xs-5 mobile-icons" >
                        <div>
                            <a href="{{url('gio-hang')}}" title="Xem giỏ hàng" class="mobile-cart"><span>{{\Cart::count()}}</span></a>
                            <a href="#" id="mobile-toggle"><i class="fa fa-bars"></i></a>
                        </div>
                    </div>
                </div>
            </div>  
            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 ">
                <aside class="top-info">
                    <div class="cart-info hidden-xs">
                        <a class="cart-link" href="{{url('gio-hang')}}">          
                            <span class="icon-cart"></span>
                            <div class="cart-number">{{\Cart::count()}}</div>
                        </a>
                        
                    </div>

                    <div class="navholder">
                        <nav id="subnav">
                            <ul>
                                <li>
                                    <a href="tel:0134647979"><i class="fa fa-phone" aria-hidden="true"></i>{{$setting->phone}}</a>
                                </li>
                                <!-- <li><a class="reg" href="register.html" title="Đăng ký">ĐĂNG KÝ</a></li>
                                <li><a class="log" href="login.html" title="Đăng nhập">Đăng nhập</a></li> -->
                            </ul>
                        </nav>
                        <div class="header_line"><p>Miễn phí vận chuyển<span class="mar-l5">ĐƠN HÀNG TRÊN 900K</span></p></div>
                    </div>
                </aside>
            </div>  
        </div>
    </div>
</header>
<nav class="navbar-main navbar navbar-default cl-pri">
    <!-- MENU MAIN -->
    <div class="container nav-wrapper check_nav">
        <div class="row">
            <div class="navbar-header"> 
                <div class="mobile-menu-icon-wrapper">
                    <div class="menu-logo">
                        <h1 class="logo logo-mobile">
                            <a href="{{url('')}}">
                                <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="default-baby" class="img-responsive logoimg"/>
                            </a>
                        </h1>   
                        
                        <div class="nav-login">
                            <a href="#" class="cart " title="Tài khoản">
                                <svg class="icon icon-user" viewBox="0 0 32 32">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-user">
                                    </use>
                                </svg>
                            </a>
                        </div>

                        <div class="menu-btn click-menu-mobile "><a href="#menu-mobile" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span></a>
                        </div>

                        <div id="cart-targets" class="cart">
                            <a href="cart.html" class="cart " title="Giỏ hàng">
                                <span >     

                                    <svg class="shopping-cart">
                                        <use xmlns:xlink="//www.w3.org/1999/xlink" xlink:href="#icon-add-cart" />
                                    </svg>                                                      
                                </span>     
                                <span id="cart-count" class="cart-number">{{\Cart::count()}}</span>
                            </a>
                        </div>
                    </div>
                    <div class="search-bar-top">
                        <div class="search-input-top">
                            <form  action="{{ route('search') }}" method="post">
                                <input type="hidden" required="required" name="" value="product" />
                                 <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <input type="text" name="txtSearch" placeholder="Tìm kiếm sản phẩm ..." />
                                <button type="submit" class="icon-search" >
                                    <svg class="icon-search_white">
                                        <use xmlns:xlink="//www.w3.org/1999/xlink" xlink:href="#icon-search_white" />
                                    </svg>  
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav clearfix">
                    <li class="@if(!empty($com) && $com=='index')active @endif">
                        <a href="{{url('')}}" class=" current" title="Trang chủ">
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li class="dropdown @if(!empty($com) && $com=='san-pham') active @endif">
                        <a href="{{url('san-pham')}}" title="Sản phẩm" class="">
                            <span>Sản phẩm</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <?php $cate_pro = DB::table('product_categories')->where('parent_id',0)->get(); ?>
                            @foreach($cate_pro as $key=>$cate)
                            <?php $cateChilds = DB::table('product_categories')->where('parent_id',$cate->id)->get(); ?>
                            <li>
                                <a href="{{url('danh-muc/'.$cate->alias)}}" title="Đồ chơi trẻ em">{{$cate->name}}</a>
                                @if( count($cateChilds) > 0)
                                <ul class="dropdown-menu">
                                    @foreach($cateChilds as $cateChild)
                                    <li>
                                        <a href="{{url('danh-muc/'.$cateChild->alias)}}" title="{{$cateChild->name}}">{{$cateChild->name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                                @endif
                            </li>
                            @endforeach
                            
                        </ul>
                    </li>
                    <li class="@if(!empty($com) && $com=='tin-tuc') active @endif ">
                        <a href="{{url('tin-tuc')}}" class="" title="Blog">
                            <span>Blog</span>
                        </a>
                    </li>
                    <li class="@if(!empty($com) && $com=='gioi-thieu') active @endif">
                        <a href="{{url('gioi-thieu')}}" class="" title="Giới thiệu">
                            <span>Giới thiệu</span>
                        </a>
                    </li>
                    <li class="@if(!empty($com) && $com=='lien-he') active @endif ">
                        <a href="{{url('lien-he')}}" class="" title="Liên hệ">
                            <span>Liên hệ</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div  class="hidden-xs pull-right right-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="col-md-12">

                        <div class="search-bar">

                            <div class="">
                                <form  action="{{route('search')}}">
                                    <input type="hidden" name="type" value="" />
                                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                                    <input type="text" required="required" name="txtSearch" placeholder="Tìm kiếm..."  autocomplete="off" />
                                </form>
                            </div>
                        </div>
                    </li>

                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div><!-- End container  -->

    <script>
        $(window).resize(function(){
            $('li.dropdown li.active').parents('.dropdown').addClass('active');
            if($('.right-menu').width() + $('#navbar').width() > $('.check_nav.nav-wrapper').width() - 40)
            {
                $('.nav-wrapper').addClass('responsive-menu');
            }
            else{
                $('.nav-wrapper').removeClass('responsive-menu');
            }
        });

        $(document).on("click", ".mobile-menu-icon .dropdown-menu ,.drop-control .dropdown-menu, .drop-control .input-dropdown", function (e) {
            e.stopPropagation();
        });
    </script>
    <script>
        $(function() {
            $('nav#menu-mobile').mmenu();
        });
        $(document).ready(function(){
            flagg = true;
            if(flagg){
                $('.click-menu-mobile a').click(function(){
                    $('#menu-mobile').removeClass('hidden');
                    flagg = false;
                })
            }
        })
    </script>
</nav>