@extends('layouts.main')

@section('container')
    <section id="services" class="services">
        <div class="container" data-aos="fade-up">


            <div class="section-title">
                <h2>Blogs</h2>
            </div>

            <div class="row">
                @foreach ($posts as $post)
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in"
                        data-aos-delay="200">
                        <div class="icon-box">
                            <div class="icon"><i class="bx bx-file"></i></div>
                            <h4><a href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h4>
                            <p>{{ $post->excerpt }}</p>
                        </div>
                    </div>
                @endforeach
            </div>

        </div>
    </section><!-- End Services Section -->
@endsection
