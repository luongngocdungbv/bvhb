<?php

namespace Botble\Danhmucbvhb\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Danhmucbvhb\Http\Requests\DanhmucbvhbRequest;

class DanhmucbvhbForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(DANHMUCBVHB_MODULE_SCREEN_NAME)
            ->setValidatorClass(DanhmucbvhbRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core.base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('core.base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('price_cates', 'text', [
                'label' => trans('plugins.danhmucbvhb::danhmucbvhb.price'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('plugins.danhmucbvhb::danhmucbvhb.price_placeholder'),
                    'data-counter' => 20,
                ],
            ])
            /*->add('price_type', 'customSelect', [
                'label' => trans('plugins.danhmucbvhb::danhmucbvhb.price_type'),
                'label_attr' => ['class' => 'control-label required'],
                'choices' => [
                    0 => trans('plugins.danhmucbvhb::danhmucbvhb.price_type_1'),
                    'giagoisan' => 'Giá Gói Sản',
                    'giaxetnghiem' => 'Giá Xét Nghiệm',
                    'giagoikhamsuckhoe' => 'Giá Gói Khám Sức Khỏe',  
                ],
            ])*/
            ->add('price_type', 'customRadio', [
                'label' => trans('plugins.danhmucbvhb::danhmucbvhb.price_type'),
                'label_attr' => ['class' => 'control-label required'],
                'choices' => [
                    ["giagoisan", "Giá Gói Sản"],
                    ["giaxetnghiem", "Giá Xét Nghiệm"],
                    ["giagoikhamsuckhoe", "Giá Gói Khám Sức Khỏe"],
                ],
            ])

            ->add('content', 'editor', [
                'label' => trans('core.base::forms.content'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'rows' => 4,
                    'placeholder' => trans('core.base::forms.description_placeholder'),
                    'with-short-code' => true,
                ],
            ])
            ->add('status', 'customSelect', [
                'label' => trans('core.base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'choices' => [
                    1 => trans('core.base::system.activated'),
                    0 => trans('core.base::system.deactivated'),
                ],
            ])
            ->add('image', 'mediaImage', [
                'label' => trans('core.base::forms.image'),
                'label_attr' => ['class' => 'control-label'],
            ])
          
            ->setBreakFieldPoint('status');
    }
}