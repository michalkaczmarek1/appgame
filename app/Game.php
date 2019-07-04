<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $fillable = ['choice_user', 'choice_computer', 'who_won'];
}
