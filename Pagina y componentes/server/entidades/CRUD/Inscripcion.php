<?php
class Inscripcion
{
   public $id;
   public $nickname;
   public $nombreSala;

   function __construct(int $id,string $nickname,string $nombreSala){
      $this->id = $id;
      $this->nickname = $nickname;
      $this->nombreSala = $nombreSala;
   }
}
?>