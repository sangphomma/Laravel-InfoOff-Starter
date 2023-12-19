@extends('layouts.products.index')

@section('content')



{{-- @include('products.index') --}}

<div class="flex flex-col  h-full  ">
    @include('layouts.products.hero')



    {{-- >> content zone << --}}
    @include('products.index')
    {{-- >> content zone << --}}


</div>

@endsection
