<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">Manage users</div>

				<div class="panel-body">
				<button type="button" class="btn btn-default pull-right" ng-click="ModalCreateUser()">Add User</button>
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