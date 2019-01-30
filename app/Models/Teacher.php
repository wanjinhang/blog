<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Course;
use App\Models\TeachingWork;
use App\Models\ScienceWork;

class Teacher extends Model
{
    public function course(){
        return $this->hasMany(Course::class);
    }

    public function teachingWorks()
    {
        return $this->hasMany(TeachingWork::class);
    }

    public function scienceWorks()
    {
        return $this->hasMany(Science::class);
    }

    public function getTeacherName()
    {
        $res = $this->get(['id','username'])->toArray();
        $arr;
        foreach ($res as $key => $value) {
            $arr[$value['id']] = $value['username'];
        }
        return $arr;
    }
}
