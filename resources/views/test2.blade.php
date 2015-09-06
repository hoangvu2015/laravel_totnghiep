<!DOCTYPE html>
<html>
<head>
	<title>test 2</title>
	<script type="text/javascript" src="/js/angular.min.js"></script>
</head>
<body>
	<div ng-app ng-controller="ExampleCtrl">
		<table border="1px" cellspacing="0">
			<thead>
				<th>id</th>
				<th>name</th>
				<th>amount</th>
				<th>tool</th>
			</thead>
			<tbody>
				<tr ng-repeat="iteam in list">
					<td>@{{ iteam.id }}</td>
					<td>@{{ iteam.name }}</td>
					
						<td>
						<input type="text" ng-model="iteam.amount">
						
						</td>
					
					<td>
						<button ng-click="edit(iteam)">edit</button>
						<button ng-click="delete(iteam)">delete</button>
					</td>
				</tr>
			</tbody>
		</table>

		<div ng-controller="Ctrl">
			<input type="text" ng-model="amount"><br/>
			<b>default currency symbol ($):</b>
			<span>@{{amount | currency}}</span>
	        <b>custom currency identifier (USD$):</b>
	        <span>@{{amount | currency:"USD$"}}</span>
		</div>
		 <!-- Show the list data as Json, To debug -->
        <pre>@{{ list | json }}</pre>
	</div>

	<script type="text/javascript">
	ExampleCtrl = function($scope,$http){

		$http.get("/get.json").success(function(data){
			$scope.list = data;
		});

		$scope.edit = function(iteam){
			var notice = "Iteam #"+iteam.id+" has been edited with amount "+iteam.amount;
			$http.put("/test", iteam).success(function(data){
				alert(notice);
			});
		}

		$scope.delete = function($iteam){
			var notice = "Iteam #"+iteam.id+" has been delete";
			//remove
			$scope.list.slice($scope.list.indexOf(iteam), 1);
			//delete at /delete/:id
			$http.delete('/delete/'+iteam.id).success(function(data){
				alert(notice);
			});
		}
	}

	Ctrl = function($scope){
		$scope.amount = 1234.56;
	}
	</script>
</body>
</html>