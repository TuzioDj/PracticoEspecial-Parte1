<?php

class CategoriesModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=practicoespecial;charset=utf8', 'root', '');
    }

    function getAllCategories()
    {

        $query = $this->db->prepare("SELECT * FROM tipodeproductos");
        $query->execute();

        $categories = $query->fetchAll(PDO::FETCH_OBJ);

        return $categories;
    }


    function addCategory($nombre)
    {
        $query = $this->db->prepare("INSERT INTO `tipodeproductos` (`tipoDeProducto`, `idtipo`) VALUES (?, ?);");
        $query->execute([$nombre, NULL]);
    }
    function editCategory($id,$nombre)
    {
        $query = $this->db->prepare("UPDATE `tipodeproductos` SET `tipoDeProducto` = ? WHERE `tipodeproductos`.`idTipo` = ?");
        $query->execute([$nombre, $id]);
    }
}
