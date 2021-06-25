<?php

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


Route::get('/', 'OursiteController@index');
Auth::routes();

//Route::get('/', 'Site\AboutusController@index');
Route::get('aboutus', 'OursiteController@aboutus');
Route::get('/home', 'HomeController@index');

Route::post('submitcontactus', 'OursiteController@submitcontactus');
Route::post('eshtrak', 'OursiteController@eshtark');

Route::get('contactus', 'OursiteController@contactus');
Route::post('submitcontactus', 'OursiteController@submitcontactus');
Route::post('subscribe', 'OursiteController@subscribe')->name('subscribe');
Route::get('subscribtion', 'OursiteController@subscribtion');

Route::get('singleblog/{id}', 'OursiteController@singleblog');
Route::get('blogs','OursiteController@blog');
Route::get('countries','OursiteController@countries');
Route::get('singlecountry/{id}', 'OursiteController@singlecountry');

    Route::get('products/{id}', 'Site\ProjectController@project');

    Route::group(array('middleware' => array('auth','admin'), 'prefix' => 'controll'), function() {

    Route::get('/', 'TeamWorkController@index');
    Route::resource('customers', 'CustomersController');
    Route::resource('users', 'UsersController');
    Route::resource('aboutus', 'AboutusController');
    Route::resource('countrylinks','CountrieslinksController');
    Route::resource('contacts', 'ContactsController');
    Route::resource('team', 'TeamWorkController');
    Route::resource('counters', 'CountersController');
    Route::resource('tags','TagsController');
    Route::resource('countryinfo', 'CountriesinfoController');
    Route::resource('countrys','CountriesController');
    Route::resource('offers', 'OfferController');
    Route::resource('siteinfo', 'SiteinfoController');
    Route::get('photoes', 'PhotoesController@index');
    Route::get('photoes/{id}/edit', 'PhotoesController@show');
    Route::Put('photoesd/{id}', 'PhotoesController@update');
    Route::get('settings', 'MainController@index');
    Route::put('settings', 'MainController@update');
    Route::get('meta', 'MainController@show');  
    Route::get('meta/{id}/edit', 'MainController@edit');
    Route::Put('metap/{id}', 'MainController@updatemeta');
    Route::resource('messages', 'MessagesController');
    Route::get('unseen', 'MessagesController@create');
    Route::delete('support/{id}', 'MainController@delmessage');
    Route::resource('blogcat', 'BlogcatController');
    Route::resource('blogs', 'BlogController');
    Route::delete('delphoto/{id}', 'BlogController@delphoto');

});




