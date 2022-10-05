<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class MainView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    function showCategories($categories){

        $this->smarty->assign('count', count($categories)); 
        $this->smarty->assign('categories', $categories);

    }

    function showProducts($products) {

        $this->smarty->assign('count', count($products)); 
        $this->smarty->assign('products', $products);
        $this->smarty->assign('adminStatus', $adminStatus);


        $this->smarty->display('showProducts.tpl');

    }

    function showProduct($product){

        $this->smarty->assign('product', $product);
        $this->smarty->assign('adminStatus', $adminStatus);

        
        $this->smarty->display('product.tpl');

    }

}