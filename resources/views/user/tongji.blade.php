@extends('layouts.app')

@section('content')
<div class="container">

    <p class="text-center">您的教学分数为：{{ $myPoint['work_point']}}</p>
    <p class="text-center">您的科研分数为：{{ $myPoint['science_ponit']}}</p>
</div>
@endsection
