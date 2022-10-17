<?php

class ProductsModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=practicoespecial;charset=utf8', 'root', '');
    }
    // TRAIGO TODOS LOS PRODUCTOS CON SUS RESPECTIVAS CATEGORIAS (FUSIONO TABLAS)
    function getAllProducts()
    {
        $query = $this->db->prepare("SELECT a.*, b.* FROM productos a INNER JOIN tipodeproductos b ON a.idTipoDeProducto = b.idTipo");
        $query->execute();

        $products = $query->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }
    // TRAIGO UN PRODUCTO POR ID
    function getProduct($id)
    {
        $query = $this->db->prepare("SELECT * FROM productos WHERE idProducto = ?");
        $query->execute([$id]);

        $product = $query->fetch(PDO::FETCH_OBJ);

        return $product;
    }
    // TRAIGO LOS PRODUCTOS FILTRADO POR CATEGORIA (ID) CON SUS RESPECTIVAS CATEGORIAS (FUSIONO TABLAS)
    function getSortedProducts($id)
    {
        $query = $this->db->prepare("SELECT a.*, b.* FROM productos a INNER JOIN tipodeproductos b ON a.idTipoDeProducto = b.idTipo WHERE b.idTipo = ?;");
        $query->execute([$id]);

        $products = $query->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }


    // AÑADO UN PRODUCTO
    function addProduct($nombre,$precio,$descripcion,$imagen,$categoria)
    {
        // SUBO LA IMAGEN AL TARGET Y RECIBO EL MISMO
        $pathImg = $this->uploadImage($imagen);


        $query = $this->db->prepare("INSERT INTO `productos` (`nombre`, `precio`, `descripcion`, `imagen`, `idTipoDeProducto`, `idProducto`) VALUES (?, ?, ?, ?, ?, ?);");
        $query->execute([$nombre,$precio,$descripcion,$pathImg,$categoria, NULL]);
    }
    // EDITO UN PRODUCTO. SI VIENE UNA IMAGEN LA REEMPLAZA POR LA QUE ESTA. SI NO VIENE IMAGEN REEMPLAZA EL RESTO DE DATOS
    function editProduct($nombre, $precio, $descripcion, $categoria, $id, $imagen = null)
    {   
        if($imagen){
            // SUBO LA IMAGEN AL TARGET Y RECIBO EL MISMO
            $pathImg = $this->uploadImage($imagen);
            $query = $this->db->prepare("UPDATE `productos` SET `nombre` = ?, `precio` = ?, `descripcion` = ?, `imagen` = ?, `idTipoDeProducto` = ? WHERE `productos`.`idProducto` = ?");
            $query->execute([$nombre,$precio,$descripcion,$pathImg,$categoria, $id]);
        }
        else {
            $query = $this->db->prepare("UPDATE `productos` SET `nombre` = ?, `precio` = ?, `descripcion` = ?, `idTipoDeProducto` = ? WHERE `productos`.`idProducto` = ?");
            $query->execute([$nombre,$precio,$descripcion,$categoria, $id]);
        }
    }
    // BORRO PRODUCTO POR ID
    function deleteProduct($id)
    {
        $query = $this->db->prepare("DELETE FROM `productos` WHERE `productos`.`idProducto` = ?");
        $query->execute([$id]);
    }



    private function uploadImage($image){
        $target = 'img/product/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

}
