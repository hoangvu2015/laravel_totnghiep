<!DOCTYPE html>
<html>
<head>
	<title>test 4.1</title>
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/angular/angular.min.js"></script>
	<script src="/bower_components/angular-resource/angular-resource.js"></script>
	<script src="/bower_components/angular-route/angular-route.js"></script>
	<script src="bower_components/angular-bootstrap/ui-bootstrap.min.js"></script>
	<script src="bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>
</head>
<body>
	<div ng app='app'>
	<h1>test 4.1</h1>
	<a href="test/ms">test ng-view</a>
	
		<div ng-view></div>
	
	</div>

	<script type="text/javascript">
	window.baseUrl = '{{ URL::to('') }}';
	var app = angular.module('app',['ngResource']);
	app.factory('TestResource',['$resource',function($resource){
		return('');
	}])
	app.controller('MessageCtrl',function($scope){
		$scope.name = 'World';
	});
	// app.controller('Anothertrl',function($scope){
	// 	$scope.name = 'Sky';
	// });

	</script>
</body>
</html>