<?php

class ProductsModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=practicoespecial;charset=utf8', 'root', '');
    }

    function getAllProducts()
    {

        $query = $this->db->prepare("SELECT * FROM productos");
        $query->execute();

        $products = $query->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }
    function getProduct($id)
    {

        $query = $this->db->prepare("SELECT * FROM productos WHERE idProducto = ?");
        $query->execute([$id]);

        $product = $query->fetch(PDO::FETCH_OBJ);

        return $product;
    }
    function getSortedProducts($id)
    {

        $query = $this->db->prepare("SELECT a.* FROM productos a INNER JOIN tipodeproductos b ON a.idTipoDeProducto = b.idTipo WHERE b.idTipo = ?;");
        $query->execute([$id]);

        $products = $query->fetchAll(PDO::FETCH_OBJ);

        return $products;
    }


    function addProduct($nombre,$precio,$descripcion,$imagen,$categoria)
    {

        $query = $this->db->prepare("INSERT INTO `productos` (`nombre`, `precio`, `descripcion`, `imagen`, `idTipoDeProducto`, `idProducto`) VALUES (?, ?, ?, ?, ?, ?);");
        $query->execute([$nombre,$precio,$descripcion,1,$categoria, NULL]);

    }

    function editProduct($nombre,$precio,$descripcion,$imagen,$categoria,$id)
    {

        $query = $this->db->prepare("UPDATE `productos` SET `nombre` = ?, `precio` = ?, `descripcion` = ?, `imagen` = ?, `idTipoDeProducto` = ? WHERE `productos`.`idProducto` = ?");
        $query->execute([$nombre,$precio,$descripcion,1,$categoria, $id]);

    }

    function deleteProduct($id)
    {
        $query = $this->db->prepare("DELETE FROM `productos` WHERE `productos`.`idProducto` = ?");
        $query->execute([$id]);
    }






    function getAllCategories()
    {

        $query = $this->db->prepare("SELECT * FROM tipodeproductos");
        $query->execute();

        $categories = $query->fetchAll(PDO::FETCH_OBJ);

        return $categories;
    }
}
