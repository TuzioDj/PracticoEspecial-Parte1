<!DOCTYPE html>
<html lang="es">

<head>
  <base href="{BASE_URL}">

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/style.css">
  <!-- Importo Bootstrap (CSS) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

  <title>HardStore - Inicio</title>
</head>

<!--  Arranca body  -->

<body class="bg-light bg-gradient">
  <header>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
      <div class="container">

        <a class="navbar-brand" href="inicio">HARDSTORE</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="inicio">Inicio</a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Categorias
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="sortby">Todo</a></li>
                {foreach from=$categories item=$category}
                  
                  <li><a class="dropdown-item" href="sortby/{$category->idTipo}">{$category->tipoDeProducto}</a></li>

                {/foreach}
              </ul>
            </li>

          </ul>

          <a class="nav-link nav-item navbar-nav mb-2 mb-lg-0" href="login">Login</a>

        </div>
      </div>
    </nav>
    </br></br>
  </header>

  <!-- Comienza el main -->
<main class="container">