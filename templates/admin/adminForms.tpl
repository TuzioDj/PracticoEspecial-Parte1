    <div class="row">
        <div class="col-md-7 pe-5">
            {include file = "admin/newProductForm.tpl"}
        </div>

        <div class="col-md-5">
            <div class="mb-5">
                {include file = "admin/newCategoryForm.tpl"}
            </div>
            {include file = "admin/editCategoryForm.tpl"}
        </div>

        <div class="mt-5">
            {include file = "admin/deleteCategoryForm.tpl"}
        </div>

    </div>

{include file = "footer.tpl"}