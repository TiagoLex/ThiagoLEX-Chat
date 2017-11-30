<?php
class TipoEmoji
{
   public $idTipo;
   public $tipo;

   function __construct(int $idTipo,string $tipo){
      $this->idTipo = $idTipo;
      $this->tipo = $tipo;
   }
}
?>