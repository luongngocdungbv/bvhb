<?php
namespace Botble\Chuyengia\Http\Controllers;

use Botble\Chuyengia\Repositories\Interfaces\ChuyengiaInterface;
use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Http\Controllers\BaseController;
use Assets;
use Theme;
use Exception;
use Illuminate\Http\Request;
use Auth;
use Botble\Chuyengia\Models\Chuyengia;
use Botble\Chuyengia\Tables\ChuyengiaTable;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\SeoHelper\SeoOpenGraph;
use Botble\Slug\Repositories\Interfaces\SlugInterface;
use Illuminate\Routing\Controller;
use SeoHelper;

class PublicController
{

    /**
     * @var ChuyengiaInterface
     */
    protected $chuyengiaRepository;

    /**
     * PublicController constructor.
     * @param chuyengiaInterface $chuyengiaRepository
     * @author Sang Nguyen
     */
    public function __construct(ChuyengiaInterface $chuyengiaRepository)
    {
        $this->chuyengiaRepository = $chuyengiaRepository;
    }

    /**
     * @author Sang Nguyen
     */
    public function registerAssets()
    {
        return "add css nếu có";
    }

    public function getChuyengias()
    {
        $this::registerAssets();

        SeoHelper::setTitle(__('Chuyên Gia Bệnh Viện Đa Khoa Hòa Bình'));

        $limit = request()->input('paginate', 9);

        $chuyengias = $this->chuyengiaRepository->getModel()->orderBy('created_at', 'desc')->paginate($limit);
        
        Theme::breadcrumb()->add(__('Trang Chủ'), route('public.index'))->add(__('Chuyên gia'), route('public.chuyengias'));
        
        return Theme::scope('chuyengias', compact('chuyengias'))->render();
    }
}
