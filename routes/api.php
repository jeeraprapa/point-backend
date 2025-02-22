<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\RewardController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::middleware('auth:sanctum')->group(function () {
    Route::group(['prefix' => 'auth'], function () {
        Route::get('/profile', [AuthController::class, 'getProfile']);
        Route::post('/logout', [AuthController::class, 'logout']);
    });

    Route::group(['prefix' => 'rewards'], function () {
        Route::post('/redeem', [RewardController::class, 'redeem']);
        Route::get('/redeem/{reward_id}/status', [RewardController::class, 'redeemStatus']);
    });
    Route::get('total-points', [RewardController::class, 'totalPoints']);
});

Route::middleware('api')->group(function () {
    Route::post('/auth/login', [AuthController::class, 'login']);

    Route::post('/register', [AuthController::class, 'register']);

    Route::group(['prefix' => 'rewards'], function () {
        Route::get('/list', [RewardController::class, 'list']);
        Route::get('/{id}', [RewardController::class, 'show']);
    });
});


