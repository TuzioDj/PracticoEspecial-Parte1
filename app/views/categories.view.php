<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class CategoriesView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }

    function showNavbar($categories)
    {
        $this->smarty->assign('count', count($categories));
        $this->smarty->assign('categories', $categories);

        $this->smarty->display('header.tpl');        
    }
}
