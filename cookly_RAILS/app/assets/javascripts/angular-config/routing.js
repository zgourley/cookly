angular.module('cookApp')
  .config(['$routeProvider', config]);

function config($routeProvider){
  $routeProvider
    .when('/',{
      templateUrl: "cooks/index.html",
      controller: "CooksController",
      controllerAs: "cooksCtrl"
    })
    .otherwise({
      rediectTo: '/'
    });
}