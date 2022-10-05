<?php
require_once './app/controllers/main.controller.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'inicio'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

// parsea la accion Ej: dev/juan --> ['dev', juan]
$params = explode('/', $action);

// instancio el unico controller que existe por ahora
$mainController = new MainController();
$adminController = new AdminController();


// tabla de ruteo
switch ($params[0]) {
    case 'inicio':
            $mainController->showMain();
        break;
    case 'item':
            if(isset($params[1])){
                $mainController->showProduct($params[1]);
            }
            else{
                $mainController->showMain();
            }
        break;
    case 'sortby':
            $id = $params[1];
            $mainController->sortBy($id);
        break;
    default:
        echo('404 Page not found');
        break;
}
