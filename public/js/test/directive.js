var app = angular.module('app',[]);
console.log(baseUrl);
app.controller('Ctr',function($scope){
	console.log(window.baseUrl);
	$scope.user1 = {'name':'hoang vu', 'pass':'123456'};
	$scope.user2 = {'name':'minh than', 'pass':'67890'};
});
app.directive('mydirective',function(){
	return {
		restrict:'E',
		templateUrl: window.baseUrl+'/js/test/view/module/directive.html',
		scope:{
			dataScope: "=info",
		}
	}
	
});