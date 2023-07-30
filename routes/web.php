<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Http\Controllers\Customer\AccountController;
use App\Http\Controllers\Customer\CartController;
use App\Http\Controllers\Customer\ChangePasswordController;
use App\Http\Controllers\Customer\CheckoutController;
use App\Http\Controllers\Customer\HomeController;
use App\Http\Controllers\Customer\UnderwearProductController;
use App\Http\Controllers\Customer\LoginController;
use App\Http\Controllers\Customer\LogoutController;
use App\Http\Controllers\Customer\TrousersProductController;
use App\Http\Controllers\Customer\NavigatorController;
use App\Http\Controllers\Customer\SuitProductController;
use App\Http\Controllers\Customer\RegisterController;
use App\Http\Controllers\Customer\SearchController;
use App\Http\Controllers\Customer\TransactionHistoryController;
use App\Http\Controllers\Customer\WishlistController;
use App\Http\Controllers\Customer\ShirtProductController;

// trang chu
Route::get('/', function () {
	return view('home');
});

// login
Route::get('/login', function () {
	return view('login');
});

// dang nhap
Route::post('/login', [LoginController::class, 'postLogin']);

// dang xuat
Route::get('/logout', [LogoutController::class, 'logout']);

// dang ky
Route::get('/register', function () {
	return view('register');
});
Route::post('/register', [RegisterController::class, 'register']);
// cap nhat thong tin
Route::get('/fulfill/information', [RegisterController::class, 'fulfill']);
// tao tai khoan
Route::post('/create/account', [RegisterController::class, 'createAccount']);

// tim kiem san pham
Route::get('/search', [SearchController::class, 'search']);

// cua hang
Route::get('/cua-hang/ao', [ShirtProductController::class, 'shirtProduct']);
Route::get('/cua-hang/quan', [TrousersProductController::class, 'trousersProduct']);
Route::get('/cua-hang/do-lot', [UnderwearProductController::class, 'underwearProduct']);
Route::get('/cua-hang/do-bo', [SuitProductController::class, 'suitProduct']);

// chi tiet san pham
Route::get('/san-pham/{slug}', [HomeController::class, 'productDetail']);

// tat ca bai viet
Route::get('/ban-tin-suc-khoe', [HomeController::class, 'index']);

// bai viet theo tag
Route::get('/tag/{slug}', [HomeController::class, 'postTag']);

// bai viet theo chuyen muc
Route::get('/chuyen-muc/{slug}', [HomeController::class, 'postTopic']);

//chi tiet + noi dung bai viet 
Route::get('/ban-tin-suc-khoe/{slug}', [HomeController::class, 'postDetail']);

// cart
Route::post('/add/item', [CartController::class, 'addSpecialItem']);
Route::get('/checkout/cart', [CartController::class, 'index']);
Route::post('/checkout/cart', [CartController::class, 'addItem']);
Route::delete('/remove-cart/{id}', [CartController::class, 'remove']);
Route::get('/clear/cart', [CartController::class, 'clearCart']);
// increment
Route::post('/increment/cart', [CartController::class, 'increment']);
// decrement
Route::post('/decrement/cart', [CartController::class, 'decrement']);
Route::get('/checkout/cart/item/number', [CartController::class, 'getItemNumber']);

// checkout payment
Route::get('/checkout/payment', [CheckoutController::class, 'index']);
Route::post('/checkout/payment', [CheckoutController::class, 'order']);

// order-received
Route::get('/checkout/order-received/{order_id}', [CheckoutController::class, 'orderReceived']);

Route::group(['prefix' => '/', 'middleware' => 'CheckUserLogin'], function () {
	// my account 
	Route::get('/my_account/{customer_id}', [AccountController::class, 'myAccount']);
	// update account information
	Route::post('/my_account', [AccountController::class, 'updateMyAccount']);

	// change password
	Route::get('/change/password', [ChangePasswordController::class, 'getFormChangePassword']);
	Route::post('/change/password', [ChangePasswordController::class, 'changePassword']);

	// wishlist
	Route::get('/wishlist', [WishlistController::class, 'index']);
	Route::delete('/remove-wishlist/{product_id}', [WishlistController::class, 'delete']);

	// my transactions
	Route::get('/transaction/history/{customer_id}', [TransactionHistoryController::class, 'myTransaction']);
	// order detail
	Route::get('/transaction/detail/{order_id}', [TransactionHistoryController::class, 'myOrder']);
});

// add item on wishlist
Route::post('/wishlist', [WishlistController::class, 'addWishlist']);

// link
Route::get('/gioi-thieu', function () {
	return view('introduction');
});
Route::get('/phuong-thuc-van-chuyen', function () {
	return view('shipment');
});
Route::get('/quy-dinh-su-dung', function () {
	return view('policy');
});

Route::get('/lien-he', [NavigatorController::class, 'getFormContact']);
Route::post('/lien-he', [NavigatorController::class, 'postFormContact']);