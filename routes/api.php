<?php

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
Route::post('/signup', ['as'=>'api.signup', 'uses'=>'Api\UserController@store']);
Route::post('/login', ['as'=>'api.login', 'uses'=>'Api\UserController@login']);


Route::group(['middleware' => 'auth:api'], function(){

    Route::post('/logout', ['as'=>'api.logout', 'uses'=>'Api\Usercontroller@logout']);
    Route::get('/profile', ['as'=>'api.logout', 'uses'=>'Api\Usercontroller@show']);
    Route::get('/category', ['as'=>'api.category', 'uses'=>'Api\CategoryController@index']);
    Route::get('/category/{id}', ['as'=>'api.category.product', 'uses'=>'Api\CategoryController@show']);
    Route::get('/product', ['as'=>'api.product', 'uses'=>'Api\ProductController@index']);
    Route::get('/product_detail/{idd}', ['as'=>'api.product.detail', 'uses'=>'Api\ProductController@detail']);
    Route::get('/deal', ['as'=>'api.deal', 'uses'=>'Api\ProductController@create']);
    Route::get('/complaint', ['as'=>'api.complaint', 'uses'=>'Api\ProductController@show']);
    Route::post('/complaint/create', ['as'=>'api.complaint.create', 'uses'=>'Api\ProductController@store']);

    Route::get('/favourite', ['as'=>'api.favourite', 'uses'=>'Api\FavouriteController@index']);
    Route::post('/favourite/create/{id}', ['as'=>'api.favourite.create', 'uses'=>'Api\FavouriteController@show']);

});