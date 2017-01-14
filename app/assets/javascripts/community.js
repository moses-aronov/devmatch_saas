$(document).ready(function(){
    $(".well.community").hover(function(){
	    $(this).toggleClass("hover")
    })
    $(".well.community").click(function(){
        var link = $(this).attr('link')
        $(location).attr("href", link)
    })
})

