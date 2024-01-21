<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',[ApiController::class, 'index']);
//Api
Route::get('/get-user',[ApiController::class, 'get_user']);
Route::post('/add-user',[ApiController::class, 'addUser']);
Route::post('/verify-otp',[ApiController::class, 'verify_otp']);

