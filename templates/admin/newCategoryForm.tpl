<form method="POST" action="addCategory">
    <h3>Nueva categoria:</h3>

    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Nombre</label>
        <input name="nombre" type="text" class="form-control">
    </div>

    {if $newCategoryError}
        <div class="alert alert-danger mb-3">
            {$newCategoryError}
        </div>
    {/if}

    <button type="submit" class="btn btn-primary">Agregar</button>
</form>