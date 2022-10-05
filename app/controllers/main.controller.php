<?php
require_once './app/models/main.model.php';
require_once './app/views/main.view.php';
require_once './app/controllers/admin.controller.php';

class MainController {
    private $model;
    private $view;

    public function __construct() {
        $this->model = new MainModel();
        $this->view = new MainView();
    }

    public function showMain(){
        $products = $this->model->getAllProducts();
        $categories = $this->model->getAllCategories();



        $this->view->showCategories($categories);
        $this->view->showProducts($products);
    }

    public function showProduct($id){

        $product = $this->model->getProduct($id);
        $categories = $this->model->getAllCategories();



        $this->view->showCategories($categories);
        $this->view->showProduct($product);

    }
    
    public function sortBy($id){
        
        $products = $this->model->getSortedProducts($id);
        $categories = $this->model->getAllCategories();


        
        $this->view->showCategories($categories);
        $this->view->showProducts($products);

    }
}