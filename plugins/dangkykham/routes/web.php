<?php

Route::group(['namespace' => 'Botble\Dangkykham\Http\Controllers', 'middleware' => 'web'], function () {
    Route::post('/send-dangkykham', [
        'as' => 'public.send.dangkykham',
        'uses' => 'PublicController@postSendDangkykham'
    ]);

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'dangkykhams'], function () {
            Route::get('/', [
                'as' => 'dangkykhams.list',
                'uses' => 'DangkykhamController@getList',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'dangkykhams.edit',
                'uses' => 'DangkykhamController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'dangkykhams.edit',
                'uses' => 'DangkykhamController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'dangkykhams.delete',
                'uses' => 'DangkykhamController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'dangkykhams.delete.many',
                'uses' => 'DangkykhamController@postDeleteMany',
                'permission' => 'dangkykhams.delete',
            ]);
        });
    });
});
