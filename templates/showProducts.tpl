{include file = "header.tpl"}

<div class="row">

    <h3 class="text-center">Bienvenido a Hardstore! Lo invitamos a ver todo nuestro catalogo de productos:</h1>

    {foreach from=$products item=$product}

        <div class="col-md-3 mt-5">
            <div class="card bg-light shadow">
                <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png" alt="Title">
                <div class="card-body">
                    <h5 class="card-title">{$product->nombre}</h5>
                    <p class="card-text">${$product->precio}</p>
                </div>
                <a href="item/{$product->idProducto}" class="btn bg-dark btn-outline-light">Ver detalles</a>
                {if $loginStatus == true}
                    <a href="admin/edit/{$product->idProducto}" class="btn bg-secondary btn-outline-light">Editar</a>
                    <a href="admin/delete/{$product->idProducto}" class="btn bg-danger btn-outline-light">Eliminar</a>
                {/if}
            </div>
        </div>

    {/foreach}

</div>

{include file = "footer.tpl"}