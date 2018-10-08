<?php

Route::group(['namespace' => 'Botble\Chuyengia\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'chuyengias'], function () {

            Route::get('/', [
                'as' => 'chuyengia.list',
                'uses' => 'ChuyengiaController@getList',
            ]);

            Route::get('/create', [
                'as' => 'chuyengia.create',
                'uses' => 'ChuyengiaController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'chuyengia.create',
                'uses' => 'ChuyengiaController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'chuyengia.edit',
                'uses' => 'ChuyengiaController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'chuyengia.edit',
                'uses' => 'ChuyengiaController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'chuyengia.delete',
                'uses' => 'ChuyengiaController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'chuyengia.delete.many',
                'uses' => 'ChuyengiaController@postDeleteMany',
                'permission' => 'chuyengia.delete',
            ]);
        });
    });
    
});