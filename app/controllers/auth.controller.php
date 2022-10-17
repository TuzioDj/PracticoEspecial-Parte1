<?php
require_once './app/models/user.model.php';
require_once './app/views/auth.view.php';


class AuthController
{

    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new UserModel();
        $this->view = new AuthView();
        // INICIO LA SESION PARA DESPUES HACER EL CHECKLOG EN LAS FUNCIONES QUE YO DECIDA
        session_start();
    }
    // MUESTRO LOGIN
    public function showLogin()
    {
        $this->view->showLogin();
    }
    // VALIDO USUARIO
    public function validateUser()
    {
        // DATOS DEL FORM
        $email = $_POST['email'];
        $password = $_POST['password'];

        // TRAIGO EL USER DE LA DB
        $user = $this->model->getUserByEmail($email);

        // VERIFICACION DE USER Y COINCIDENCIA DE CONTRASEÑAS
        if ($user && password_verify($password, $user->contrasenia)) {
            // INICIO LA SESION Y DECLARO VARIABLES GLOBALES
            session_start();
            $_SESSION['USER_ID'] = $user->id;
            $_SESSION['USER_NAME'] = $user->nombre;
            $_SESSION['IS_LOGGED'] = true;

            // LLEVO AL INICIO
            header("Location: " . BASE_URL);
        } else {
            // SI FALLA MUESTRO ERROR
            $this->view->showLogin("El usuario o la contraseña no existe.");
        }
    }

    public function logout()
    {
        // INICIO LA SESION
        session_start();
        // DESTRUYO LA SESION
        session_destroy();
        // LLEVO AL INICIO
        header("Location: " . BASE_URL);
    }
}
