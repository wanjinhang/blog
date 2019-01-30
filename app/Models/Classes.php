<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\College;
use App\Models\TeachingWork;

class Classes extends Model
{
    public function college()
    {
        return $this->belongsTo(College::class);
    }

    public function getClassesName()
    {
        $res = $this->get(['id','class_name'])->toArray();
        $arr;
        foreach ($res as $key => $value) {
            $arr[$value['id']] = $value['class_name'];
        }
        return $arr;
    }

    public function teacherWorks()
    {
        return $this->hasMany(TeachingWork::class);
    }
}
