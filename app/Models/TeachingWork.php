<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Teacher;
use App\Models\Classes;
use App\Models\Course;

class TeachingWork extends Model
{
   public function teacher()
   {
        return $this->belongsTo(Teacher::class);
   }

   public function classes()
   {
       return $this->belongsTo(Classes::class);
   }

   public function course()
   {
       return $this->belongsTo(Course::class);
   }
}
