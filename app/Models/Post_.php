<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title"  => "Judul Pertama",
            "slug"   => "judul-pertama",
            "author" => "Ahmad",
            "body"   => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur rhoncus sem non nunc tempor aliquet."
        ],
        [
            "title"  => "Judul Kedua",
            "slug"   => "judul-kedua",
            "author" => "Jaka",
            "body"   => "Phasellus at efficitur nisi, eget mattis purus. Curabitur non metus urna."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
