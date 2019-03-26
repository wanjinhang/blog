<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use Illuminate\Support\Facades\Auth;

class ScienceWorkController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $scienceWorks =  Teacher::find($user->id)->scienceWorks;
        return view('user/scienceWorks',['scienceWorks' => $scienceWorks]);
    }
}
