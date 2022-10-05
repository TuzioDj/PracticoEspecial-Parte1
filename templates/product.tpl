{include file = "header.tpl"}

<div class="row">
    <div class="col-md-6 mt-5">
        <img src="https://www.w3schools.com/bootstrap4/img_avatar1.png" alt="imagenProducto">
    </div>
    <div class="col-md-6 mt-5">
        <h3>{$product->nombre}</h1>
        <h4>${$product->precio}</h5>
        <p>{$product->descripcion}</p>
    </div>
</div>


{include file = "footer.tpl"}