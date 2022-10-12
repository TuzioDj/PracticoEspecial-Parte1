<?php
require_once './app/models/categories.model.php';
require_once './app/views/categories.view.php';


class CategoriesController
{

    private $model;
    private $view;
    private $helper;


    public function __construct()
    {
        $this->model = new CategoriesModel();
        $this->view = new CategoriesView();

        $this->helper = new AuthHelper;

    }

    public function showNavbar()
    {
        $categories = $this->model->getAllCategories();

        $this->view->showNavbar($categories);
    }

    public function addCategory()
    {
        $this->helper->checkLoggedIn();
        $nombre = $_POST['nombre'];
        $this->model->addCategory($nombre);
        header("Location: " . BASE_URL . 'admin');
    }

    public function editCategory()
    {
        $this->helper->checkLoggedIn();
        $id = $_POST['id'];
        $nombre = $_POST['nombre'];
        $this->model->editCategory($id,$nombre);
        header("Location: " . BASE_URL . 'admin');
    }

}
