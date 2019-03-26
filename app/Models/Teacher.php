<?php

namespace App\Models;

use App\Models\Course;
use App\Models\TeachingWork;
use Illuminate\Notifications\Notifiable;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Teacher extends Authenticatable
{
    use Notifiable;

    public function course(){
        return $this->hasMany(Course::class);
    }

    public function teachingWorks()
    {
        return $this->hasMany(TeachingWork::class);
    }

    public function scienceWorks()
    {
        return $this->hasMany(ScienceWork::class);
    }

    public function getTeacherName()
    {
        $res = $this->get(['id','name'])->toArray();
        $arr;
        foreach ($res as $key => $value) {
            $arr[$value['id']] = $value['name'];
        }
        return $arr;
    }
}
