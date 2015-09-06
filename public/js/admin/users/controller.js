

window.app = angular.module('app', ['ui.bootstrap','ngResource']);
	app.controller('UserCtrl',['$scope','$modal' ,'UserService',function($scope,$modal,UserService){
		$scope.users = window.users;
		//console.log(users);

		$scope.removeUser = function(id){
			//alert(id);
			UserService.deleteUser(id).then(function(status){
				
				for(var i = 0; i< $scope.users.length; i++){
					if($scope.users[i].id == id){
						//alert(id);
						$scope.users.splice(i, 1);
						break;
					}
				}

				console.log('status', status);
			});
			

		}

		$scope.ModalCreateUser = function(id){
			var  templateUrl = '/users/create';
			if(typeof id != 'undefined'){
				var id = id;				
				var  templateUrl = '/users/' + id + '/edit';
			}else {	
				var id = null;	
			}
			var modalInstance = $modal.open ({
		      animation: $scope.animationsEnabled,
		      templateUrl: templateUrl,
		      controller: 'ModalCreateUserCtrl',
		      size: null,
		      resolve: {
					id: function(){
						 		return id;					
			        },
		      }
		    });
		  	
		  	
				modalInstance.result.then(function (user) {
					
			    	if(user.status_edit == 1){
			    		console.log(user.status_edit);
			    		console.log('user_edit', user);
			    		for(var i = 0; i< $scope.users.length; i++){
							if($scope.users[i].id == id){
								$scope.users[i].email = user.email;
								$scope.users[i].name = user.name ;							
							}
						}	
			    	}else if(user.status_edit == 0){
			    		console.log('hacker action');
			    	}else{
			    		console.log(user.status_edit);
			    		console.log('user_create', user);
			    		$scope.users.push(user);
			    	}

			    }, function () {

			    });
			}
	}]);

	app.controller('ModalCreateUserCtrl',['$scope','UserService','$modalInstance','id',function($scope,UserService,$modalInstance, id){

		if (id == null){
			$scope.users = window.users; 
			$scope.hide_password = 'false';
			$scope.title = 'Create User';
		}else{
			$scope.title = 'Edit User';
			$scope.hide_password = 'true';
		}

		$scope.submit = function(id){
			//console.log($scope.user);		
			if(typeof id != 'undefined'){
				UserService.editUser(id,{user: $scope.user}).then(function(user){
					console.log('data',user);
					$modalInstance.close(user);
				});
				//alert('edit');
				
			}else{
				
				UserService.addUser($scope.user).then(function(user){
					console.log('data',user);
					$modalInstance.close(user);
				});
				// alert('create');
			}
		}
		$scope.cancel = function () {
	    	$modalInstance.dismiss('cancel');
	  };
	}]);