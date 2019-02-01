@extends('pages.master') 
@section('header')
    @include('partials.head1')
@endsection
 
@section('content') {!! $page_home[0]->body
!!}
@endsection
 
@section('sliders')
<div id="homeslider" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        @foreach ($sliders as $slider)
        <li data-target="#homeslider" data-slide-to="{{ $loop->index }}" class="@if ($loop->first)
                        active
                    @endif "></li>@endforeach

    </ol>
    <div class="carousel-inner">
        @foreach ($sliders as $slider)
        <div class="carousel-item @if ($loop->first)
                        active
                    @endif ">
            <img class="d-block w-100" src="{{ asset('storage/'.$slider->photo) }}" alt="First slide"> {!! $slider->col !!}

        </div>
        @endforeach


    </div>
    <a class="carousel-control-prev" href="#homeslider" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
    <a class="carousel-control-next" href="#homeslider" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
</div>
@endsection