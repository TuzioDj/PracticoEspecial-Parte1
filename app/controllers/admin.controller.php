<?php
require_once './app/models/main.model.php';


class AdminController
{

    private $model;
    private $adminModel;
    private $adminView;
    private $loginController;

    public function __construct(){
        $this->model = new MainModel();
        $this->adminModel = new AdminModel();
        $this->adminView = new AdminView();
        $this->loginController = new LoginController();
    }

    
}
