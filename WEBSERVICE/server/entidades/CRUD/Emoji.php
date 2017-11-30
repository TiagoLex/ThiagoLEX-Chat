<?php
class Emoji
{
   public $idEmoji;
   public $nombre;
   public $tipo;
   public $descripcion;

   function __construct(int $idEmoji,string $nombre,string $tipo,string $descripcion){
      $this->idEmoji = $idEmoji;
      $this->nombre = $nombre;
      $this->tipo = $tipo;
      $this->descripcion = $descripcion;
   }
}
?>