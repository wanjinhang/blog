<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Course;

class Teacher extends Model
{
    public function course(){
        return $this->hasMany(Course::class);
    }
}
