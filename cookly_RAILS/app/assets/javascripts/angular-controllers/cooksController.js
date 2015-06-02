angular.module('cookApp')
  .controller('CooksController', CooksController);

  CooksController.$inject = ['$http', '$routeParams', '$window'];

  function CooksController($http, $routeParams, $window){

    var self = this;
    self.getCookIndex = function(){
      return $http({
      method: 'GET',
      url: "/api/cooks"
      })
      .success(function(data){
        console.log('success');
        self.jsonCooks = data.cooks;
        console.log(data)
      })
      .error(function(data){
        console.log('error');
      });
    };
  }