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

});