var adList = [
    "http://fakeimg.pl/550x300/ff0000,128/000,255",
    "http://fakeimg.pl/550x300/ff00ff,128/000,255",
    "http://fakeimg.pl/550x300/00ff00,128/000,255"
];
var adIndex = 0;
var adInterval;
var adId = "#ad_first";

function setNowAdImg(index) {
    $(".ad-img").eq(adIndex).fadeOut(800);
    adIndex = index;
    $(".ad-img").eq(adIndex).fadeIn(1200, function() {
        $("#page_ul li").removeClass("page-item-active");
        $("#page_ul li").eq(adIndex).addClass("page-item-active");
    });
}

function startSwitchAdImg() {
    adInterval = setInterval(function() {
        $(".ad-img").eq(adIndex).fadeOut(800);
        adIndex++;
        if (adIndex >= adList.length) {
            adIndex = 0;
        }
        $(".ad-img").eq(adIndex).fadeIn(1200, function() {
            $("#page_ul li").removeClass("page-item-active");
            $("#page_ul li").eq(adIndex).addClass("page-item-active");
        });
    }, 5000);
}

$(function() {
    var adUl = $("<ul/>").attr({id: "page_ul"}).css({"z-index": 999}).appendTo(adId);
    for (var i in adList) {
        var src = adList[i];
        $("<img />").attr({
            "src": src,
            "width": "100%",
            "height": "100%",
            "tag": i
        }).css({"z-index": adList.length - i}).addClass("ad-img").appendTo(adId);
        var li = $("<li />").attr("tag", i).appendTo(adUl).addClass("page-item");
        if (i == adIndex) {
            li.addClass("page-item-active");
        }
        li.click(function() {
            var tag = $(this).attr("tag");
            if(tag == adIndex) {
                return;
            }
            setNowAdImg(tag);
            clearInterval(adInterval);
            startSwitchAdImg();
        });
    }
    startSwitchAdImg();
});