<?php

namespace App\Admin\Controllers;

use App\Models\ScienceWork;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use App\Models\Teacher;

class ScienceWorksController extends Controller
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
        $grid = new Grid(new ScienceWork);

        $grid->id('科研编号');
        $grid->science_name('科研名称');
        $grid->science_type('科研类型')->display(function($science_type){
                switch ($science_type) {
                    case '1':
                        return '论文';
                        break;

                    case '2':
                        return '项目';
                        break;
                }
        });
        $grid->level('等级')->display(function($level){
            switch ($level) {
                case '1':
                    return '国家级';
                    break;

                case '2':
                    return '省级';
                    break;
                
            }
        });;
        $grid->award('获奖等级')->display(function($award){
            switch ($award) {
                case '1':
                    return '一等奖';
                    break;

                case '2':
                    return '二等级';
                    break;
                case '3':
                    return '三等级';
                    break;
            }
        });;
        $grid->year('所属年份');
        $grid->teacher()->name('教师名称');
        $grid->remake('备注');

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
        $show = new Show(ScienceWork::findOrFail($id));

        $show->id('Id');
        $show->science_name('科研名称');
        $show->science_type('科研类型');
        $show->level('等级');
        $show->award('获奖等级');
        $show->year('所属年份');
        $show->teacher()->name('教师名称');
        $show->remake('备注');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ScienceWork);

        $teacher  = new Teacher();
        $form->text('science_name', '科研名称');
        $form->select('science_type', '科研类型')->options(['1'=>'论文','2'=>'项目']);
        $form->select('level', '等级')->options(['1'=>'国家级','2'=>'省级']);
        $form->select('award', '获奖等级')->options(['1'=>'一等奖','2'=>'二等级','3'=>'三等奖']);
        $form->date('year', '所属年份');
        $form->select('teacher_id','教师姓名')->options($teacher->getTeacherName());
        $form->text('remake', 'Remake');

        return $form;
    }
}
