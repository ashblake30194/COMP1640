@extends('layouts/app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
            <div class="card-body">   
    <label>{{Auth::user()->name}}</label>
    <label>{{Auth::user()->email}}</label>
    <label>{{ implode(', ', Auth::user()->plans()->get()->pluck('name')->toArray()) }}</label>

    @if( implode(', ', Auth::user()->plans()->get()->pluck('name')->toArray()) == "professional" )
    <h1>YOU HAVE PROFESSIONAL PLAN</h1>
    @elseif(implode(', ', Auth::user()->plans()->get()->pluck('name')->toArray()) == "standard")
    <h1>YOU HAVE STANDARD PLAN</h1>
    @endif

    <form action="{{ route('user.update',  Auth::user()->id) }}" method='post'>
    @method('PATCH')
    @foreach($plans as $plan)
    <div class="col-md-4 col-sm-12">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">{{ $plan->name }}</h5>
                                    </div>
                                    <div class="card-body">
                                    @if(Auth::user()->plans()->get()->contains($plan->id))

                                    <form class="btn btn-danger" action="{{route('user.destroy', Auth::user()->id)}}" method="post">
                                     @method('DELETE')

                                        @csrf
                                        
                                         <input type="submit" value="Delete" class="btn btn-danger">
                                    </form>


                                    @else

                                    @csrf
                                    <input type="submit"  class="btn btn-success" name="plans[]" value="{{$plan->id}}">update</input>

                                    @endif
                                    </div>
                                </div>
                            </div>
 
        @endforeach
    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection