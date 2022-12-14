<h3>Editar producto:</h3>
<form method="POST" action="editProduct/{$product->idProducto}" enctype="multipart/form-data">

    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Nombre</label>
        <input name="nombre" type="text" class="form-control" value="{$product->nombre}">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Precio</label>
        <input name="precio" type="number" class="form-control" value="{$product->precio}">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Descripcion</label>
        <textarea class="form-control" aria-label="With textarea" name="descripcion">{$product->descripcion}</textarea>
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Imagen</label>
        <input name="imagen" type="file" class="form-control" value="{$product->imagen}">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Categoria</label>
        <select name="categoria" class="form-select">
            {foreach from=$categories item=$category}
                <option value="{$category->idTipo}" {if $product->idTipoDeProducto == $category->idTipo}selected{/if}>
                    {$category->tipoDeProducto}
                </option>
            {/foreach}
        </select>
    </div>

    {if $productError}
        <div class="alert alert-danger mb-3">
            {$productError}
        </div>
    {/if}


    <button type="submit" class="btn btn-primary">Editar</button>
</form>

{include file = "footer.tpl"}