var slideIndex_02_01 = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex_02_01++;
    if (slideIndex_02_01> slides.length) {slideIndex_02_01 = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex_02_01-1].style.display = "block";  
    dots[slideIndex_02_01-1].className += " active";
    setTimeout(showSlides, 6000); // Change image every 2 seconds
}

// html dom 이 다 로딩된 후 실행된다.
$(document).ready(function() {
	// menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
	$(".menu>a").click(function() {
		var submenu = $(this).next("ul");

		// submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
		if (submenu.is(":visible")) {
			submenu.slideUp();
		} else {
			submenu.slideDown();
		}
	});
});

