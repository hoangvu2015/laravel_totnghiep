
var app = angular.module('myApp',[]);
app.controller('DemoCtrl', ['$scope',function($scope){
	// $scope.name = 'vohoangvu';
	// $scope.number = 10;
	//$scope.submit = function(){
		//$scope.submited = true;
	//	console.log($scope.name,' and ' ,$scope.number);
	//}
}]);
app.directive('validateRequired', function(){
	
	return {
		retrict:'A',
		require:'ngModel',
		transclude: true,
		scope:{
			sub : "=subm",
			ngMin : "="
		},

			link: function($scope, $element, $attrs, ngModel) {
				console.log('vv', $scope.ngMin);
				$element.on('blur', function(){
					
					sub = true;

					var isValid = (value.length >= $scope.ngLength);
			        ngModel.$setValidity($attrs.ngModel, isValid);
			        if(isValid){
			         $element.find('span').remove();
			        }else{
			         if($element.find('span').length == 0){
			          $element.append('<span class="control-label" ng-show="submitted &amp;&amp; formData.name.$invalid">length is not valid</span>');
			         }
			        }
					
				});
			    // $scope.$watch($attrs.ngModel, function(value) {
			    //     var isValid = (value.length >= $scope.ngLength);
			    //     ngModel.$setValidity($attrs.ngModel, isValid);
			    //     if(isValid){
			    //      $element.find('span').remove();
			    //     }else{
			    //      if($element.find('span').length == 0){
			    //       $element.append('<span class="control-label" ng-show="submitted &amp;&amp; formBranch.address.$error.required">length is not valid</span>');
			    //      }
			    //     }
			    // });
			 }
			
	};
});






// app.run(function($rootScope){
// 	$rootScope.name = 'vo hoang vu'
// });
// app.controller('myController',function($scope){
// 	$scope.person = {
// 		name: "Hoang Vu",
// 	}
// 	var updateClock = function(){
// 		$scope.clock = new Date();
// 	};
// 	var timer = setInterval(function(){
// 		$scope.$apply(updateClock);
// 	}, 1000);
// 	updateClock();
// });
// app.controller('ParentController',function($scope){
// 	$scope.person = { greeted: false };
// });
// app.controller('ChildController',function($scope){
// 	$scope.sayHello = function(){
// 		$scope.person.greeted = true;
// 	}
// });
// app.controller('DemoController', function($scope){
// 	$scope.counter = 0;
// 	$scope.add = function(amount){
// 		$scope.counter += amount;
// 	};
// 	$scope.subtract = function(amount){
// 		$scope.counter -= amount;
// 	};
// });
// app.controller('PlayerController',function($scope){
// 	$scope.playing = false;
// 	$scope.audio = document.createElement('audio');
// 	$scope.audio.src = '/media/npr.mp4';

// 	$scope.play = function(){
// 		if($scope.playing) 
// 			$scope.audio.pause();
// 		$scope.audio.play();
// 		$scope.playing = true;
// 	}
// 	$scope.stop = function(){
// 		$scope.audio.pause();
// 		$scope.playing = false;
// 	}
// 	$scope.audio.addEventListener('ended', function(){
// 		$scope.$apply(function() {
// 			$scope.stop();
// 		})
// 	});
// });
// app.controller('RelateController',function($scope){

// });