@extends('layouts.app')

@section('content')
<div class="container">
    <table class="table table-hover">
        
        <thead>
            <tr>
                <th >编号</th>
                <th >班级名称</th>
                <th >课程名称</th>
                <th >教师名称</th>
                <th >开课时间</th>
                <th >结课时间</th>
                <th >学时</th>
                <th >学分</th>
                <th >备注</th>
            </tr>
        </thead>
        @foreach ($teachingworks as $item)
            <tbody>
                <tr>
                    <td>{{ $item->id}}</td>
                    <td>{{ $item->classes->class_name}}</td>
                    <td>{{ $item->course->course_name}}</td>
                    <td>{{ $item->teacher->teacher_name}}</td>
                    <td>{{ $item->start_time}}</td>
                    <td>{{ $item->end_time}}</td>
                    <td>{{ $item->course->class_hour}}</td>
                    <td>{{ $item->course->credit}}</td>
                    <td>{{ $item->remark}}</td>
                </tr>
            </tbody>
        @endforeach
        
    </table>
    
</div>
@endsection
