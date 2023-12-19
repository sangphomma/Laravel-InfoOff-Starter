<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  @vite('resources/css/app.css')
</head>
<body>
    <div class='flex flex-col w-screen min-h-screen ' >
        <div >

            @include('layouts.products.top')
        </div>

        <div class='flex-1 flex flex-col' >

            @yield('content')
        </div>
        <div >
            @include('layouts.products.footer')
        </div>
    </div>

</body>
</html>
