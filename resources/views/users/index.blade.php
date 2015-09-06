@extends('users.app')

@section('content')
<div class="container" ng-app="app" ng-controller="UserController">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">Manage users</div>

				<div class="panel-body">
				<button type="button" class="btn btn-default pull-right" ng-click="addUser()">Add User</button>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>id</th>
								<th>Email</th>
								<th>name</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="user in users">
								<td>@{{user.id}}</td>
								<td>@{{user.email}}</td>
								<td>@{{user.name}}</td>
								<td>
								<button type="button" class="btn btn-default" ng-click="removeUser(user.id)">delete</button>   &nbsp&nbsp&nbsp
								<button type="button" class="btn btn-success" ng-click="editUser(user.id)">edit</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection

@section('scripts')
<script>
	
	window.users = {!!json_encode($users)!!};
	window.baseUrl = '{{URL::to("")}}';
	var app = angular.module('app', ['ui.bootstrap']);
	// app.service('toan', function(){
	// 	return {test: function(){}};
	// })
	app.controller('UserController', function($scope, $http, $modal){
		$scope.users = window.users;
		//$scope.name = 'toan';
		$scope.addUser = function(){
			  var modalInstance = $modal.open({
			      animation: $scope.animationsEnabled,
			      templateUrl: window.baseUrl+'/users/create',
			      controller: 'ModalCreateUserCtrl',
			      size: null,
			      resolve: {
			        // toan: function(){
			        // 	return $scope.name
			        //}
			      }
			    });

			    modalInstance.result.then(function (user) {

			    $scope.users.push(user);

			    }, function () {

			    });
		}

		$scope.editUser = function(id){
			 
				 	for(var i = 0; i< $scope.users.length; i++){
						if($scope.users[i].id == id){
							$scope.email = $scope.users[i].email;	
							$scope.name = $scope.users[i].name;							
						}
					}		
	    		
			  	var modalInstance = $modal.open({
			      animation: $scope.animationsEnabled,
			      templateUrl: window.baseUrl+'/users/'+id+'/edit',
			      controller: 'ModalEditUserCtrl',
			      size: null,
			      resolve: {
			        id: function(){
						 		return id;					
			        },
			        email: function(){
			        	for(var i = 0; i< $scope.users.length; i++){
							if($scope.users[i].id == id){
								return $scope.users[i].email;
								
							}
						}
						 							
			        },
			        name: function(){
						 	for(var i = 0; i< $scope.users.length; i++){
								if($scope.users[i].id == id){
									return $scope.users[i].name;							
								}
							}		
			        		}

			      }
			    });

			     modalInstance.result.then(function (user) {

			     	for(var i = 0; i< $scope.users.length; i++){
						if($scope.users[i].id == id){
							$scope.users[i].name = user.name;
							$scope.users[i].email = user.email;
							break;
						}
					}

			     }, function () {

			     });
		}

		$scope.removeUser = function(id){
			$http.delete(window.baseUrl+'/users/'+id).success(function(data){
				for(var i = 0; i< $scope.users.length; i++){
					if($scope.users[i].id == id){
						$scope.users.splice(i, 1);
						break;
					}
				}
			}).error(function(data, status, headers, config){
				console.log('error', data);
			})
		}
	})

	// Please note that $modalInstance represents a modal window (instance) dependency.
	// It is not the same as the $modal service used above.

	app.controller('ModalCreateUserCtrl', function ($scope, $modalInstance, $http) {
		
	  	$scope.submit = function () {

	  	$http.post(window.baseUrl+'/users', {user: $scope.user}).success(function(data, status, headers, config){
	  		console.log('data', data);
	  		$modalInstance.close(data);
	  	}).error(function(data, status, headers, config){
				console.log('error', data);
			})
	    // $modalInstance.close($scope.user);
	  };

	  $scope.cancel = function () {
	    $modalInstance.dismiss('cancel');
	  };
	});

	// Please note that $modalInstance represents a modal window (instance) dependency.
	// It is not the same as the $modal service used above.

	app.controller('ModalEditUserCtrl', function ($scope, $modalInstance, $http, id) {

	  $scope.submit = function () {
	  	$http.put(window.baseUrl+'/users/'+id, {user: $scope.user}).success(function(data, status, headers, config){
	  		console.log('data', data);
	  		$modalInstance.close(data);
	  	})
	    // $modalInstance.close($scope.user);
	  };

	  $scope.cancel = function () {
	    $modalInstance.dismiss('cancel');
	  };
	});
</script>
@endsection