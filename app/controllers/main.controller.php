<?php
require_once './app/models/main.model.php';
require_once './app/views/main.view.php';
require_once './app/controllers/login.controller.php';

class MainController {
    private $model;
    private $view;
    private $loginController;

    public function __construct() {
        $this->model = new MainModel();
        $this->view = new MainView();
        $this->loginController = new LoginController();
    }

    public function showMain(){

        $loginStatus = $this->loginController->checkStatus();

        $products = $this->model->getAllProducts();
        $categories = $this->model->getAllCategories();



        $this->view->showCategories($categories,$loginStatus);
        $this->view->showProducts($products);
    }

    public function showProduct($id){

        $loginStatus = $this->loginController->checkStatus();

        $product = $this->model->getProduct($id);
        $categories = $this->model->getAllCategories();



        $this->view->showCategories($categories,$loginStatus);
        $this->view->showProduct($product);

    }
    
    public function sortBy($id){

        $loginStatus = $this->loginController->checkStatus();
        
        $products = $this->model->getSortedProducts($id);
        $categories = $this->model->getAllCategories();



        $this->view->showCategories($categories,$loginStatus);
        $this->view->showProducts($products);

    }
}