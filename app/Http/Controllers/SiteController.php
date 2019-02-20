<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Mail\SendMail;
use App\Page;
use App\Post;
use App\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

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
    public function single($slug)
    {
        $post = Post::where('status', 'PUBLISHED')->where('slug', $slug)->firstOrFail();
        // return $post;
        $page = (object) array("header" => "header1", "title" => $post->title);
        if (isset($post->id)) {
            return view('pages.single', compact(['page', 'post']));
        }
        abort(404);

    }
    public function blog()
    {
        $posts = Post::where('status', 'PUBLISHED')->paginate(6);
        $page = Page::where('slug', 'actualites')->where('status', 'ACTIVE')->firstOrFail();

        return view('pages.blog', compact(['page', 'posts']));
    }
    public function contacts(Request $request, Contact $contact)
    {

        $data = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'sujet' => 'required',
        ]);
        $contact->create($data);
        Mail::to('anasjelloule@gmail.com')->send(new SendMail($data));
        session()->flash('success', 'Merci pour votre message. Il a été envoyé.');
        return redirect()->route('contacts');

        return view('pages.contacts');
    }
    public function about()
    {
        return view('pages.page');
    }
}
