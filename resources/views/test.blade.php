<!DOCTYPE html>
<html ng-app>
<head>
    <title>Hello World</title>
    <script src="/js/angular.min.js"></script>
   
</head>
<body>
    <div ng-controller="ExampleCtrl">
    	<table border="1px" cellspacing="0">
    		<thead>
    			<th>id</th>
    			<th>name</th>
    			<th>Amount</th>
    		</thead>
    		<tbody>
    			<tr ng-repeat="iteam in iteams">
    				<td>@{{ iteam.id }}</td>
    				<td>@{{ iteam.name }}</td>
    				<td>@{{ iteam.amount }}</td>
    			</tr>
    		</tbody>
    	</table>
    </div>
    <script type="text/javascript">
    ExampleCtrl = function($scope){
    	$scope.iteams = [
    		{id: 1, name: 'iphone 5', amount: 10},
    		{id: 2, name: 'iphone 4', amount: 12},
    		{id: 3, name: 'iphone 3s', amount: 19},
    	];
    }
    </script>
</body>
</html>