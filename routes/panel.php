<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Panel Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/','PanelController@index')->name('panel');
Route::resource('gestion','PanelProductController');
Route::resource('users','PanelUserController');
// Route::get('/panel/products','PanelProductController@index')->name('panelindex');
// Route::get('/panel/products/{product}','PanelProductController@show')->name('panelshow');
// Route::post('/panel/products/create','PanelProductController@create')->name('panelcreate');