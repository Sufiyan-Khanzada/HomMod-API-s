<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportController;
use App\Http\Controllers\ItemsController;
use App\Http\Controllers\CategeriousController;



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
Route::post('register', [PassportController::class, 'register']);
Route::post('login', [PassportController::class, 'login']);
Route::get('showall-users', [PassportController::class, 'allusers']);


///Item's APi's////
Route::post('itemadd', [ItemsController::class, 'store']);
Route::get('showall-item', [ItemsController::class, 'allproducts']);
Route::post('show-single/{id}', [ItemsController::class, 'show_single_product']);
Route::post('delete-item/{id}', [ItemsController::class, 'destroy']);

///Category API's/////

Route::post('catadd', [CategeriousController::class, 'store']);
Route::get('showall-cat', [CategeriousController::class, 'allcat']);
Route::post('show-single_cat/{id}',[CategeriousController::class, 'show_single_category']);
Route::post('delete-cat/{id}', [CategeriousController::class, 'destroy_cat']);
Route::post('{id}/update-cat',[CategeriousController::class,'update_cat']);
    




// put all api protected routes here
Route::middleware('auth:api')->group(function () {
    Route::post('user-detail', [PassportController::class, 'userDetail']);
    Route::post('logout', [PassportController::class, 'logout']);
});



// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
