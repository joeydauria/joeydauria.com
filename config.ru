use Rack::Static, 
  :urls => ["/assets"].concat(Dir["public/*.html"].map { |f| "/#{File.basename(f)}" }),
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

