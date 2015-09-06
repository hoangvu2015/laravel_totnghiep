<div class="modal-header">
    <h3 class="modal-title">@{{ title }}</h3>
</div>
<div class="modal-body">
   <form action="" method="POST" role="form" ng-init="user={{$user}}">
     
   
       <div class="form-group">
           <label for="">Email</label>
           <input type="email" class="form-control" ng-model="user.email" id="" placeholder="Email">
       </div>
    
        <div class="form-group">
           <label for="">name</label>
           <input type="text" class="form-control" ng-model="user.name" id="" placeholder="name">
       </div>

       <div class="form-group">
           <label ng-hide="@{{ hide_password }}" for="">Password</label>
           <input ng-hide="@{{ hide_password }}" type="password" class="form-control" ng-model="user.password" id="" placeholder="Password">
       </div>

       <div class="form-group">
           <label for="">Users</label>
           <select ng-model="myUser" ng-options="user.id as user.name for user in users">
              <option value="">--option--</option>
           </select>
       </div>
   
      
   </form>
</div>
<div class="modal-footer">
    <button class="btn btn-primary" ng-click="submit(user.id)">Submit</button>
    <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>