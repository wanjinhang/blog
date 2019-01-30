<?php

namespace App\Admin\Controllers;

use App\Models\Teacher;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class TeachersController extends Controller
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
            ->header('教师列表')
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
        $grid = new Grid(new Teacher);

        $grid->id('编号');
        $grid->username('姓名');
        $grid->sex('性别')->display(function($sex){
            return $sex ? '男' : '女';
        });
        $grid->phone('电话');
        $grid->job_title('职称');
        $grid->content('备注');

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
        $show = new Show(Teacher::findOrFail($id));

        $show->id('编号');
        $show->username('姓名');
        $show->sex('性别')->display(function($sex){
            return $sex ? '男' : '女';
        });
        $show->phone('电话');
        $show->job_title('职称');
        $show->content('备注');
        $show->updated_at('更新时间');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Teacher);

        $form->text('username', '姓名');
        $form->password('password', '密码');
        $form->select('sex','性别')->options([1 => '男', 0 => '女']);
        $form->text('job_title', '职称');
        $form->text('content', '研究方向');
        $form->mobile('phone', '电话');

        return $form;
    }

    public function store()
    {
        return $this->form()->store();
    }
}
