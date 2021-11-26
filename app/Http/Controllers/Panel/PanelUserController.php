<?php

namespace App\Http\Controllers\Panel;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PanelUserController extends Controller
{
    public function index()
    {
        return view('users.index')->with([
            'users' => User::all(),
        ]);
    }
}
