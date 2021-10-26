@extends('layouts\main')

@section('container')
    <section id="portfolio" class="portfolio">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h3><span>{{ $post->title }}</span></h3>
                <h6>By. Ardiansyah Priyo</h6>
                <h6>Category : <a href="/categories/{{ $post->category->slug }}"> {{ $post->category->name }}</a></h6>
            </div>

            <div class="section">
                {!! $post->body !!}
            </div>

            <div class="section-title">
                <a href="/posts">
                    <h2 class="mt-2"><i class="fas fa-arrow-left"></i> Back</h2>
                </a>
            </div>
        </div>
    </section>
@endsection
