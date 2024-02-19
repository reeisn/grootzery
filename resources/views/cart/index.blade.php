@extends('template.user')

@section('title')
    Cart
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('css/cart.css')}}"> 
@endsection

@section('content')
<div class="container">
    <!-- success message & Error message -->
    @if (Session::has('berhasil'))
    <div class="alert alert-success">
    {{ Session::get('berhasil') }}
    @endif
    </div>
    <div class="container">
    @if (Session::has('gagal'))
    <div class="alert alert-danger">
    {{ Session::get('gagal') }}
    @endif
    </div>
    <div class="container">
    @if (Session::has('hapus'))
    <div class="alert alert-danger">
    {{ Session::get('hapus') }}
    @endif
    </div>
        @php
            $total = 0;    
        @endphp
    {{-- @if ($carts->count() == 0)
    <p style="text-align:center;">Your Cart is Empty</p>
    @else --}}

<div class="container">
<div>
    <h3>{{$carts->count()}} Barang Belum Di Checkout!</h3>
</div></br>


    <a href="/shop"><button type="submit" class="btn btn-primary">Tambah Produk Lainnya</button></a>

<div class="container">
@foreach ($carts as $cart)
<div class="cart">
        <div class="row">
            <div class="col-lg-3">
            <img class="img-cart" src="{{asset('storage/images/product.jpg')}}" alt="">
            </div>
            <div class="col-lg-9">
                <div class="top">
                    <p class="item-name">{{ $cart->product->name }}</p>
                    <div class="top-right">
                        <p class="">IDR. {{ number_format($cart->product->price) }}-,</p>
                        <select name="qty" class="quantity" data-item="{{ $cart->id }}">
                        @for ($i = 1; $i <= 10; $i++)
                            <option value="{{$i}}" {{ $cart->qty == $i ? 'selected' : '' }}>{{$i}}</option>
                        @endfor
                        </select>
                        <!-- Subtotal -->
                        <p class="total-item">IDR. {{ number_format($cart->product->price * $cart->qty) }}-,</p>
                    </div>
                </div>
                <hr class="mt-2 mb-2">
                <div class="bottom">
                   <div class="row">
                        <p class="col-lg-6 item-desc">
                            {{ $cart->product->desc }}
                        </p>
                        <div class="offset-lg-4">

                        </div>
                        <div class="col-lg-2">
                        <!-- delete cart -->
                        <form action="/cart/{{ $cart->id }}" method="post" class="d-inline">
                                @csrf
                                @method('Delete')
                        <button type="submit" class="btn btn-danger" data-id="{{ $cart->id }}"
                        onclick="return confirm('mau menghapus dari keranjang?')">Delete</button>
                            </form>
                        </div>
                   </div>
                </div>
            </div>
        </div>
    </div>
    @php
    $total += ($cart->product->price * $cart->qty);
    @endphp
@endforeach
</div>

<div class="totalz">
    <h4 class="total-price">TOTAL : IDR. {{number_format($total)}}-,</h4>
</div>
</div>

<form action="/checkout" method="POST" style="margin-left: 700px;">
@csrf
<button type="submit" class="btn btn-primary">Checkout</button>
</div>
</form>
<br>
    {{-- @endif --}}
@endsection

{{-- REST API --}}
@section('script')
<script type="text/javascript">
    (function(){
    const classname = document.querySelectorAll('.quantity');

    Array.from(classname).forEach(function(element){
     element.addEventListener('change', function(){
        const id = element.getAttribute('data-item');
        axios.patch(`/cart/${id}`, {
            quantity: this.value,
            id: id
          })
          .then(function (response) {
            //console.log(response);
            window.location.href = '/cart'
          })
          .catch(function (error) {
            console.log(error);
          });
   })
 })
    })();
</script>
<script type="text/javascript" src="{{asset('js/script.js')}}"></script>
@endsection