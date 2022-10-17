<form method="POST" action="deleteCategory">
    <h3>Eliminar categoria:</h3>
    <div class="alert alert-danger mt-3">
        ¡CUIDADO! Esto borrará todos los items que pertenezcan a esa categoria
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Categoria a eliminar</label>
        <select name="id" class="form-select" aria-label="Default select example">
            <option value="" selected>Elige una categoria...</option>
            {foreach from=$categories item=$category}
                <option value="{$category->idTipo}">{$category->tipoDeProducto}</option>
            {/foreach}
        </select>
    </div>
    <button type="submit" class="btn btn-danger">Eliminar</button>
</form>