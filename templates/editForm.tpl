{include file = "header.tpl"}

    <form>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Nombre</label>
        <input name ="nombre" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value={$product->nombre}>
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Precio</label>
        <input name ="precio" type="number" class="form-control" id="exampleInputPassword1" value={$product->precio}>
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Descripcion</label>
        <input name ="descripcion" type="text" class="form-control" id="exampleInputPassword1" value={$product->descripcion}>
    </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Imagen</label>
        <input name ="imagen" type="file" class="form-control" id="exampleInputPassword1" value={$product->imagen}>
    </div>

    <button type="submit" class="btn btn-primary">Editar</button>
    </form>

{include file = "footer.tpl"}