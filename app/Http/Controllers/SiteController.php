<?php

namespace App\Http\Controllers;

use App\Page;
use App\Slider;

class SiteController extends Controller
{
    public function index()
    {

        $sliders = Slider::all();
        $page_home = Page::where('slug', 'ACCUEIL')->get();
        return view('index', compact('sliders', 'page_home'));

    }
    public function pages($slug)
    {

        $page = Page::where('slug', $slug)->where('status', 'ACTIVE')->firstOrFail();
        if (isset($page->id)) {
            return view('pages.page', compact('page'));
        }

        abort(404);

    }
    public function about()
    {
        return view('pages.page');
    }
}
