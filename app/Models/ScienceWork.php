<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Teacher;

class ScienceWork extends Model
{
    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }
}
