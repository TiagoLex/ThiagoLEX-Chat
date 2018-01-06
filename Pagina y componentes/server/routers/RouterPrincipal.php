<?php
include_once('../routers/RouterBase.php');
include_once('../routers/RouterFuncionalidadesEspecificas.php');
function cargarRouters() {
   define("routersPath", "../routers/");
   $files = glob(routersPath."CRUD/*.php");
   foreach ($files as $filename) {
      include_once($filename);
   }
}
cargarRouters();

class RouterPrincipal extends RouterBase
{
   function route(){
      switch(strtolower($this->datosURI->controlador)){
         case "emoji":
            $routerEmoji = new RouterEmoji();
            return json_encode($routerEmoji->route());
            break;
         case "inscripcion":
            $routerInscripcion = new RouterInscripcion();
            return json_encode($routerInscripcion->route());
            break;
         case "salachat":
            $routerSalaChat = new RouterSalaChat();
            return json_encode($routerSalaChat->route());
            break;
         case "tipoemoji":
            $routerTipoEmoji = new RouterTipoEmoji();
            return json_encode($routerTipoEmoji->route());
            break;
         case "username":
            $routerUsername = new RouterUsername();
            return json_encode($routerUsername->route());
            break;
         default:
            $routerEspeficias = new RouterFuncionalidadesEspecificas();
            return $routerEspeficias->route();
            break;
      }
   }
}
