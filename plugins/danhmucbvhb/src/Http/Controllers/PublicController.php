<?php
namespace Botble\Danhmucbvhb\Http\Controllers;

use Botble\Danhmucbvhb\Repositories\Interfaces\DanhmucbvhbInterface;
use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Http\Controllers\BaseController;
use Assets;
use Theme;
use Exception;
use Illuminate\Http\Request;
use Auth;
use Botble\Danhmucbvhb\Models\Danhmucbvhb;
use Botble\Danhmucbvhb\Tables\DanhmucbvhbTable;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\SeoHelper\SeoOpenGraph;
use Botble\Slug\Repositories\Interfaces\SlugInterface;
use Illuminate\Routing\Controller;
use SeoHelper;

class PublicController
{

    /**
     * @var DanhmucbvhbInterface
     */
    protected $danhmucbvhbRepository;

    /**
     * PublicController constructor.
     * @param danhmucbvhbInterface $danhmucbvhbRepository
     * @author Sang Nguyen
     */
    public function __construct(DanhmucbvhbInterface $danhmucbvhbRepository)
    {
        $this->danhmucbvhbRepository = $danhmucbvhbRepository;
    }

    /**
     * @author Sang Nguyen
     */
    public function registerAssets()
    {
        return "add css nếu có";
    }

    public function getDanhmucbvhbs()
    {
        $this::registerAssets();

        SeoHelper::setTitle(__('Danh mục & Giá tại Bệnh viện DK Hòa Bình'));

        $limit = request()->input('paginate', 40);

        $danhmucbvhbs = $this->danhmucbvhbRepository->getModel()->orderBy('created_at', 'desc')->paginate($limit);
        
        Theme::breadcrumb()->add(__('Trang Chủ'), route('public.index'))->add(__('danhmucbvhb'), route('public.danhmucbvhbs'));
        
        return Theme::scope('danhmucbvhbs', compact('danhmucbvhbs'))->render();
    }
}
