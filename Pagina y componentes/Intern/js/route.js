// Rutas 
var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function ($routeProvider) {
    $routeProvider
        .when('/home', {
            templateUrl: '../index.html'
        })
        .when('/tipoemoji', {
            templateUrl: '../views/tipoprueba.html',
            controller: 'ControllerTipo'
        })
        .when('/sala', {
            templateUrl: '../views/sala.html',
            controller: 'ControllerSala'
        })
        .when('/emoji', {
            templateUrl: '../views/emoji.html',
            controller: 'ControllerEmoji'
        });
});

// Controladores

myApp.controller('ControllerTipo', function ($scope, $http, $route, $routeParams) {

    $scope.listaT = function () {
        $http.get('http://tiagolex.byethost7.com/server/tipoemoji/leer').success(function (tipo) {

            $scope.datos = tipo;
        });

    };

    $scope.agregarT = function () {
        $http.post('http://tiagolex.byethost7.com/server/tipoemoji/crear', $scope.tipo).success(function (tipo) {
            //window.location.href = '/';
        });

    };

    $scope.actualizarT = function () {
        $http.post('http://tiagolex.byethost7.com/server/tipoemoji/actualizar', $scope.tipo).success(function (tipo) {
            //window.location.href = '/';
        });

    };
    $scope.eliminarT = function (idTipo) {
        var idTipo = idTipo;
        $http.get('http://tiagolex.byethost7.com/server/tipoemoji/borrar?id=' + idTipo).success(function (tipo) {

        });

    };

});
myApp.controller('ControllerEmoji', function ($scope, $http) {

    $http.get('http://tiagolex.byethost7.com/server/emoji/leer').success(function (emoji) {
        //Convert data to array.
        //datos lo tenemos disponible en la vista gracias a $scope
        $scope.datos = emoji;
    });


});
myApp.controller('ControllerSala', function ($scope, $http) {

    $http.get('http://tiagolex.byethost7.com/server/Sala/leer').success(function (sala) {
        //Convert data to array.
        //datos lo tenemos disponible en la vista gracias a $scope
        $scope.datos = sala;
    });


});


//Metodo guia para generar los controladores

// myApp.controller('ControllerTipo', function ($scope, $http) {

//     $scope.listaT = function () {
//         $http.get('http://tiagolex.byethost7.com/server/tipoemoji/leer').success(function (tipo) {
//             //Convert data to array.
//             //datos lo tenemos disponible en la vista gracias a $scope
//             $scope.datos = tipo;
//         });

//     };

//     $scope.agregarT = function () { };
//     $scope.actulizarT = function () { };
//     $scope.eliminarT = function () { };
//     $scope.editarT = function () { };


// });