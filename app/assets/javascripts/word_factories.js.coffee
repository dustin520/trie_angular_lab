WordFactories = angular.module("WordFactories", [])

WordFactories.factory("Word", ["$http", ($http) -> 
  return { 
    all: () -> 
      # console.log("getting all")
      $http.get("/words.json").success (data) -> 
        console.log("data: " + data)
    ,
    create: (newWord) -> 
      console.log("new word: " + newWord + "name" + newWord.name)
      $http.post("/words.json", {name: newWord.name, description: newWord.description})
      

  }
])


# # Del's Method

# class Word

#   constructor: (@http) -> 

#   all: ()->
#     @http.get("/words.json")

#   create: (newWord) ->
#     @http.post("/words.json", {word: newWord})

# WordFactories.factory("Word", ["$http", Word])