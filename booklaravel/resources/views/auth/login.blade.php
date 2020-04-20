<!DOCTYPE html>
<html lang="en">
<head>
    <title>Account Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
    <link rel="icon" type="image/png" href="{{asset('accountLogin/images/icons/favicon.ico')}}"/>
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('accountLogin/vendor/bootstrap/css/bootstrap.min.css')}}">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('accountLogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('accountLogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="{{asset('accountLogin/css/util.css')}}">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="{{asset('accountLogin/css/main.css')}}">
<!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('accountLogin/images/bg-01.jpg');">
        <div class="wrap-login100 p-t-30 p-b-50">
            <span class="login100-form-title p-b-41">
                {{ __('Login') }}
            </span>
            <p class="">
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </p>
            <form class="login100-form validate-form p-b-33 p-t-5" method="POST" action="{{ route('login') }}">
                @csrf
                <div class="wrap-input100 validate-input">
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror input100" 
                            name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="User Email">
                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    
                </div>

                <div class="wrap-input100 validate-input">
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror input100" 
                            name="password" required autocomplete="current-password" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                </div>

                <div>
                    <div style="text-align: center; padding-top:10px;">
                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}> &nbsp;{{ __('Remember Me') }}

                        @if (Route::has('password.request'))
                        <a class="btn btn-link" style="text-align: right;" href="{{ route('password.request') }}">
                            {{ __('Forgot Your Password?') }}
                        </a>
                    @endif
                    </div>
                </div>

                <div class="container-login100-form-btn m-t-32">
                    <button type="submit" class="login100-form-btn">
                        Login
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

    <script src="{{asset('accountLogin/js/main.js')}}"></script>

</body>
</html>