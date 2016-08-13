//------------------------------------------------------------------------------
//angular modules
var context = '/dsat_template';
var angularLoginModule = angular.module('angularLoginModule', ['ngRoute']);
var angularAppModule = angular.module('angularAppModule', ['ngRoute']);

//------------------------------------------------------------------------------
//angular configuration route provider
angularLoginModule.config(function($routeProvider){
    // login or /
    $routeProvider
        .when('/', {
            templateUrl: context + '/resources/html/login/index.html'
        })
        .when('/login', {
            templateUrl: context + '/resources/html/login/index.html'
        })
        .when('/logout', {
            templateUrl: context + '/resources/html/login/index.html',
            controller: 'logoutController'
        })
        .otherwise({
            redirectTo: '/'
        });
});
angularAppModule.config(function($routeProvider){
    //app 
    $routeProvider
        .when('/', {
            templateUrl: context + '/resources/html/dashboard/index.html',
            controller: 'dashboadController'
        })
        .when('/welcome', {
            templateUrl: context + '/resources/html/application/welcome.html',
            controller: 'dashboadController'
        })
        .when('/404', {
            templateUrl: context + '/resources/html/application/404.html',
            controller: 'dashboadController'
        })
        .when('/dashboard', {
            templateUrl: context + '/resources/html/dashboard/index.html',
            controller: 'dashboadController'
        })
        .when('/exams/take', {
            templateUrl: context + '/resources/html/exams/index.html',
            controller: 'takeExamController'
        })
        .when('/exams/list', {
            templateUrl: context + '/resources/html/exams/list.html'            
        })
        .when('/handson/take', {
            templateUrl: context + '/resources/html/handson/index.html'            
        })
        .when('/handson/list', {
            templateUrl: context + '/resources/html/handson/list.html'            
        })
        .when('/user/profile', {
            templateUrl: context + '/resources/html/user/index.html'            
        })
        .when('/user/profile/edit', {
            templateUrl: context + '/resources/html/user/edit.html'            
        })
        .otherwise({
            redirectTo: '/404'
        });
});

//------------------------------------------------------------------------------
//angular controllers
angularLoginModule.controller('LoginController', ['$scope', function ($scope) {
    document.title = 'DSAT | Login';    
    $scope.logout = false;
}]);
angularAppModule.controller('logoutController', ['$scope', function ($scope) {
    $scope.logout = true;
}]);
angularAppModule.controller('takeExamController', ['$scope','$window','$location', function ($scope, $window, $location) {
    document.title = 'Logout';    
    $scope.$on('$locationChangeStart', function (event, next, current) {        
        if (current.match("\/exams/take")) {
            var c = confirm ('Are you sure you want to leave this page?\n');            
            if(c != true){
                event.preventDefault();
            }
        }
    });
}]);
angularAppModule.controller('dashboadController', ['$scope', '$http', function ($scope, $http) {
    
    document.title = 'DSAT | Dashboard';
    $scope.isLoading = true;  
    $scope.json = '';
    
    try{   
        
        $http.get("testController")
            .success(function (data) {                
                $scope.json = data;            
                createBarChart(            
                    'barChartExams', 
                    'num of exams', 
                    ['attemps', 'pass', 'fails'], 
                    $scope.json.dataBarChart, 
                    backgroundColor, 
                    borderColor, 
                    options);                      
                    
                createLineChart(            
                    'lineChartExams', 
                    'num of hands on', 
                    ["Jan 16", "Feb 16", "Mar 16", "Apr 16", "May 16", "Jun 16", "Jul 16" , "Ago 16", "Sep 16", "Oct 16", "Nov 16", "Dic 16"], 
                    [0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0], 
                    backgroundColor, 
                    borderColor, 
                    options);
                    
                createBarChart(            
                    'barChartHandsOn', 
                    'num of hands on', 
                    ['attemps', 'pass', 'fails'], 
                    [1, 1, 0], 
                    backgroundColor, 
                    borderColor, 
                    options);
                    
                createLineChart(            
                    'lineChartHandsOn', 
                    'num of hands on', 
                    ["Jan 16", "Feb 16", "Mar 16", "Apr 16", "May 16", "Jun 16", "Jul 16" , "Ago 16", "Sep 16", "Oct 16", "Nov 16", "Dic 16"], 
                    [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0], 
                    backgroundColor, 
                    borderColor, 
                    options);
                    
                    $scope.isLoading = false;
                    
                })
                .error(function (error) {
                    $scope.error = true;
                    $scope.httpError = error;                    
                });
        
    }catch (exception) {
        $scope.error = true;         
        console.log(exception);        
        $scope.isLoading = false;
    }
            
}]);
