<?php

class CategoriesModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=practicoespecial;charset=utf8', 'root', '');
    }
    // TRAIGO TODAS LAS CATEGORIAS
    function getAllCategories()
    {
        $query = $this->db->prepare("SELECT * FROM tipodeproductos");
        $query->execute();

        $categories = $query->fetchAll(PDO::FETCH_OBJ);

        return $categories;
    }
    // TRAIGO UNA CATEGORIA POR ID
    function getCategorie($id)
    {
        $query = $this->db->prepare("SELECT * FROM tipodeproductos WHERE idtipo = ?");
        $query->execute([$id]);

        $categorie = $query->fetch(PDO::FETCH_OBJ);

        return $categorie;
    }


    // AÑADO UNA CATEGORIA
    function addCategory($nombre)
    {
        $query = $this->db->prepare("INSERT INTO `tipodeproductos` (`tipoDeProducto`, `idtipo`) VALUES (?, ?);");
        $query->execute([$nombre, NULL]);
    }
    // EDITO UNA CATEGORIA POR ID
    function editCategory($id,$nombre)
    {
        $query = $this->db->prepare("UPDATE `tipodeproductos` SET `tipoDeProducto` = ? WHERE `tipodeproductos`.`idTipo` = ?");
        $query->execute([$nombre, $id]);
    }
    // ELIMINO UNA CATEGORIA POR ID
    function deleteCategory($id)
    {
        $query = $this->db->prepare("DELETE FROM `tipodeproductos` WHERE `tipodeproductos`.`idTipo` = ?");
        $query->execute([$id]);
    }
}
