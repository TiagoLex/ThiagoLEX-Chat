<?php
class Username
{
   public $iduser;
   public $nickname;

   function __construct(int $iduser,string $nickname){
      $this->iduser = $iduser;
      $this->nickname = $nickname;
   }
}
?>