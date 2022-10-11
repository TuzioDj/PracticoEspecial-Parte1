<?php
require_once './app/controllers/products.controller.php';
require_once './app/controllers/categories.controller.php';
require_once './app/controllers/auth.controller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'inicio'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

// parsea la accion Ej: dev/juan --> ['dev', juan]
$params = explode('/', $action);

// instancio el unico controller que existe por ahora
    $categoriesController = new CategoriesController();

// tabla de ruteo
switch ($params[0]) {
    case 'inicio':
        $categoriesController->showNavbar();

        $productsController = new ProductsController();
        $productsController->showAllProducts();
        break;

    case 'item':
        $categoriesController->showNavbar();

        $productsController = new ProductsController();

        if (!empty($params[1])) {
            $productsController->showProduct($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;

    case 'sortby':
        $categoriesController->showNavbar();

        $productsController = new ProductsController();

        if (!empty($params[1])) {
            $productsController->sortBy($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;




    case 'admin':
        $categoriesController->showNavbar();

        $productsController = new ProductsController();
        $productsController->showAddForm();
        break;

    case 'addProduct':

        $productsController = new ProductsController();
        $productsController->addProduct();
        break;

    case 'editProductForm':
        $categoriesController->showNavbar();

        $productsController = new ProductsController();
        if (!empty($params[1])) {
            $productsController->showEditProduct($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;

    case 'editProduct':

        $productsController = new ProductsController();
        $productsController->editProduct($params[1]);
        break;

    case 'deleteProduct':

        $productsController = new ProductsController();
        $productsController->deleteProduct($params[1]);
        break;

    case 'addCategory':
        $categoriesController->addCategory();
        break;

    case 'editCategory':
        $categoriesController->editCategory();
        break;



    case 'login':
        $categoriesController->showNavbar();

        $authController = new AuthController();

        $authController->showLogin();
        break;
    case 'logout':

        $authController = new AuthController();

        $authController->logout();
        break;

    case 'validate':
        $authController = new AuthController();

        $authController->validateUser();
        break;
    default:
        echo ('404 Page not found');
        break;
}
