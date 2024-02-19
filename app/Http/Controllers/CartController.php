<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cart;
use Auth;

class CartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $carts = Cart::where('user_id', Auth::user()->id)->get();
        return view('cart.index', compact('carts'));
    }
    public function store(Request $request)
    {
        $duplicate = Cart::where('product_id', $request->product_id)->first();
        if($duplicate){
            return redirect('/cart')->with('gagal', 'Barang ini sudah pernah kamu masukkan keranjang loohh!');
        }
        Cart::create([
            'user_id' => Auth::user()->id,
            'product_id' => $request->product_id,
            'qty' => 1
        ]);
        return redirect('/cart')->with('berhasil', 'Barang berhasil Ditambahkan ke keranjang ya!');
    }
    public function update(Request $request, $id)
    {
        Cart::where('id', $id)->update([
            'qty' => $request->quantity
        ]);
        //update menggunakan rest API
        return response()->json([
            'success' => true
        ]);
    }
    public function destroy($id)
    {
        Cart::destroy($id);
        return redirect('/cart')->with('hapus', 'Produk Berhasil Dihapus!');
    }
}
