@extends("layouts.master")
@section('title', 'Historia wyników')
@section('content')
<div id="app" class="mx-auto" style="width: 700px;">
    <games></games>
</div>
<script src="{{ asset('js/app.js') }}"></script>
@endsection