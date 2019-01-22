<?php

namespace App\Admin\Controllers;

use App\Models\TeachingWork;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

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
        $grid->coures_id('Coures id');
        $grid->class_name('Class name');
        $grid->teacher_id('Teacher id');
        $grid->start_time('Start time');
        $grid->type('Type');
        $grid->duration('Duration');
        $grid->remark('Remark');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

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

        $form->text('coures_id', 'Coures id');
        $form->text('class_name', 'Class name');
        $form->text('teacher_id', 'Teacher id');
        $form->text('start_time', 'Start time');
        $form->text('type', 'Type');
        $form->text('duration', 'Duration');
        $form->text('remark', 'Remark');

        return $form;
    }
}
