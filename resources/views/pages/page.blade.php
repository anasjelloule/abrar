@extends('pages.master') 
@section('header')
    @include('partials.head1')
@endsection
 
@section('script')
<script src="js/countUp.min.js"></script>
<script>
    $('.counter').each(function() {
  var $this = $(this),
      countTo = $this.attr('data-count');
  
  $({ countNum: $this.text()}).animate({
    countNum: countTo
  },

  {

    duration: 1000,
    easing:'linear',
    step: function() {
      $this.text(Math.floor(this.countNum));
    },
    complete: function() {
      $this.text(this.countNum);
      //alert('finished');
    }

  });  
  
  

});

</script>
@endsection
 
@section('content')

<div id="aboutslider" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#aboutslider" data-slide-to="0" class="active"></li>
        <li data-target="#aboutslider" data-slide-to="1"></li>

    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img src="http://localhost:8000/storage/pages/about_slider.png" class="w-100" data-src="http://localhost:8000/storage/pages/about_slider.png"
                alt="First slide">
        </div>
        <div class="carousel-item">
            <img src="http://localhost:8000/storage/pages/about_slider.png" class="w-100" data-src="http://localhost:8000/storage/pages/about_slider.png"
                alt="Second slide">
        </div>

    </div>
    <a class="carousel-control-prev" href="#aboutslider" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#aboutslider" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="full-width bg-primary">
    <div class="container space-2 ">
        <div class="row justify-content-lg-center ">
            <div class="col-md-6 col-lg-3">
                <div class="media pr-lg-4 align-items-center">
                    <img class="max-width-10 mr-3" src="storage/pages/portfolio.png" alt="Image Description">
                    <div class="media-body">
                        <h3 class="counter" data-count="548">0</h3>
                        <p class="mb-0">projects completed</p>
                    </div>
                </div>

            </div>
            <div class="col-md-6 col-lg-3">
                <div class="media pr-lg-4 align-items-center">
                    <img class="max-width-10 mr-3" src="storage/pages/clock.png" alt="Image Description">
                    <div class="media-body">
                        <h3 class="counter" data-count="1465">0</h3>
                        <p class="mb-0">projects completed</p>
                    </div>
                </div>

            </div>
            <div class="col-md-6 col-lg-3">
                <div class="media pr-lg-4 align-items-center">
                    <img class="max-width-10 mr-3" src="storage/pages/star.png" alt="Image Description">
                    <div class="media-body">
                        <h3 class="counter" data-count="548">0</h3>
                        <p class="mb-0">projects completed</p>
                    </div>
                </div>

            </div>
            <div class="col-md-6 col-lg-3">
                <div class="media pr-lg-4 align-items-center">
                    <img class="max-width-10 mr-3" src="storage/pages/like.png" alt="Image Description">
                    <div class="media-body">
                        <h3 class="counter" data-count="548">0</h3>
                        <p class="mb-0">projects completed</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="container-fluid space-3-top mt-9 px-9 about">
    <div class="row justify-content-between">
        <div class="col-md-12 text-center">
            <h3>Qui sommes nous</h3>
            <p class="my-5">Notre slogan &laquo; L&rsquo;investissement s&ucirc;r &raquo; traduit parfaitement l&rsquo;&eacute;tat d&rsquo;esprit
                dans lequel nous travaillons pour r&eacute;pondre aux nouveaux besoins du march&eacute; de l&rsquo;immobilier
                parce-que nous consid&eacute;rons que l&rsquo;achat d&rsquo;un bien immobilier est investissement de vie.
                Abrar immo est un promoteur immobilier sp&eacute;cialis&eacute; dans le d&eacute;veloppement de lotissements
                r&eacute;sidentiels et la construction d&rsquo;immeubles.</p>
            <img src="img/lire_suite.png" alt="contact" /></div>
    </div>
</div>
<!-- End About -->
<hr class="my-0" />
<!-- plan -->
<div class="container-fluid plan">
    <div class="row justify-content-center bg-primary">
        <div class="col-md-6 p-0"><img class="img-fluid w-100" src="img/map_left.png" alt="plan" /></div>
        <div class="col-md-6 p-0"><img class="img-fluid w-100" style="border-left: 3px solid white;" src="img/map_right.png" alt="map" /></div>
        <div class="col-md-8 space-2">
            <p class="text-white" style="font-size: 30px;">Le projet la Perle d&rsquo;Abrar de Berrechid vous offre des lots de terrains viabilis&eacute;s et &eacute;quip&eacute;s
                de type R +2 R +3 R +4 Diff&eacute;rentes superficies sont disponibles &agrave; partir de 80 m&egrave;tres
                carr&eacute;s.
            </p>
        </div>
    </div>
</div>
<!-- end plan -->
<p>&nbsp;</p>
<!-- no realisation -->
<div class="container-fluid realisation space-1-top">
    <div class="row  justify-content-center">
        <div class="col-md-12">
            <!-- Slick Carousel -->
            <div class="js-slick-carousel u-slick" data-autoplay="true" data-speed="2000" data-infinite="true" data-slides-show="5">&nbsp;</div>
            <!-- End Slick Carousel -->
        </div>
        <div class="col-md-12 text-center"><img class="img-fluid w-100" src="img/hover.png" alt="hover" />
            <h2 class="text-primary space-1 font-weight-bold">Service clients: 0522 78 76 61 - 0666 200 619</h2>
        </div>
    </div>
