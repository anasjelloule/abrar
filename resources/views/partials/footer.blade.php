<!-- ========== FOOTER ========== -->
<footer class="bg-primary">
    <div class="container-fluid space-1 px-6">
        <div class="row justify-content-between">
            <div class="col-md-3">
                <img src="./img/form.png" class="img-fluid w-80" />
            </div>
            <div class="col-md-7 p-0">
                <div class="row">
                    <div class="col-md-5">
                        <img src="./img/carte.png" class="img-fluid w-100" />
                    </div>
                    <div class="col-md-5 text-white">
                        <h3><b> Adresse siège Social</b></h3>
                        Abrar Invest: Lotissment la colline. N° 11. Sidi Maarouf Casablanca – Maroc
                        <h3><b>Contact</b></h3>
                        Email: contact@abrarimmo.com Téléphone: +212 (0) 522 78 76 61
                    </div>
                    <div class="col-md-2">
                        <div class="list-group list-group-flush list-group-transparent">
                            <a class="list-group-item list-group-item-action active" href="#">ACCUEIL</a>
                            <a class="list-group-item list-group-item-action" href="#">ABRAR IMMO</a>
                            <a class="list-group-item list-group-item-action" href="#">Nos projets</a>
                            <a class="list-group-item list-group-item-action" href="#">CARRIÈRE</a>
                            <a class="list-group-item list-group-item-action" href="#">services</a>
                            <a class="list-group-item list-group-item-action" href="#">contact</a>
                        </div>
                    </div>
                    <div class="offset-md-5 col-md-7">
                        <ul class="icon-social">
                            <li class="ml-0">
                                <a href="{{ setting('site.facebook') }}" target="_blank">
                                    <!-- <img src="https://www.ev-qlik.com/wp-content/themes/elephantvert/assets/img/facebook.png"> -->
                                    <span class="soci fa"><i class="fab fa-facebook-f"></i></span>
                                </a>
                            </li>
                            <li>
                                <a href="{{ setting('site.twitter') }}" target="_blank">
                                        <span class="soci twi"><i class="fab fa-twitter"></i></span>
                                    </a>
                            </li>
                            <li>
                                <a href="{{ setting('site.instagram') }}" target="_blank">
                                        <span class="soci inst"><i class="fab fa-instagram"></i></span>
                                    </a>
                            </li>
                            <li>
                                <a href="{{ setting('site.youtube') }}" target="_blank">
                                        <span class="soci yout"><i class="fab fa-youtube"></i></span>
                                    </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class=" col-md-2">
                <img src="./img/logo_footer.png" class="img-fluid" alt="logo adrar" />
            </div>
        </div>
    </div>
</footer>
<!-- ========== END FOOTER ========== -->

<!-- Go to Top -->
<a class="js-go-to u-go-to" href="javascript:;" data-position="{&quot;bottom&quot;: 15, &quot;right&quot;: 15 }" data-type="fixed"
    data-offset-top="400" data-compensation="#header" data-show-effect="slideInUp" data-hide-effect="slideOutDown">
        <span class="fa fa-arrow-up u-go-to__inner"></span>
    </a>
<!-- End Go to Top -->

<!-- JS Global Compulsory -->
<script src="assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="assets/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
<!-- <script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script> -->
<script src="assets/vendor/bootstrap/bootstrap.min.js"></script>

<!-- JS Implementing Plugins -->
<script src="assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
<script src="assets/vendor/slick-carousel/slick/slick.js"></script>


<!-- JS Space -->
<script src="assets/js/hs.core.js"></script>
<script src="assets/js/components/hs.header.js"></script>
<script src="assets/js/components/hs.go-to.js"></script>
<script src="assets/js/components/hs.slick-carousel.js"></script>
<!-- JS Plugins Init. -->

<script>
    $(document).on("ready", function () {
            // initialization of header
            $.HSCore.components.HSHeader.init($("#header"));

            // initialization of go to
            $.HSCore.components.HSGoTo.init(".js-go-to");
        });

        $(window).on("load", function () {
            // initialization of HSMegaMenu component
            $(".js-mega-menu").HSMegaMenu({
                event: "hover",
                pageContainer: $(".container"),
                breakpoint: 768,
                hideTimeOut: 0
            });

           

            // initialization of slick carousel
            $.HSCore.components.HSSlickCarousel.init(".js-slick-carousel");
        });

</script>
@yield('script')
</body>

</html>