<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Product;
class Category extends Model {

	protected $table    ='categories';
	protected $fillable =['name','parent_id'];

    /**
     * [product description]
     * @return [type] [description]
     */
	public function product(){
		return $this->hasMany('App\Product','category_id','id');
	}
    /**
     * [getParentMenu description]
     * @return [type] [description]
     */
    protected function getParentMenu()
    {
        return Category::where('parent_id','=',0)->get();
    }

    /**
     * [get AllMenu description]
     * @param  [type] $mainMenu [description]
     * @return [type]           [description]
     */
	protected function getAllMenu($mainMenu) 
	{
        $allMenu = array();

        foreach ($mainMenu as $menu) {
            $subArr         = array();
            $subArr['id'] = $menu->id;
            $subArr['name'] = $menu->name;
            $subMenu        = Category::where('parent_id', '=', $menu->id)->get();

            if (!$subMenu->isEmpty()) {
                $result = $this->getAllMenu($subMenu);

                $subArr['sub'] = $result;
            }

            $allMenu[]= $subArr;
        }

        return $allMenu;
    }
    /**
     * Products by Category
     * @param  [type] $id [description]
     * @return [type]     [description]
     */
    protected function getCategory_Product($id = 0)
    {
        if($id==0){
            return Product::whereRaw('status_product <> 0')->get();  
        }else{
            $category=Category::find($id);
            $product=Category::find($id)->product()->whereRaw('status_product <> 0')->get();
            return array('name' => $category->name,'list'=> $product);
        }
        
    }

}
