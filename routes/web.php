<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ImportController;
use App\Http\Controllers\UserLoginController;



Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::post('/users/{id}/disable', [UserController::class, 'disableUser'])->name('users.disable');
Route::post('/import', [ImportController::class, 'importCSV'])->name('importCSV');
//history routes
//Route::get('/user-logins', [UserLoginController::class, 'index'])->name('user.logins');



Route::group(['middleware' => ['auth']], function () {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
    //history routes
    Route::get('/user-logins', [UserLoginController::class, 'index'])->name('user.logins');
    //Download PDF
    Route::get('/users/{id}/logins/pdf', [UserController::class, 'downloadLoginsPdf'])->name('users.logins.pdf');
});
