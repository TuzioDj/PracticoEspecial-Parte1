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
    private $categoriesModel;


    public function __construct()
    {
        $this->model = new ProductsModel();
        $this->view = new ProductsView();
        $this->categoriesModel = new CategoriesModel();

        // INSTANCIO EL HELPER PARA UTILIZARLO EN FUNCIONES ESPECIFICAS
        $this->helper = new AuthHelper;
    }
    // MUESTRO TODOS LOS PRODUCTOS
    public function showAllProducts()
    {
        // TRAIGO TODOS LOS PRODUCTOS
        $products = $this->model->getAllProducts();
        // LOS ENVIO AL VIEW
        $this->view->showProducts($products);
    }
    //  MUESTRO DETALLES DE UN PRODUCTO
    public function showProduct($id)
    {
        // TRAIGO UN PRODUCTO POR ID
        $product = $this->model->getProduct($id);
        // LO ENVIO AL VIEW
        $this->view->showProduct($product);
    }
    // MUESTRO LOS PRODUCTOS POR CATEGORIA
    public function sortBy($id)
    {
        // TRAIGO LOS PRODUCTOS FILTRADOS POR CATEGORIA
        $products = $this->model->getSortedProducts($id);
        // TRAIGO LA CATEGORIA POR LA CUAL SE FILTRO PARA TENER EL NOMBRE
        $categorie = $this->categoriesModel->getCategorie($id);
        // ENVIO EL PRODUCTO Y LA CATEGORIA AL VIEW
        $this->view->showProducts($products, $categorie);
    }
    // MUESTRO EL ADMIN
    public function showAdminForm()
    {
        // CHEQUEO QUE ESTE LOGUEADO YA QUE ES PRIVADO
        $this->helper->checkLoggedIn();
        // TRAIGO CATEGORIAS PARA LOS SELECT
        $categories = $this->categoriesModel->getAllCategories();
        // ENVIO CATEGORIAS AL VIEW Y EJECUTO EL MUESTREO
        $this->view->showAdminForm($categories);
    }


    // AÑADO PRODUCTO A LA DB
    public function addProduct()
    {
        // CHUQUEO EL LOGUEO PARA EVITAR QUE SE PUEDA AÑADIR POR URL
        $this->helper->checkLoggedIn();
        // TRAIGO CATEGORIAS PARA PODER ENVIARLAS EN CASO DE ERROR, AL VIEW
        $categories = $this->categoriesModel->getAllCategories();
        // TRAIGO FORM
        $nombre = $_POST['nombre'];
        $precio = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $categoria = $_POST['categoria'];


        // SI ALGUN INPUT ESTA VACIO MANDO ERROR
        if (empty($nombre) || empty($precio) || empty($descripcion) || empty($categoria)) {
            $productError = "Hay algun campo sin rellenar";
            $this->view->showAdminForm($categories, $productError);
        } 
        // SI LA IMAGEN ESTA VACIO MANDO UN ERROR DISTINTO
        else if (empty($_FILES['imagen']['type'])) {
            $productError = "La imagen es obligatoria";
            $this->view->showAdminForm($categories, $productError);
        } 
        // SI EL FORMATO DE LA IMAGEN COINCIDE ENVIO LOS DATOS AL MODEL PARA MANDARLOS A LA DB
        else if ($_FILES['imagen']['type'] == "image/jpg" || $_FILES['imagen']['type'] == "image/jpeg"
                || $_FILES['imagen']['type'] == "image/png")
        {
            $this->model->addProduct($nombre, $precio, $descripcion, $_FILES['imagen']['tmp_name'], $categoria);
            header("Location: " . BASE_URL . 'admin');
        } 
        // SI EL FORMATO DE LA IMAGEN NO COINCIDE MANDO UN ERROR DONDE SE ESPECIFICA LOS FORMATOS SOPORTADOS
        else {
            $productError = "El formato no es compatible. Subir JPG, JPEG o PNG";
            $this->view->showAdminForm($categories, $productError);
        }
    }


    // MUESTRO EL FORM DE EDITAR PRODUCTO
    public function showEditProduct($id)
    {   
        // CHEQUEO EL LOGUEO
        $this->helper->checkLoggedIn();
        // TRAIGO LAS CATEGORIAS PARA EL SELECT
        $categories = $this->categoriesModel->getAllCategories();
        // TRAIGO EL PRODUCTO A EDITAR (SIRVE PARA AUTOCOMPLETAR LOS INPUTS)
        $product = $this->model->getProduct($id);
        // EJECUTO EL MUESTREO
        $this->view->showEditProduct($product, $categories);
    }
    // FUNCION DE EDITAR PRODUCTO
    public function editProduct($id)
    {
        // CHEQUEO EL LOGUEO
        $this->helper->checkLoggedIn();
        // TRAIGO PRODUCTO PARA PODER ENVIARLO EN CASO DE ERROR, AL VIEW
        $product = $this->model->getProduct($id);
        // TRAIGO CATEGORIAS PARA PODER ENVIARLAS EN CASO DE ERROR AL VIEW
        $categories = $this->categoriesModel->getAllCategories();
        // TRAIGO FORM
        $nombre = $_POST['nombre'];
        $precio = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $categoria = $_POST['categoria'];

        // SI ALGUN INPUT ESTA VACIO MANDO ERROR
        if (
            empty($nombre) || empty($precio) || empty($descripcion) || empty($categoria)
        ) {
            $productError = "Hay algun campo sin rellenar";
            $this->view->showEditProduct($product, $categories, $productError);
        } 
        // SI LA IMAGEN ESTA VACIA MANDO LOS DATOS A LA DB, MENOS LA IMAGEN
        else if (empty($_FILES['imagen']['type'])) {
            $this->model->editProduct($nombre, $precio, $descripcion, $categoria, $id);
            header("Location: " . BASE_URL . 'item' . '/' . $id);
        } 
        // SI EL FORMATO DE LA IMAGEN COINCIDE ENVIO TODOS LOS DATOS A LA DB
        else if ($_FILES['imagen']['type'] == "image/jpg" || $_FILES['imagen']['type'] == "image/jpeg"
                || $_FILES['imagen']['type'] == "image/png") 
        {
            $this->model->editProduct($nombre, $precio, $descripcion, $categoria, $id, $_FILES['imagen']['tmp_name']);
            header("Location: " . BASE_URL . 'item' . '/' . $id);
        } 
        // SI EL FORMATO DE LA IMAGEN NO COINCIDE MANDO UN ERROR DONDE SE ESPECIFICA LOS FORMATOS SOPORTADOS
        else {
            $productError = "El formato no es compatible. Subir JPG, JPEG o PNG";
            $this->view->showEditProduct($product, $categories, $productError);
        }
    }

    public function deleteProduct($id)
    {   
        // CHEQUEO LOGUEO
        $this->helper->checkLoggedIn();
        // BORRO PRODUCTO POR ID
        $this->model->deleteProduct($id);
        // REDIRECCIONO AL INICIO
        header("Location: " . BASE_URL);
    }
}
