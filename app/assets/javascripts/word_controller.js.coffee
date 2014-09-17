WordCtrls = angular.module("WordCtrls", [])

class WordsCtrl

  

  constructor: (@scope, @Word, @wordsArr) ->
    @wordsArr = []
    @test = "Hello World!"
    @Word.all().success (data) =>
      @wordsArr = data
      # console.log("this",this)
    # return this

  addWord: (newWord, @scope) -> 
    # alert "hi"

    @Word.create(newWord)
    .success (data) => 
      # console.log("words: " + data)
      # console.log("name: " + data.name, "desc: " + data.description)
      @wordsArr.push(data)
      newWord.name = ""
      newWord.description = ""

  testing: () -> 
    "hi"

WordCtrls.controller("WordsCtrl", ["$scope", "Word", WordsCtrl])