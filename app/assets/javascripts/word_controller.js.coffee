WordCtrls = angular.module("WordCtrls", [])

class WordsCtrl

  constructor: (@scope, @Word) ->
    @test = "Hello World!"
    @Word.all()
    return this

  addWord: (newWord) -> 
    @Word.create(newWord)
    .success(data) -> 
      console.log(data)

  testing: () -> 
    "hi"

WordCtrls.controller("WordsCtrl", ["$scope", "Word", WordsCtrl])