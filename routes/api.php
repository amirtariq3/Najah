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
    Route::get('/product', ['as'=>'api.product', 'uses'=>'Api\ProductController@index']);
    Route::get('/deal', ['as'=>'api.deal', 'uses'=>'Api\ProductController@create']);
    Route::get('/complaint', ['as'=>'api.complaint', 'uses'=>'Api\ProductController@show']);
    Route::get('/favourite', ['as'=>'api.favourite', 'uses'=>'Api\ProductController@fav']);

});