WordCtrls = angular.module("WordCtrls", [])

class WordsCtrl

  constructor: (@scope, @Word) ->
    @test = "Hello World!"
    @Word.all()
    return this

  # testing: () -> 
  #   "hi"

WordCtrls.controller("WordsCtrl", ["$scope", WordsCtrl])