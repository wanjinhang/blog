<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    Route::resource('teachers', 'TeachersController');
    Route::resource('courses', 'CoursesController');
    Route::resource('colleges', 'CollegesController');
    Route::resource('classes', 'ClassesController');
    Route::resource('teachingWorks', 'TeachingWorksController');
    Route::resource('scienceWorks', 'ScienceWorksController');
    Route::resource('tongjis','TongJiController');
});

