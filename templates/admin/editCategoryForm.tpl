<form method="POST" action="editCategory">
    <h3>Editar categoria:</h3>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Categoria a editar</label>
        <select name="id" class="form-select" aria-label="Default select example">
            <option value="" selected>Elige una categoria...</option>
            {foreach from=$categories item=$category}
                <option value="{$category->idTipo}">{$category->tipoDeProducto}</option>
            {/foreach}
        </select>
    </div>

    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Nuevo nombre</label>
        <input name="nombre" type="text" class="form-control">
    </div>

    {if $editCategoryError}
        <div class="alert alert-danger mb-3">
            {$editCategoryError}
        </div>
    {/if}

    <button type="submit" class="btn btn-primary">Editar</button>
</form>