<?php

namespace App\Policies;

use App\Models\Teacher;
use Illuminate\Auth\Access\HandlesAuthorization;

class TeacherPolicy
{
    use HandlesAuthorization;

    public function update(Teacher $currentTeacher, Teacher $teacher)
    {
        return $currentTeacher->id === $teacher->id;
    }
}