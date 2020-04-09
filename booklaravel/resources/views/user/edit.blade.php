@extends('layouts/main')
@section('content')
<div class="jumbotron jombotron-flud text-center">
<div class="container">
<h1>Test Plan</h1>
<ul>

@foreach ($plans as $plan)
                            <div class="col-md-4 col-sm-12">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">{{ $plan->name }}</h5>
                                    </div>
                                    <!-- <ul class="list-group list-group-flush text-center">
                                        <li class="list-group-item">{{ $plan->credits }} total credits</li>
                                        <li class="list-group-item">${{ $plan->price }}</li>
                                    </ul> -->
                                    <div class="card-body">
                                        <a>Buy</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
</div>
</div>
@endsection