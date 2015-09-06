

app.service('UserService',['UserResource','$q',function(UserResource,$q){

//add
		this.addUser = function(user){
			var defer = $q.defer();
			var tmp = new UserResource(user);
			console.log('tmp',tmp);
			tmp.$save({method:'create-user'},function success(user){
				defer.resolve(user);
			},function error(reponse){
				defer.resolve(reponse.user);
			})
			return defer.promise;
		}
//edit
		
		this.editUser = function(id,user){

			var defer = $q.defer();
			var tmp = new UserResource(user);

			tmp.$update({id:id},function success(user){
				//console.log(tmp);
				defer.resolve(user);
			},function error(reponse){

				defer.resolve(reponse.user);
			})
			return defer.promise;
		}
//delete
		this.deleteUser = function(id){
			var defer = $q.defer();
			var tmp = new UserResource(id);
			tmp.$delete({id:id},function success(user){
				defer.resolve(user);
			},function error(reponse){
				defer.resolve(reponse.id);
			})
			
			return defer.promise;
		}

	}])
