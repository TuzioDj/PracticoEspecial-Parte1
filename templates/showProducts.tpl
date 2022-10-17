<div class="row">

    <h2 class="text-center mb-5">Bienvenido a Hardstore! Lo invitamos a ver todo nuestro catalogo de productos:</h2>
        <h4>Mostrando {$count} productos</h4>
        {if $categorie}
            <h5>Categoria: {$categorie->tipoDeProducto}</h5>
        {else}
            <h5>Mostrando todo</h5>
        {/if}
        {foreach from=$products item=$product}

            <div class="col-md-3 mt-4">
                <div class="card bg-light shadow">
                    <img class="card-img-top" src="{$product->imagen}" alt="Title">
                    <div class="card-body">
                        <a class="m-0 text-reset" href="sortby/{$product->idTipo}">{$product->tipoDeProducto}</a>
                        <h5 class="card-title">{$product->nombre}</h5>
                        <p class="card-text fw-bold">${$product->precio}</p>
                    </div>
                    <a href="item/{$product->idProducto}" class="btn bg-dark btn-outline-light">Ver detalles</a>
                    {if isset($smarty.session.USER_ID)}
                        <a href="editProductForm/{$product->idProducto}" class="btn bg-secondary btn-outline-light">Editar</a>
                        <a href="deleteProduct/{$product->idProducto}" class="btn bg-danger btn-outline-light">Eliminar</a>
                    {/if}
                </div>
            </div>

        {/foreach}

</div>
<br><br>
{include file = "footer.tpl"}