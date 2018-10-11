<?php

Route::group(['namespace' => 'Botble\Danhmucbvhb\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'danhmucbvhbs'], function () {

            Route::get('/', [
                'as' => 'danhmucbvhb.list',
                'uses' => 'DanhmucbvhbController@getList',
            ]);

            Route::get('/create', [
                'as' => 'danhmucbvhb.create',
                'uses' => 'DanhmucbvhbController@getCreate',
            ]);

            Route::post('/create', [
                'as' => 'danhmucbvhb.create',
                'uses' => 'DanhmucbvhbController@postCreate',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'danhmucbvhb.edit',
                'uses' => 'DanhmucbvhbController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'danhmucbvhb.edit',
                'uses' => 'DanhmucbvhbController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'danhmucbvhb.delete',
                'uses' => 'DanhmucbvhbController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'danhmucbvhb.delete.many',
                'uses' => 'DanhmucbvhbController@postDeleteMany',
                'permission' => 'danhmucbvhb.delete',
            ]);
        });
    });

    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/danhmucbvhbs', [
            'as' => 'public.danhmucbvhbs',
            'uses' => 'PublicController@getDanhmucbvhbs',
        ]);
        Route::get('/danhmucbvhb', [
            'as' => 'public.danhmucbvhbs',
            'uses' => 'PublicController@getDanhmucbvhbs',
        ]);
    });
    
});