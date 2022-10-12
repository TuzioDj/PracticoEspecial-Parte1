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
        session_start();
    }

    public function showLogin()
    {
        $this->view->showLogin();
    }

    public function validateUser()
    {
        // toma los datos del form
        $email = $_POST['email'];
        $password = $_POST['password'];

        // busco el usuario por email
        $user = $this->model->getUserByEmail($email);

        // verifico que el usuario existe y que las contraseñas son iguales
        if ($user && password_verify($password, $user->contrasenia)) {

            // inicio una session para este usuario
            session_start();
            $_SESSION['USER_ID'] = $user->id;
            $_SESSION['USER_NAME'] = $user->nombre;
            $_SESSION['IS_LOGGED'] = true;


            header("Location: " . BASE_URL);
        } else {
            // si los datos son incorrectos muestro el form con un erro
            $this->view->showLogin("El usuario o la contraseña no existe.");
        }
    }

    public function logout()
    {
        session_start();
        session_destroy();
        header("Location: " . BASE_URL);
    }
}
