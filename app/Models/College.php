<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use APP\Models\Classes;
class College extends Model
{
    public function classes()
    {
        return $this->hasMany(Classes::class);
    }

    public function getCollegeName()
    {
        $res = $this->get(['id','college_name'])->toArray();
        $arr;
        foreach ($res as $key => $value) {
            $arr[$value['id']] = $value['college_name'];
        }
        return $arr;
    }

    
}
