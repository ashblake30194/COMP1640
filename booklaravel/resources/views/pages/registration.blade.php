@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ $title }}</div>
                <div class="card-body">
                    Please Choose The Registration Type
                                    <a class="dropdown-item" href="{{ route('register.staff') }}">
                                {{ __('Staff Register') }}
                                </a>
                                <a class="dropdown-item" href="{{ route('register.student') }}">
                                {{ __('Student Register') }}
                                    </a>
                                    <a class="dropdown-item" href="{{ route('register.teacher') }}">
                                {{ __('Teacher Register') }}
                                </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection