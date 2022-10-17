<?php
require_once './app/models/categories.model.php';
require_once './app/views/categories.view.php';
require_once './app/views/products.view.php';


class CategoriesController
{

    private $model;
    private $view;
    private $helper;
    private $productsView;


    public function __construct()
    {
        $this->model = new CategoriesModel();
        $this->view = new CategoriesView();
        $this->productsView = new ProductsView();
        
        // INSTANCIO EL HELPER PARA UTILIZARLO EN FUNCIONES ESPECIFICAS
        $this->helper = new AuthHelper;

    }
    // MUESTRO NAVBAR
    public function showNavbar()
    {
        $categories = $this->model->getAllCategories();

        $this->view->showNavbar($categories);
    }
    // AÑADO CATEGORIA
    public function addCategory()
    {
        // CHEQUEO EL LOG
        $this->helper->checkLoggedIn();
        // TRAIGO FORM
        $nombre = $_POST['nombre'];
        // SI NO ESTA VACIO MANDO AL MODEL PARA AGREGARLA
        if (!empty($nombre)) {
            $this->model->addCategory($nombre);
            header("Location: " . BASE_URL . 'admin');
        }
        // SI ESTA VACIO MANDO ERROR AL VIEW
        else {
            $newCategoryError = "Hay algun campo sin rellenar";
            $categories = $this->model->getAllCategories();
            $this->productsView->showAdminForm($categories,NULL,$newCategoryError,NULL);
        }
    }

    public function editCategory()
    {
        // CHUQUEO EL LOG
        $this->helper->checkLoggedIn();
        // TRAIGO FORM
        $id = $_POST['id'];
        $nombre = $_POST['nombre'];
        // SI NINGUNO ESTA VACIO MANDO AL MODEL PARA AGREGARLA
        if (!empty($id)&&!empty($nombre)) {
            $this->model->editCategory($id,$nombre);
            header("Location: " . BASE_URL . 'admin');
        }
        // SI ALGUNO ESTA VACIO MANDO ERROR AL VIEW
        else{
            $editCategoryError = "Hay algun campo sin rellenar";
            $categories = $this->model->getAllCategories();
            $this->productsView->showAdminForm($categories,NULL,NULL,$editCategoryError);
        }
    }

    public function deleteCategory()
    {
        $this->helper->checkLoggedIn();
        $id = $_POST['id'];
        $this->model->deleteCategory($id);
        header("Location: " . BASE_URL . 'admin');
    }

}
