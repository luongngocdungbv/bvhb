<?php
namespace Botble\{Plugin}\Http\Controllers;

use Botble\{Plugin}\Repositories\Interfaces\{Plugin}Interface;
use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Base\Http\Controllers\BaseController;
use Assets;
use Theme;
use Exception;
use Illuminate\Http\Request;
use Auth;
use Botble\{Plugin}\Models\{Plugin};
use Botble\{Plugin}\Tables\{Plugin}Table;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\SeoHelper\SeoOpenGraph;
use Botble\Slug\Repositories\Interfaces\SlugInterface;
use Illuminate\Routing\Controller;
use SeoHelper;

class PublicController
{

    /**
     * @var {Plugin}Interface
     */
    protected ${plugin}Repository;

    /**
     * PublicController constructor.
     * @param {plugin}Interface ${plugin}Repository
     * @author Sang Nguyen
     */
    public function __construct({Plugin}Interface ${plugin}Repository)
    {
        $this->{plugin}Repository = ${plugin}Repository;
    }

    /**
     * @author Sang Nguyen
     */
    public function registerAssets()
    {
        return "add css nếu có";
    }

    public function get{Plugins}()
    {
        $this::registerAssets();

        SeoHelper::setTitle(__('Title {plugin} desciption home'));

        $limit = request()->input('paginate', 9);

        ${plugins} = $this->{plugin}Repository->getModel()->orderBy('created_at', 'desc')->paginate($limit);
        
        Theme::breadcrumb()->add(__('Trang Chủ'), route('public.index'))->add(__('{plugin}'), route('public.{plugins}'));
        
        return Theme::scope('{plugins}', compact('{plugins}'))->render();
    }
}
