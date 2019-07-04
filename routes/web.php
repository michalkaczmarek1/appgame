<?php
use App\Game;

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

//endpoint for vue
Route::get('games', function() {
    return Game::all();
});

Route::get('/', 'GameController@index')->name('pages.index');

//handle the game/ form game
Route::get('/game', 'GameController@showGameForm')->name('pages.showGame');

//store game
Route::post('/game', 'GameController@game')->name('pages.game');

