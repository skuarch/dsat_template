//------------------------------------------------------------------------------
//angular modules
var context = '/dsat_template';

var angularIndex = angular.module('angularIndex', ['ngRoute'])
    .config(function ($routeProvider) {
        $routeProvider
            .when('/', {
                templateUrl: context + '/resources/html/login/index.html',
                controller : 'indexController'
            });
    })    
    .controller('indexController',['$scope', function($scope){
            document.title = 'mocos';
        }]
    );