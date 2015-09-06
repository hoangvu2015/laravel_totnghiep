<div ng-controller="MainCtrl as main">
  Choose:
  <a href="Book/Moby">Moby</a> |
  <a href="Book/Moby/ch/1">Moby: Ch1</a> |
  <a href="Book/Gatsby">Gatsby</a> |
  <a href="Book/Gatsby/ch/4?key=value">Gatsby: Ch4</a> |
  <a href="Book/Scarlet">Scarlet Letter</a><br/>

  <div class="view-animate-container">
    <div ng-view class="view-animate"></div>
  </div>
  <hr />

  <pre>$location.path() = @{{main.$location.path()}}</pre>
  <pre>$route.current.templateUrl = @{{main.$route.current.templateUrl}}</pre>
  <pre>$route.current.params = @{{main.$route.current.params}}</pre>
  <pre>$routeParams = @{{main.$routeParams}}</pre>
</div>