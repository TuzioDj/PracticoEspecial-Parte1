<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class ProductsView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }

    function showProducts($products)
    {
        $this->smarty->assign('count', count($products));
        $this->smarty->assign('products', $products);


        $this->smarty->display('showProducts.tpl');
    }
    function showProduct($product)
    {
        $this->smarty->assign('product', $product);


        $this->smarty->display('product.tpl');
    }
    
    function showAddForm($categories, $error = null)
    {
        $this->smarty->assign('categories', $categories);  // NO VA, HAY QUE PREGUNTAR


        $this->smarty->assign('error', $error);
        $this->smarty->display('adminForms.tpl');
    }
     function showEditProduct($product,$categories, $error = null)
    {
        $this->smarty->assign('error', $error);
        $this->smarty->assign('product', $product);
        $this->smarty->assign('categories', $categories);  // NO VA, HAY QUE PREGUNTAR

        $this->smarty->display('editForm.tpl');
    }

}
