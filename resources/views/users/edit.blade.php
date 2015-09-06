<div class="modal-header">
    <h3 class="modal-title">Edit User</h3>
</div>
<div class="modal-body">
   <form action="" method="POST" role="form">
     
       <div class="form-group">
           <label for="">Email</label>
           <input type="email" class="form-control" ng-model="user.email" id="" placeholder="Email">
       </div>
    
        <div class="form-group">
           <label for="">name</label>
           <input type="text" class="form-control" ng-model="user.name" id="" placeholder="name">
       </div>

   </form>
</div>
<div class="modal-footer">
    <button class="btn btn-primary" ng-click="submit()">Submit</button>
    <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>