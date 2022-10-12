    <h3>Nuevo producto:</h3>
    <form method="POST" action="addProduct" enctype="multipart/form-data">

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
            <input name="descripcion" type="text" class="form-control">
        </div>

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Imagen</label>
            <input name="imagen" type="file" class="form-control">
        </div>

        {if $error} 
            <div class="alert alert-danger mb-3">
                {$error}
            </div>
        {/if}

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Categoria</label>
            <select name="categoria" class="form-select">
                {foreach from=$categories item=$category}
                    <option value="{$category->idTipo}">{$category->tipoDeProducto}</option>
                {/foreach}
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Agregar</button>
    </form>

    <br><br>
    <h3>Nueva categoria:</h3>
    <form method="POST" action="addCategory">

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Nombre</label>
            <input name="nombre" type="text" class="form-control">
        </div>

        <button type="submit" class="btn btn-primary">Agregar</button>
    </form>

    <br><br>
    <h3>Editar categoria:</h3>
    <form method="POST" action="editCategory">

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Categoria a editar</label>
            <select name="id"class="form-select" aria-label="Default select example">
                {foreach from=$categories item=$category}
                    <option value="{$category->idTipo}">{$category->tipoDeProducto}</option>
                {/foreach}
            </select>
        </div>

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Nuevo nombre</label>
            <input name="nombre" type="text" class="form-control">
        </div>

        <button type="submit" class="btn btn-primary">Editar</button>
    </form>
    <br><br>



{include file = "footer.tpl"}