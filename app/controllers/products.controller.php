<?php
require_once './app/models/products.model.php';
require_once './app/models/categories.model.php';
require_once './app/views/products.view.php';
require_once './helpers/auth.helper.php';


class ProductsController
{

    private $model;
    private $view;
    private $helper;

    public function __construct()
    {
        $this->model = new ProductsModel();
        $this->view = new ProductsView();


        $this->helper = new AuthHelper;
    }

    public function showAllProducts()
    {

        $products = $this->model->getAllProducts();

        $this->view->showProducts($products);
    }

    public function showProduct($id)
    {

        $product = $this->model->getProduct($id);

        $this->view->showProduct($product);
    }

    public function sortBy($id)
    {

        $products = $this->model->getSortedProducts($id);

        $this->view->showProducts($products);
    }

    public function showAddForm()
    {
        $this->helper->checkLoggedIn();



        $categories = $this->model->getAllCategories(); // NO VA, HAY QUE PREGUNTAR
        $this->view->showAddForm($categories);



    }

    public function addProduct()
    {
        $this->helper->checkLoggedIn();
        $nombre = $_POST['nombre'];
        $precio = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $imagen = $_POST['imagen'];
        $categoria = $_POST['categoria'];

        $this->model->addProduct($nombre,$precio,$descripcion,$imagen,$categoria);
        header("Location: " . BASE_URL . 'admin');
    }

    public function showEditProduct($id)
    {
        $categories = $this->model->getAllCategories(); // NO VA, HAY QUE PREGUNTAR



        $this->helper->checkLoggedIn();
        $product = $this->model->getProduct($id);
        $this->view->showEditProduct($product,$categories);
    }


    public function editProduct($id)
    {
        $this->helper->checkLoggedIn();
        $nombre = $_POST['nombre'];
        $precio = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $imagen = $_POST['imagen'];
        $categoria = $_POST['categoria'];

        $this->model->editProduct($nombre,$precio,$descripcion,$imagen,$categoria,$id);
        header("Location: " . BASE_URL . 'item' . '/' . $id);       
    }

    public function deleteProduct($id)
    {
        $this->helper->checkLoggedIn();
        $this->model->deleteProduct($id);
        header("Location: " . BASE_URL);
    }

}
