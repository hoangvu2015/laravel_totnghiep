<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
</head>
<body>
	<div ng-app="myApp">
	<div ng-controller="DemoCtrl">
		<form name="formData">
		<div>
			<input name="name" value="" type="text" ng-model="name" placeholder="Enter your name" rowboat-min-length ng-min="5">
		</div>
		
		</form>
	</div>

	</div>
<script type="text/javascript"src="{{ asset('/bower_components/angular/angular.min.js') }}"></script>
<script type="text/javascript">
	var app = angular.module('myApp',[]);
app.controller('DemoCtrl', ['$scope',function($scope){
	
}]);
app.directive('rowboatMinLength', function($compile){
	
	return {
		retrict:'A',
		require:'ngModel',
		scope:{
			ngMin : "="
		},

			link: function($scope, $element, $attrs, ngModel) {
				console.log('vv', $scope.ngMin);
				$element.on('blur', function(){

					var value = $element.val();
					sub = true;
					var isValid = (value.length >= $scope.ngMin);
			        ngModel.$setValidity($attrs.ngModel, isValid);
			        if(isValid){
			        	console.log('zz');
			         	$element.parent().find('span').remove();
			        }else{
			         if($element.parent().find('span').length == 0){

			         	console.log('yyy');
			         	var rowStr = '<span class="control-label">length is not valid</span>';

			            $compile(rowStr)($scope, function(cloned, scope) {
			                $element.parent().append(cloned);
			            });
						
			         }
			        }
				});
			    
			 }
			
	};
});
</script>
</body>
</html>