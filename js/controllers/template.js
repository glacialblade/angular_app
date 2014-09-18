projects.controller("TemplateController",function($scope,$window,$cookieStore,UserFactory){
	$scope.$on("$routeChangeSuccess",function(){
		$scope.user = $cookieStore.get("user");
	});

	$scope.logout = function(){
		var promise = UserFactory.logout();
		promise.then(function(data){
			$cookieStore.put("user","");
			$window.location.href = "#/";
		})
	}
});