
<div class="row">
    <div class="col-md-6 mt-5">
        <img src="{$product->imagen}" alt="imagenProducto" class="prueba">
    </div>
    <div class="col-md-6 mt-5">
        <h3>{$product->nombre}</h1>
            <h4>${$product->precio}</h5>
                <p>{$product->descripcion}</p>
    </div>
</div>


{include file = "footer.tpl"}