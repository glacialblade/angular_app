projects.controller("LoginController",function($scope,$window,$cookieStore,UserFactory,RedirectService){
	$scope.$on("$routeChangeSuccess",function(){
		$scope.user = {};
	});

	$scope.login = function(){
		if($scope.login_form.$valid){
			var promise = UserFactory.login($scope.user);
			promise.then(function(data){
				$cookieStore.put("user",data.data);
				$window.location.href = "#/home"
			}).then(null,function(){
				$scope.error_message = "Invalid username or password.";
			})
		}
		else{
			$scope.error_message = "Please answer all the fields.";
		}
	}
});