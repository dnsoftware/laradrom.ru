<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="api-base-url" content="{{ env('API_URL_VERSION') }}" />
    <meta name="web-base-url" content="{{ env('APP_URL') }}" />
    <title>Document</title>

    <!-- Scripts -->
    <script src="{{ mix('js/app.js') }}" defer></script>
    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">

</head>
<body>

<div id="app" class="p-5">

    @yield('content')
</div>

</body>
</html>
