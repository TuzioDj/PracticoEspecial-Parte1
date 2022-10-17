<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class ProductsView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }
    // MUESTRO LOS PRODUCTOS RECIBIDOS Y EN CASO DE HABER CATEGORIA, TAMBIEN
    function showProducts($products, $categorie = null)
    {
        $this->smarty->assign('count', count($products));
        $this->smarty->assign('products', $products);
        $this->smarty->assign('categorie', $categorie);

        $this->smarty->display('showProducts.tpl');
    }
    // MUESTRO DETALLES DE UN PRODUCTO
    function showProduct($product)
    {
        $this->smarty->assign('product', $product);


        $this->smarty->display('product.tpl');
    }
    // MUESTRO EL FORM DEL ADMIN. DECLARO LOS 3 ERRORES DE LOS 3 FORM COMO NULL. EN CASO DE QUE ALGUN FORM EN EL CONTROLLER MANDE ERROR, ESTE SE MOSTRARA
    function showAdminForm($categories, $productError = NULL, $newCategoryError = NULL, $editCategoryError = NULL)
    {
        $this->smarty->assign('categories', $categories);


        $this->smarty->assign('editCategoryError', $editCategoryError);
        $this->smarty->assign('newCategoryError', $newCategoryError);
        $this->smarty->assign('productError', $productError);
        $this->smarty->display('admin/adminForms.tpl');
    }
    // MUESTRO EL FORM DE EDITAR. EN CASO DE RECIBIR UN ERROR DEL CONTROLLER, SE MOSTRARA
     function showEditProduct($product,$categories, $productError = null)
    {
        $this->smarty->assign('productError', $productError);
        $this->smarty->assign('product', $product);
        $this->smarty->assign('categories', $categories);

        $this->smarty->display('admin/editForm.tpl');
    }

}
