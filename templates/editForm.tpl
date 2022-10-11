<h3>Editar producto:</h3>
<form method="POST" action="editProduct/{$product->idProducto}">

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
        <input name="descripcion" type="text" class="form-control" value="{$product->descripcion}">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Imagen</label>
        <input name="imagen" type="file" class="form-control" value="{$product->imagen}">
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Categoria</label>
        <select name="categoria" class="form-select">
            {foreach from=$categories item=$category}
                <option value="{$category->idTipo}">{$category->tipoDeProducto}</option>
            {/foreach}
        </select>
    </div>

    <button type="submit" class="btn btn-primary">Editar</button>
</form>

{include file = "footer.tpl"}