<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class TongJiController extends Controller
{
    public function index()
    {
        $user = Auth::user();
         // 运行sql获取数据数组
         $sql = "SELECT
         teaching_works.id,
         teaching_works.teacher_id,
         teaching_works.start_time,
         courses.course_name,
         courses.class_hour,
         courses.credit,
         courses.type,
         teachers.name,
         classes.class_name,
         classes.num
         FROM
         teaching_works
         INNER JOIN courses ON teaching_works.course_id = courses.id
         INNER JOIN teachers ON teaching_works.teacher_id = teachers.id
         INNER JOIN classes ON teaching_works.classes_id = classes.id where teaching_works.teacher_id = ".$user->id;
         
         $result = DB::select($sql);
         $work_point = array();
         foreach($result as $key => $val){
             $k;
             if ($val->num < 30 ) {
                $k = 1.2;
             } else if($val->num >= 30 and $val->num< 60){
                 $k = 1.4;
             }else if($val->num >= 60 and $val->num<80){
                 $k = 1.6;
             }else{
                 $k = 1.8;
             }
             $id = $val->teacher_id;
             
             if(!isset($work_point[$id])){
                 $work_point[$id] = $val->class_hour * $k;
             }else{
                 $work_point[$id] += $val->class_hour * $k;
             }
 
         }
 
         $sql1 = "SELECT science_works.`level`, science_works.award, science_works.science_type, science_works.teacher_id FROM science_works where science_works.teacher_id = ".$user->id;
         $science_result = DB::select($sql1);
         
         $science_ponit = array();
         for ($i=0; $i <count($science_result) ; $i++) { 
             $point = 0;
             
             if($science_result[$i]->science_type== 2){
                 $point += 50;
             }else{
                 $point += 40;
             }
             if($science_result[$i]->level == 1){
                 $point += 20;
             }else{
                 $point += 10;
             }
 
             if($science_result[$i]->award == 1){
                 $point += 30;
             }else if($science_result[$i]->award == 2){
                 $point += 20;
             }else{
                 $point += 10;
             }
             
             $id = $science_result[$i]->teacher_id;
             if(!isset($science_ponit[$id])){
                 $science_ponit[$id] = $point;
             }else{
                 $science_ponit[$id] += $point;
             }
            
 
         }
         $id = $user->id;
         $myPoint ['science_ponit'] = $science_ponit[$id];
         $myPoint ['work_point'] = $work_point[$id];
         
         return view('user/tongji',['myPoint' => $myPoint]);


    }
}
