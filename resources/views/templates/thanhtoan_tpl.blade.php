@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>

<!-- <div class="content">
	<div class="wrap">
		<div class="main">
			<div class="main-header">
				<ul class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="cart.html">Giỏ hàng</a>
					</li>
                    
				    <li class="breadcrumb-item breadcrumb-item-current">
					    
							    Thông tin giao hàng
					    
				    </li>
				    <li class="breadcrumb-item ">
					    
							    Phương thức thanh toán
					    
				    </li>
				</ul>
			</div>
			<div class="main-content">
				
					<div class="step">
						<div class="step-sections " step="1">
								<div class="section">
									<div class="section-header">
										<h2 class="section-title">Thông tin giao hàng</h2>
									</div>
									<div class="section-content section-customer-information no-mb">
										    <input name="utf8" type="hidden" value="✓">
										    <div class="inventory_location_data">
												    <input name="customer_shipping_district" type="hidden" value="" />
													<input name="customer_shipping_ward" type="hidden" value="" />
										    </div>
                                        
										<div class="fieldset">
												<div class="field   ">
													<div class="field-input-wrapper">
														<label class="field-label" for="billing_address_full_name">Họ và tên</label>
														<input placeholder="Họ và tên" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="billing_address_full_name" name="billing_address[full_name]" value="" />
													</div>
													
												</div>
											
											
												
													<div class="field  field-two-thirds  ">
														<div class="field-input-wrapper">
															<label class="field-label" for="checkout_user_email">Email</label>
															<input placeholder="Email" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="email" id="checkout_user_email" name="checkout_user[email]" value="" />
														</div>
														
													</div>
												
											
											
												<div class="field field-required field-third  ">
													<div class="field-input-wrapper">
														<label class="field-label" for="billing_address_phone">Số điện thoại</label>
														<input placeholder="Số điện thoại" autocapitalize="off" spellcheck="false" class="field-input" size="30" maxlength="11" type="tel" id="billing_address_phone" name="billing_address[phone]" value="" />
													</div>
													
												</div>
											
											
												<div class="field   ">
													<div class="field-input-wrapper">
														<label class="field-label" for="billing_address_address1">Địa chỉ</label>
														<input placeholder="Địa chỉ" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="billing_address_address1" name="billing_address[address1]" value="" />
													</div>
													
												</div>
											
										</div>
									</div>
									<div class="section-content">
										<div class="fieldset">
											
										</div>
									</div>
                                   
								</div>
                            
							
						</div>
						<div class="step-footer">
                            
                                
                                    <form id="form_next_step" accept-charset="UTF-8" method="post">
                                        <input name="utf8" type="hidden" value="✓">
                                        <button type="submit" class="step-footer-continue-btn btn">
                                            <span class="btn-content">Gửi đơn hàng</span>
                                            <i class="btn-spinner icon icon-button-spinner"></i>
                                        </button>
                                    </form>
                                    <a class="step-footer-previous-link" href="{{url('gio-hang')}}">
                                        
                                        Giỏ hàng
                                    </a>
                                
                            
						</div>
					</div>
				
			</div>
		</div>
	</div>
</div> -->
<div class="content-cart">
	<div class="container">
		<div class="row" style="margin-top: 20px;">
			<div class="col-sm-12 col-md-12">
				<ul class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="{{url('gio-hang')}}">Giỏ hàng</a>
					</li>
		            
				    <li class="breadcrumb-item breadcrumb-item-current"> Thông tin giao hàng </li>
				    <li class="breadcrumb-item "> Phương thức thanh toán </li>
				</ul>
			</div>

			<div class="col-md-6 col-xs-12">
				<form class="form-group cart-info-frm" method="post" action="{{route('postOrder')}}">
            		<input type="hidden" name="_token" value="{{csrf_token()}}">
					<h3>Thông tin giao hàng</h3>
					<div class="form-group">
						<input type="text" required="required" name="full_name" class="form-control" placeholder="Họ và tên">
					</div>
					<div class="form-group">
						<input type="email" required="required" name="email" class="form-control" placeholder="Email">
					</div>
					<div class="form-group">
						<input type="text" required="required" name="phone" class="form-control" placeholder="Số điện thoại">
					</div>
					<div class="form-group">
						<input type="text" required="required" name="address" class="form-control" placeholder="Địa chỉ">
					</div>
					
					<div class="form-group">
                   	 	<textarea name="note" id="" class="form-control" placeholder="Nội dung đặt hàng"></textarea>
                    </div>
                    <div class="pull-right"><button type="submit" class="btn btn-primary">Gửi đơn hàng</button></div>
				</form>
			</div>
			<div class="col-md-6 col-xs-12">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><span class="visually-hidden">Hình ảnh</span></th>
							<th scope="col"><span class="visually-hidden">Số lượng</span></th>
							<th scope="col"><span class="visually-hidden">Giá</span></th>
						</tr>
					</thead>
					<tbody>
						@foreach($product_cart as $item)
						<tr>
							<td><img src="{{asset('upload/product/'.$item->options->photo)}}" style="width: 4.6em; height: 4.6em" ></td>
							<td>{{$item->qty}}</td>
							<td>{{number_format($item->price)}}</td>
						</tr>
						@endforeach						
					</tbody>
				</table>
				<p class="pull-right" style="font-size: 1.71429em; font-weight: 500; color: #4b4b4b; line-height: 1em;">Tổng tiền: {{number_format($total)}} đ</p>
			</div>
			
		</div>
	</div>
</div>
@endsection