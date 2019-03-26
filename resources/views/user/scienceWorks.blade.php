@extends('layouts.app')

@section('content')
<div class="container">
    <table class="table table-hover">
        
        <thead>
            <tr>
                <th >科研编号</th>
                <th >科研名称</th>
                <th >科研类型</th>
                <th >等级</th>
                <th >获奖等级</th>
                <th >所属年份</th>
                <th >教师名称</th>
                <th >备注</th>
            </tr>
        </thead>
        @foreach ($scienceWorks as $item)
            <tbody>
                <tr>
                    <td>{{ $item->id}}</td>
                    <td>{{ $item->science_name}}</td>
                    <td>
                        
                        @if ($item->science_type === 1)
                            论文
                        @else
                            项目
                        @endif
                    
                    </td>
                    <td>
                        @if ( $item->level === 1)
                            国家级
                        @else
                            省级
                        @endif
                    </td>
                    <td>
                        @if ($item->award === 1)
                            一等奖
                        @elseif ($item->award === 2)
                            二等级
                        @else
                            三等级
                        @endif
                    </td>
                    <td>{{ $item->year}}</td>
                    <td>{{ $item->teacher->name}}</td>
                    <td>{{ $item->remark}}</td>
                </tr>
            </tbody>
        @endforeach
        
    </table>
    
</div>
@endsection
