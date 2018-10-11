<?php

namespace Botble\Chuyengia\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Chuyengia\Http\Requests\ChuyengiaRequest;

class ChuyengiaForm extends FormAbstract
{

    /**
     * @return mixed|void
     * @throws \Throwable
     */
    public function buildForm()
    {
        $this
            ->setModuleName(CHUYENGIA_MODULE_SCREEN_NAME)
            ->setValidatorClass(ChuyengiaRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core.base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('core.base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('description', 'textarea', [
                'label' => trans('core.base::forms.description'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'rows' => 4,
                    'placeholder' => trans('core.base::forms.description_placeholder'),
                    'data-counter' => 400,
                ],
            ])
            ->add('chucvu', 'text', [
                'label' => trans('plugins.chuyengia::chuyengia.chucvu'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'placeholder' => trans('plugins.chuyengia::chuyengia.chucvu_placeholder'),
                    'data-counter' => 400,
                ],
            ])
            ->add('chuyenkhoa', 'customSelect', [
                'label' => trans('plugins.chuyengia::chuyengia.chuyenkhoa'),
                'label_attr' => ['class' => 'control-label required',],
                'style' => ['width'=> '200px'],
                'choices' => [
                    0 => '---Chọn Chuyên Khoa---',
                    'Khoa Khám bệnh' => 'Khoa Khám bệnh',
                    'Cấp cứu hồi sức tích cực và chống độc' => 'Cấp cứu hồi sức tích cực và chống độc',
                    'Khoa Sản' => 'Khoa Sản',
                    'Khoa Ngoại - Phẫu thuật gây mê hồi sức' => 'Khoa Ngoại - Phẫu thuật gây mê hồi sức',
                    'Khoa Nội - Nhi' => 'Khoa Nội - Nhi',
                    'Liên chuyên khoa (Mắt - Tai mũi họng - Răng hàm mặt)'=> 'Liên chuyên khoa (Mắt - Tai mũi họng - Răng hàm mặt)',
                    'Khoa Phục hồi chức năng'=> 'Khoa Phục hồi chức năng',
                    'Khoa Y học cổ truyền'=>'Khoa Y học cổ truyền',
                    'Khoa Chẩn đoán hình ảnh - Thăm dò chức năng'=>'Khoa Chẩn đoán hình ảnh - Thăm dò chức năng',
                    'Khoa Xét nghiệm'=>'Khoa Xét nghiệm',
                    'Khoa Dược'=>'Khoa Dược',
                    'Khoa kiểm soát nhiễm khuẩn'=>'Khoa kiểm soát nhiễm khuẩn',
                    'Phòng Hành Chính'=>'Phòng Hành Chính',
                    'Phòng Điện Nước'=> 'Phòng Điện Nước',
                    'Phòng IT'=> 'Phòng IT',
                ],
            ])
            ->add('hocvan', 'customSelect', [
                'label' => trans('plugins.chuyengia::chuyengia.hocvan'),
                'label_attr' => ['class' => 'control-label required',],
                'style' => ['width'=> '200px'],
                'choices' => [
                    0 => '---Trình độ học vấn---',
                    'BSCKI.' => 'BSCKI',
                    'BSCKII.' => 'BSCKII',
                    'CN.' => 'CN',
                    'CĐ.' => 'CĐ',
                    'TC.' => 'TC',
                    'BS.' => 'BS',
                    'ĐD.'=> 'ĐD',
                    'GS. TS.'=> 'GS. TS.',
                    'Ths. Bs.'=>'Ths. Bs.',
                    'Ths.'=>'Ths.',
                    'TS.'=>'TS.',
                    'TS. Bs.'=>'TS. Bs.',
                    'PGS. TS.'=>'PGS. TS.',
                    'KTV'=>'KTV',
                    'Ths.BSCKII.'=>'Ths.BSCKII.',
                    'CNDD'=>'CNDD',
                ],
            ])
            ->add('featured', 'onOff', [
                'label' => trans('core.base::forms.featured'),
                'label_attr' => ['class' => 'control-label'],
                'default_value' => false,
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