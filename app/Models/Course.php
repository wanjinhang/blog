<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Teacher;
use App\Models\TeachingWork;

class Course extends Model
{
    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }

    public function teacherWorks()
    {
        return $this->hasMany(TeachingWork::class);
    }

    public function getCourseName()
    {
        $res = $this->get(['id','course_name'])->toArray();
        $arr;
        foreach ($res as $key => $value) {
            $arr[$value['id']] = $value['course_name'];
        }
        return $arr;
    }
}
