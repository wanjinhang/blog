<?php

namespace App\Admin\Controllers;

use App\Models\TeachingWork;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use App\Models\Course;
use App\Models\Classes;
use App\Models\Teacher;

class TeachingWorksController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new TeachingWork);

        $grid->id('Id');
        $grid->classes()->class_name('班级名称');
        $grid->course()->course_name('课程名称');
        $grid->teacher()->username('教师名称');
        $grid->start_time('开课时间');
        $grid->end_time('结课时间');
        $grid->course()->class_hour('学时');
        $grid->course()->credit('学分');
        $grid->remark('备注');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(TeachingWork::findOrFail($id));

        $show->id('Id');
        $show->coures_id('Coures id');
        $show->class_name('Class name');
        $show->teacher_id('Teacher id');
        $show->start_time('Start time');
        $show->end_time('Start time');
        $show->type('Type');
        $show->duration('Duration');
        $show->remark('Remark');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new TeachingWork);
        $classes = new Classes();
        $teacher = new Teacher();
        $course = new Course();
        $form->select('course_id','课程名称')->options($course->getCourseName());
        $form->select('classes_id','班级名称')->options($classes->getClassesName());
        $form->select('teacher_id','教师名称')->options($teacher->getTeacherName());
        $form->datetime('start_time', '开课时间');
        $form->datetime('end_time', '结课时间');
        $form->text('remark', '备注');

        return $form;
    }
}
