<?php

namespace Botble\Dangkykham\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Dangkykham\Http\Requests\EditDangkykhamRequest;

class DangkykhamForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(DANGKYKHAM_MODULE_SCREEN_NAME)
            ->setValidatorClass(EditDangkykhamRequest::class)
            ->add('is_read', 'checkbox', [
                'label' => trans('plugins.dangkykham::dangkykham.form.is_read'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'class' => 'hrv-checkbox',
                ],
                'value' => 1,
                'checked' => $this->getModel() ? $this->getModel()->is_read == 1 : false,
            ])
            ->setBreakFieldPoint('is_read')
            ->addMetaBoxes([
                'information' => [
                    'title' => trans('plugins.dangkykham::dangkykham.dangkykham_information'),
                    'content' => view('plugins.dangkykham::dangkykham-info', ['dangkykham' => $this->getModel()])->render(),
                    'attributes' => [
                        'style' => 'margin-top: 0',
                    ],
                ],
            ]);
    }
}
