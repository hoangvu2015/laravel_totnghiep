

app.factory('UserResource',['$resource',function($resource){
		return $resource('/users/:method/:id',{'method':'@method','id':'@id'},
		{
			update: { method: 'put' }
		})
	}])