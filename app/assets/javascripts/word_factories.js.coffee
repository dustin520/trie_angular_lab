WordFactories = angular.module("WordFactories", [])

WordFactories.factory("Word", ["$http", ($http) -> 
  return { 
    all: () -> 
      console.log("getting all")
      $http.get("/words.json").success (data) -> 
        console.log("data: " + data)
    ,
    create: (newWord) -> 
      console.log("new word: " + newWord)
      $http.post("/words.json", {word: newWord})
  }
])