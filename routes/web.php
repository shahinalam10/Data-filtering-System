<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/', [UserController::class, 'index'])->name('users.index');

// AJAX routes
Route::get('/get-districts/{division_id}', [UserController::class, 'getDistricts'])->name('get.districts');
Route::get('/get-thanas/{district_id}', [UserController::class, 'getThanas'])->name('get.thanas');
