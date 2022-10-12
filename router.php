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
    $authController = new AuthController();
    $productsController = new ProductsController();
// tabla de ruteo
switch ($params[0]) {
    case 'inicio':
        $categoriesController->showNavbar();

        $productsController->showAllProducts();
        break;

    case 'item':
        $categoriesController->showNavbar();


        if (!empty($params[1])) {
            $productsController->showProduct($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;

    case 'sortby':
        $categoriesController->showNavbar();


        if (!empty($params[1])) {
            $productsController->sortBy($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;




    case 'admin':
        $categoriesController->showNavbar();

        $productsController->showAddForm();
        break;

    case 'addProduct':

        $productsController->addProduct();
        break;

    case 'editProductForm':
        $categoriesController->showNavbar();

        if (!empty($params[1])) {
            $productsController->showEditProduct($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;

    case 'editProduct':

        $productsController->editProduct($params[1]);
        break;

    case 'deleteProduct':

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


        $authController->showLogin();
        break;
    case 'logout':


        $authController->logout();
        break;

    case 'validate':
        $categoriesController->showNavbar();

        $authController->validateUser();
        break;

        
    default:
        echo ('404 Page not found');
        break;
}
