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
        // return Page::all();
        $page = Page::where('slug', $slug)->firstOrFail();
        // return $page->title;
        // dd($page->id);
        if (isset($page->id)) {
            return view('pages.page', compact('page'));
            // return view('pages.about', compact('page'));
        }

        abort(404);

    }
    public function about()
    {
        return view('pages.page');
    }
}
