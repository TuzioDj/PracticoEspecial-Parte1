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

// CONSTRUYO EL AUTH PARA INICIAR LA SESION
$authController = new AuthController();
// INSTANCIO LOS CONTROLADORES
$categoriesController = new CategoriesController();
$productsController = new ProductsController();
// MUESTRO LA BARRA DE NAVEGACION POR DEFECTO
$categoriesController->showNavbar();



// TABLA DE RUTEO
switch ($params[0]) {
    // MUESTREO DE PRODUCTOS
    case 'inicio':
        $productsController->showAllProducts();
        break;

    case 'item':
        if (!empty($params[1])) {
            $productsController->showProduct($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;

    case 'sortby':
        if (!empty($params[1])) {
            $productsController->sortBy($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;


    // MUESTREO DE ADMIN Y FUNCIONES RELACIONADAS
    case 'admin':
        $productsController->showAdminForm();
        break;

    case 'editProductForm':
        if (!empty($params[1])) {
            $productsController->showEditProduct($params[1]);
        } else {
            $productsController->showAllProducts();
        }
        break;

    case 'addProduct':
        $productsController->addProduct();
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

    case 'deleteCategory':
        $categoriesController->deleteCategory();
        break;


    // LOGIN
    case 'login':
        $authController->showLogin();
        break;

    case 'logout':
        $authController->logout();
        break;

    case 'validate':
        $authController->validateUser();
        break;


    default:
        echo ('404 Page not found');
        break;
}
