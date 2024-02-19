@extends('template.user')

@section('title')
    Profile
@endsection

@section('style')
  <link rel="stylesheet" href="{{asset('css/home.css')}}">
@endsection

@section('content')
<div class="container">
  <!-- Success Message -->
  
<div class="row justify-content-center">
  <div class="col-md-4">
      <img class="img-profile" src="../storage/images/haitani.jpg" alt="no-image">
  </div>
  <div class="offset-md-2 col-md-6">
      <div class="content">
        <!-- Data User -->
      <label for="">Name : {{ Auth::user()->name }}</label>
      <p>{{ Auth::user()->name }}</p>
      <label for="">Email</label>
      <p>{{ Auth::user()->email }}</p>
      <label for="">Address</label>
      <p>{{ Auth::user()->address }}</p>
      <label for="">Phone Number</label>
      <p>{{ Auth::user()->phone }}</p>
          </div>
      </div>
</div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <!-- Topup -->
  <form action="" method="POST">
      @csrf
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Top Up</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-group mt-2">
          <label for="topup">Top Up Amount</label>
          <input type="number" class="form-control" id="topup" name="amount">
      </div>
      </div>
      <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Top Up</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </form>
  </div>
</div>
@endsection
