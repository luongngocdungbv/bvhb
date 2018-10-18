<?php

namespace Botble\dangkylaymau\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\dangkylaymau\Http\Requests\EditdangkylaymauRequest;

class dangkylaymauForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(dangkylaymau_MODULE_SCREEN_NAME)
            ->setValidatorClass(EditdangkylaymauRequest::class)
            ->add('is_read', 'checkbox', [
                'label' => trans('plugins.dangkylaymau::dangkylaymau.form.is_read'),
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
                    'title' => trans('plugins.dangkylaymau::dangkylaymau.dangkylaymau_information'),
                    'content' => view('plugins.dangkylaymau::dangkylaymau-info', ['dangkylaymau' => $this->getModel()])->render(),
                    'attributes' => [
                        'style' => 'margin-top: 0',
                    ],
                ],
            ]);
    }
}
