<?php

Route::group(['namespace' => 'Botble\dangkylaymau\Http\Controllers', 'middleware' => 'web'], function () {
    Route::post('/send-dangkylaymau', [
        'as' => 'public.send.dangkylaymau',
        'uses' => 'PublicController@postSenddangkylaymau'
    ]);

    Route::group(['prefix' => config('core.base.general.admin_dir'), 'middleware' => 'auth'], function () {
        Route::group(['prefix' => 'dangkylaymaus'], function () {
            Route::get('/', [
                'as' => 'dangkylaymaus.list',
                'uses' => 'dangkylaymauController@getList',
            ]);

            Route::get('/edit/{id}', [
                'as' => 'dangkylaymaus.edit',
                'uses' => 'dangkylaymauController@getEdit',
            ]);

            Route::post('/edit/{id}', [
                'as' => 'dangkylaymaus.edit',
                'uses' => 'dangkylaymauController@postEdit',
            ]);

            Route::get('/delete/{id}', [
                'as' => 'dangkylaymaus.delete',
                'uses' => 'dangkylaymauController@getDelete',
            ]);

            Route::post('/delete-many', [
                'as' => 'dangkylaymaus.delete.many',
                'uses' => 'dangkylaymauController@postDeleteMany',
                'permission' => 'dangkylaymaus.delete',
            ]);
        });
    });
});
