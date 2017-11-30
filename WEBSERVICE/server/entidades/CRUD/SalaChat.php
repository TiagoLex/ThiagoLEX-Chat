<?php
class SalaChat
{
   public $idChat;
   public $nombreSala;
   public $passwordSala;

   function __construct(int $idChat,string $nombreSala,string $passwordSala){
      $this->idChat = $idChat;
      $this->nombreSala = $nombreSala;
      $this->passwordSala = $passwordSala;
   }
}
?>