@extends('layouts.main')

@section('container')
    <section id="featured-services" class="featured-services">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Post Categories</h2>
            </div>

            <div class="row">
                @foreach ($categories as $category)
                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon"><i class="bx bx-world bx-spin-hover"></i></div>
                            <h4 class="title"><a
                                    href="/categories/{{ $category->slug }}">{{ $category->name }}</a></h4>
                            <p></p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section><!-- End Services Section -->
@endsection
