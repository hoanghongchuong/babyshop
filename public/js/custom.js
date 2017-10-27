jQuery(document).ready(function($) {
	$('.sort-by').change(function(event) {

        var queryOject = getQueryObject();
        var sortType = $(this).val();
        queryOject.query.sort = sortType;
        refreshUrl(queryOject)
	});

    window.getQueryObject = function() {
        var urlArray = window.location.href.split('?');
        var result = {
            origin: urlArray[0],
            query: {}
        };
        if (urlArray.length == 1) {
            return result;
        }
        var queryArray = urlArray[1].split('&');

        for (var i = 0; i < queryArray.length; i++) {
            var item = queryArray[i].split('=');
            if (item.length != 0) {
                result.query[item[0]] = item[1] ? item[1] : '';
            }
        }
        return result;
    }

    window.refreshUrl = function(queryObject) {
        queryObject.origin += '?';
        for (var i in queryObject.query) {
            queryObject.origin += i + '=' + queryObject.query[i] + '&';
        }
        window.location.href = queryObject.origin.replace(/.$/,"");
    }

     $('[data-slider="slider-for"]').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            nextArrow:'<button class="vk-btn vk-slider__arrow _next"><img src="images/icon/right.png" alt=""></button>',
            prevArrow:'<button class="vk-btn vk-slider__arrow _prev"><img src="images/icon/left.png" alt=""></button>',
            fade: true,
            infinite:false,
            asNavFor: '[data-slider="slider-nav"]',
            responsive: [{
                breakpoint: 768,
                settings: {
                    arrows: false,

                }

            }]
        });
        $('[data-slider="slider-nav"]').slick({
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 1,
            asNavFor: '[data-slider="slider-for"]',
            focusOnSelect: true,
            infinite:false,
            swipeToSlide:true,
            responsive: [{
                breakpoint: 768,
                settings: {
                    slidesToShow: 3,

                }

            }]

        });
        
 $('.modal').on('shown.bs.modal', function (e) {
            $('.carousel').resize();
          })
         

});

// $(document).resize(function(){
//     $('.modal').on('shown.bs.modal', function (e) {
//             $('.carousel').resize();
//           })
// })