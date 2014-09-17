WordRouter = angular.module("WordRouter", [
  "ngRoute"
])

class Router 

  constructor: (@routeProvider, @locationProvider) -> 
    console.log("Initialize router")
    console.log("Set up")
    @routeProvider.
      when "/",
        templateUrl: "/word_templates",
        controller: "WordsCtrl as words"

    @locationProvider.html5Mode(true)

WordRouter.config(["$routeProvider", "$locationProvider", Router])

WordRouter.config ["$httpProvider", ($httpProvider) -> 
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]