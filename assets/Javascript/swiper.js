window.addEventListener("load", function() {
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        spaceBetween: 20,
        breakpoints: {
            0: {
                slidesPerView: 1,
                spaceBetween: 10
            },
            640: {
                slidesPerView: 1,
                spaceBetween: 15
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 20
            }
        },
        loop: false,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
});