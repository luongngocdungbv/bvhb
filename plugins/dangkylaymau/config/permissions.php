<?php

return [
    [
        'name' => 'dangkylaymaus',
        'flag' => 'dangkylaymaus.list',
    ],
    [
        'name' => 'Create',
        'flag' => 'dangkylaymaus.create',
        'parent_flag' => 'dangkylaymaus.list',
    ],
    [
        'name' => 'Edit',
        'flag' => 'dangkylaymaus.edit',
        'parent_flag' => 'dangkylaymaus.list',
    ],
    [
        'name' => 'Delete',
        'flag' => 'dangkylaymaus.delete',
        'parent_flag' => 'dangkylaymaus.list',
    ],
];