<!DOCTYPE html>
<html ng-app="app">
<head>
	<title>test 4</title>
	<script type="text/javascript" src="/js/angular.min.js"></script>
</head>
<body>
	<div ng-controller="ExCtrl">
		<input type="text" ng-model="name">
		<div ng-include src="teamplate_name"></div>
	</div>
	
	<script type="text/javascript">
	var app = angular.module('app',[]);
	app.controller('ExCtrl',function($scope){
		$scope.teamplate_name = '{{ URL::to('') }}'+'/teamplate';
		$scope.name = 'World';
	});
	</script>
</body>
</html>
