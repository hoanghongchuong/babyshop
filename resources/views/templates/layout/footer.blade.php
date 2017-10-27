<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<footer id="footer">
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3 col-xs-12 clear-sm">
                    <div class="widget-wrapper animated">
                        <h3 class="title title_left">Giới thiệu</h3>
                        <div class="inner about_us">
                            <p class="message">{!! $about->mota !!}</p>
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-home"></i>{{$setting->address}}
                                </li>
                                <li>
                                    <i class="fa fa-envelope-o"></i> <a href="{{$setting->email}}">{{$setting->email}}</a>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i><a href="tel:{{$setting->phone}}">{{$setting->phone}}</a>
                                </li>
                                <li>
                                    <i class="fa fa-print"></i><a href="tel:0123467964">0123.467.964</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-md-2 col-xs-12 clear-sm">
                    <div class="widget-wrapper animated">
                        <h3 class="title title_left">Liên kết</h3>
                        <div class="inner">
                            <ul class="list-unstyled list-styled">
                                <li class=""><a href="{{url('')}}">Trang chủ</a> </li>
                                <li><a href="{{url('san-pham')}}">Sản phẩm</a></li>
                                <li>
                                    <a href="{{url('tin-tuc')}}">Blog</a>
                                </li>
                                <li>
                                    <a href="{{url('gioi-thieu')}}">Giới thiệu</a>
                                </li>
                                <li>
                                    <a href="{{url('lien-he')}}">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-md-3 col-xs-12 clear-sm">
                    <div class="widget-wrapper animated">
                        <h3 class="title title_left">Đăng kí nhận tin</h3>
                        <div class="inner">
                            <form accept-charset='UTF-8' action="{{ route('postNewsletter') }}" class='contact-form' method='post'>
                                <input name='form_type' type='hidden' value='customer'>
                                <input name='_token' type='hidden' value="{{csrf_token()}}">
                                <input name='utf8' type='hidden' value='✓'>

                                <div class="group-input"> 
                                    <input type="hidden" id="contact_tags" name="contact[tags]" value="khách hàng tiềm năng, bản tin" />     
                                    <input type="email" required="required" name="txtEmail" id="contact_email" />
                                    <span class="bar"></span>
                                    <label>Nhập email của bạn</label>
                                    <button type="submit"><i class="fa fa-paper-plane-o"></i></button>
                                </div>
                            </form>               
                             
                            <div class="caption">Hãy nhập email của bạn vào đây để nhận tin!</div>
                        </div>
                        <div id="widget-social" class="social-icons">
                            <ul class="list-inline">
                                <li>
                                  <a target="_blank" href="{{$setting->facebook}}" class="social-wrapper facebook">
                                    <span class="social-icon">
                                      <i class="fa fa-facebook"></i>
                                    </span>
                                  </a>
                                </li>
                                
                                <li>
                                  <a target="_blank" href="{{$setting->twitter}}" class="social-wrapper twitter">
                                    <span class="social-icon">
                                      <i class="fa fa-twitter"></i>
                                    </span>
                                  </a>
                                </li>
                                <li>
                                  <a target="_blank" href="#" class="social-wrapper pinterest">
                                    <span class="social-icon">
                                      <i class="fa fa-pinterest"></i>
                                    </span>
                                  </a>
                                </li>
                                <li>
                                  <a target="_blank" href="{{$setting->google}}" class="social-wrapper google">
                                    <span class="social-icon">
                                      <i class="fa fa-google-plus"></i>
                                    </span>
                                  </a>
                                </li>
                                <li>
                                  <a target="_blank" href="{{$setting->youtube}}" class="social-wrapper youtube">
                                    <span class="social-icon">
                                      <i class="fa fa-youtube"></i>
                                    </span>
                                  </a>
                                </li>
                                <li>
                                  <a target="_blank" href="#" class="social-wrapper instagram">
                                    <span class="social-icon">
                                      <i class="fa fa-instagram"></i>
                                    </span>
                                  </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-sm-6 col-md-4 col-xs-12 clear-sm">
                    <div class="widget-wrapper animated">
                        <h3 class="title title_left">Kết nối với chúng tôi</h3>
                        <div class="inner">
                            <!-- Facebook widget -->
                            <div class="footer-static-content"> 
                                <div class="fb-page" data-href="https://www.facebook.com/gco.vn"  data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false">  </div>
                            </div>
                            <div style="clear:both;" ></div>

                            <!-- #Facebook widget -->
                            <!-- <script>
                              (function(d, s, id) {
                              var js, fjs = d.getElementsByTagName(s)[0];
                              if (d.getElementById(id)) return;
                              js = d.createElement(s); js.id = id;
                              js.src = "#";/*//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=263266547210244&version=v2.0*/
                              fjs.parentNode.insertBefore(js, fjs);
                              }(document, 'script', 'facebook-jssdk'));
                            </script> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-copyright">
        <div class="container copyright">                       
            <p>Copyright &copy; 2017 default-baby. <a target='_blank' href='https://www.gco.vn'>Powered by GCO</a>.</p>
        </div>
    </div>
</footer>


<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>