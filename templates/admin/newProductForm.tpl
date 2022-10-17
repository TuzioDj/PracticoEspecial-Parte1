<form method="POST" action="addProduct" enctype="multipart/form-data">
    <h3>Nuevo producto:</h3>


    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Nombre</label>
        <input name="nombre" type="text" class="form-control">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Precio</label>
        <input name="precio" type="number" class="form-control">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Descripcion</label>
        <textarea class="form-control" aria-label="With textarea" name="descripcion"></textarea>
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Imagen</label>
        <input name="imagen" type="file" class="form-control">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Categoria</label>
        <select name="categoria" class="form-select">
            <option value="" selected>Elige una categoria...</option>
            {foreach from=$categories item=$category}
                <option value="{$category->idTipo}">{$category->tipoDeProducto}</option>
            {/foreach}
        </select>
    </div>

    {if $productError}
        <div class="alert alert-danger mb-3">
            {$productError}
        </div>
    {/if}


    <button type="submit" class="btn btn-primary">Agregar</button>
</form>