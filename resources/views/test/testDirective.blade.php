<!DOCTYPE html>
<html>
<head>
	<title>test-directive</title>
</head>
<body ng-app="app">
	<div ng-controller="Ctr">
		<h1>directive</h1>
		<mydirective info="user1"></mydirective>
		<mydirective info="user2"></mydirective>
		<input type="email" name="email" ng-model="user.email" email-format-validator required />
		
		{{-- @{{ dataUser }} --}}
	</div>
	<script type="text/javascript">
		window.baseUrl = '{{ URL::to('') }}';

	</script>
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/angular/angular.min.js"></script>
	<script type="text/javascript" src="{{ asset('/js/test/directive.js') }}"></script>
</body>
</html>