</div>
<!-- end nos realisation  -->
<p>&nbsp;</p>
<!-- no projects -->
<div class="container-fluid projet">
    <div class="row  justify-content-center">
        <div class="col-md-12 p-0 text-center">
            <h2 class="mb-9 space-1 bg-primary text-white font-weight-bold">Nos projets</h2>
            <img class="img-fluid" src="img/video.png" alt="video" /></div>
    </div>
</div>
<!-- end nos projects  -->
<p>&nbsp;</p>
<!-- block_3 -->
<div class="container-fluid space-2">
    <div class="row justify-content-lg-center">
        <div class="col-md-6 col-lg-4">
            <!-- diamond -->
            <div class="text-center px-lg-4">
                <div class="mb-2"><img class="mb-3 " src="img/diamond.png" alt="diamond" />
                    <h4 class="text-primary px-xl-6">l&rsquo;immobilier avec grand espace nature</h4>
                </div>
                <blockquote class="text-secondary mb-0">Acqu&eacute;rir votre appartement ou votre bien immobilier dans nos projets, c&rsquo;est investir dans un
                    cadre naturel avec des espaces verts d&eacute;di&eacute;s &agrave; votre bien-&ecirc;tre durable</blockquote>
            </div>
            <!-- End diamond -->
        </div>
        <div class="col-md-6 col-lg-4">
            <!-- diamond -->
            <div class="text-center px-lg-4">
                <div class="mb-2"><img class="mb-3 " src="img/arc.png" alt="arc" />
                    <h4 class="text-primary px-xl-6">Votre logement &agrave; des prix adapt&eacute;s &agrave; votre budget</h4>
                </div>
                <blockquote class="text-secondary mb-0">Quelque soit votre budget, nous veillons &agrave; vous offrir la meilleure qualit&eacute; de logement avec
                    des facilit&eacute;s de paiement personnalis&eacute;es.</blockquote>
            </div>
            <!-- End diamond -->
        </div>
        <div class="col-md-6 col-lg-4">
            <!-- diamond -->
            <div class="text-center px-lg-4">
                <div class="mb-2"><img class="mb-3 " src="img/star.png" alt="diamond" />
                    <h4 class="text-primary px-xl-6">Les emplacements bien &eacute;tudi&eacute;s pour votre avenir</h4>
                </div>
                <blockquote class="text-secondary mb-0">Nous choisissons les meilleurs emplacements pour nos projets afin de garantir la proximit&eacute;, les commodit&eacute;s
                    et l&rsquo;environnement.</blockquote>
            </div>
            <!-- End diamond -->
        </div>
    </div>
</div>
<!-- end block_3 -->
<p>&nbsp;</p>
<!-- block 4 -->
<div class="container-fluid block_text">
    <div class="row justify-content-center bg-primary">
        <div class="col-md-8 space-2">
            <p class="text-white">Faisant partie du groupe Abrar Invest, Abrar immo met tout son savoir-faire au profit pour associer le caract&egrave;re
                de ces b&acirc;timents &agrave; une architecture de qualit&eacute; et donner vie &agrave; tout ces projets
                . <br /> Ceci en se basant sur 3 principes fondamentaux: <br /><br /> Choix du terrain avec des situations
                strat&eacute;giques Donner une grande partie aux espaces verts et &eacute;quipements de proximit&eacute;
                Assurer une construction et un service apr&egrave;s vente de qualit&eacute;.<br /> Chez Abrar immo, nous
                donnons le meilleur de nous-m&ecirc;mes pour vous proposer le meilleur des projets.</p>
        </div>
    </div>
</div>
<!-- end block 4 -->
<p>&nbsp;</p>
<!-- block 4 -->
<div class="container-fluid space-2-bottom partenaires">
    <div class="row">
        <!-- ========== LEFT ========== -->
        <div class="col-md-12">
            <h2 class="mb-9 space-1 text-center font-weight-bold">Nos partenaires</h2>
        </div>
    </div>
    <!-- Slick Carousel -->
    <div class="js-slick-carousel u-slick" data-autoplay="true" data-speed="2000" data-infinite="true" data-slides-show="5">
        <div class="js-slide"><img class="u-clients" src="img/logos/logo1.png" alt="Image Description" /></div>
        <div class="js-slide"><img class="u-clients" src="img/logos/logo2.png" alt="Image Description" /></div>
        <div class="js-slide"><img class="u-clients" src="img/logos/logo3.png" alt="Image Description" /></div>
        <div class="js-slide"><img class="u-clients" src="img/logos/logo4.png" alt="Image Description" /></div>
        <div class="js-slide"><img class="u-clients" src="img/logos/logo5.png" alt="Image Description" /></div>
        <div class="js-slide"><img class="u-clients" src="img/logos/logo1.png" alt="Image Description" /></div>
    </div>
    <!-- End Slick Carousel -->
</div>
<!-- end block 4 -->
<p>&nbsp;</p>
{{-- {!! $page->body !!} --}}
@endsection