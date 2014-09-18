var projects = angular.module("projects",["ngRoute","ngCookies"]);

projects.config(function($routeProvider){
	$routeProvider
	.when("/",{
		templateUrl:"partials/login.html",
		controller:"LoginController"
	})
	.when("/home",{
		templateUrl:"partials/home.html",
		controller:"HomeController"
	})
	.when("/add_project",{
		templateUrl:"partials/add_project.html",
		controller:"AddProjectController"
	})
	.otherwise({ redirectTo:"/" });
});