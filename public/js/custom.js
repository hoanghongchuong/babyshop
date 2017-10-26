// jQuery(document).ready(function($) {
// 	$('.sort-by').change(function(event) {
// 		var a = $(this).val();
// 		var url = window.location.href;
// 		window.location.href = url + '?'+ a;
// 	});



// });
$(document).ready(function(){
    $('.addCart').click(function(){
        var id = $('.product_id').val();
        alert(id);
        var qtt =1;
        $.ajax({
            url: window.urlAddCart,
            type: 'POST',
            cache: false,
            data: {
                qtt:qtt,
                id:id,
                _token: window.token
            },
            success: function(res){
                console.log(res);
                if(res){
                    alert('Sản phẩm đã được thêm vào giỏ hàng')
                }
                
            }
        });
    });
});