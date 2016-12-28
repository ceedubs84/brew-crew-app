/* global angular */

(function() {
  angular.module("app").controller("brewsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/brews').then(function(response) {
        $scope.brews = response.data;
        $scope.orderAttribute = 'name';
        $scope.isOrderDescending = false;
      });
    };

    $scope.toggleInfoVisible = function(inputBrew) {
      inputBrew.infoVisible = !inputBrew.infoVisible;
    };

    $scope.addBrew = function(inputName, inputStyle) {
      var params = {
        name: inputName,
        style: inputStyle,
        infoVisible: false
      };
      $http.post('/api/v1/brews', params).then(function(response) {
        $scope.brews.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };

    $scope.deleteBrew = function(inputBrew) {
      var index = $scope.brews.indexOf(inputBrew);
      if (index !== -1) {
        $scope.brews.splice(index, 1);
      }
    };

    $scope.changeOrderAttribute = function(inputAttribute) {
      if (inputAttribute === $scope.orderAttribute) {
        $scope.isOrderDescending = !$scope.isOrderDescending;
      } else {
        $scope.isOrderDescending = false;
      }
      $scope.orderAttribute = inputAttribute;
    };

    $scope.getSortIcon = function(inputAttribute) {
      if (inputAttribute === $scope.orderAttribute) {
        if ($scope.isOrderDescending) {
          return '\u2193';
        } else {
          return '\u2191';
        }
      } else {
        return '';
      }
    };
    
    window.$scope = $scope;

  });
})();