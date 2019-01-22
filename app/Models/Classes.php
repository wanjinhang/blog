<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\College;

class Classes extends Model
{
    public function college()
    {
        return $this->belongsTo(College::class);
    }
}
