<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Game;

class GameController extends Controller
{
    /**
     * display the games list
     *
     * @return void
     */
    public function index()
    {
        return view('pages.index');
    }

    /**
     * display form game
     *
     * @return void
     */
    public function showGameForm()
    {
        return view('pages.game');
    }

    /**
     * save game
     *
     * @param Request $request
     * @return void
     */
    public function game(Request $request)
    {
        
        $choiceUser = $request->choice;

        //random choice computer
        $choiceComputer = random_int(1, 3);
        
        if($choiceComputer === 1){
            $choiceComputer = "papier";
        } else if($choiceComputer === 2){
            $choiceComputer = "kamień";
        } else {
            $choiceComputer = "nożyczki";
        }

        //game
        if($choiceUser === "papier" && $choiceComputer === "kamień"){
            $whoWon = 'user';
        } else if($choiceUser === "kamień" && $choiceComputer === "papier"){
            $whoWon = 'computer';
        } else if($choiceUser === "papier" && $choiceComputer === "nożyczki"){
            $whoWon = 'computer';
        } else if($choiceUser === "nożyczki" && $choiceComputer === "papier"){
            $whoWon = 'user';
        }else if($choiceUser === "kamień" && $choiceComputer === "nożyczki"){
            $whoWon = 'user';
        }else if($choiceUser === "nożyczki" && $choiceComputer === "kamień"){
            $whoWon = 'computer';
        }else if($choiceUser === "papier" && $choiceComputer === "papier"){
            $whoWon = 'draw';
        } else if($choiceUser === "nożyczki" && $choiceComputer === "nożyczki"){
            $whoWon = 'draw';
        } else if($choiceUser === "kamień" && $choiceComputer === "kamień"){
            $whoWon = 'draw';
        }
        
        //create game in database
        $game = Game::create(['choice_user' => $choiceUser, 'choice_computer' => $choiceComputer, 'who_won' => $whoWon]);

        session()->flash('message', 'Gra została zapisana');

        return view('pages.game', compact('choiceUser', 'choiceComputer', 'whoWon'));
    
    }
}
