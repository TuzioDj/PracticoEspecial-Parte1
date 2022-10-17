<div class="row">
    <div class="col-md-6 mt-5">
        <img src="{$product->imagen}" alt="imagenProducto" class="prueba">
    </div>
    <div class="col-md-6 mt-5">
        <h1>{$product->nombre}</h1>
            <h3>${$product->precio}</h3>
                <pre class="columns-2">{$product->descripcion}</pre>
    </div>
</div>


{include file = "footer.tpl"}