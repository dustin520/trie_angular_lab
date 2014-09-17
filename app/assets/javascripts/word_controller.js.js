// Generated by CoffeeScript 1.8.0
var WordCtrls, WordsCtrl;

WordCtrls = angular.module("WordCtrls", []);

WordsCtrl = (function() {
  function WordsCtrl(scope, Word, wordsArr) {
    this.scope = scope;
    this.Word = Word;
    this.wordsArr = wordsArr;
    this.wordsArr = [];
    this.test = "Hello World!";
    this.Word.all().success((function(_this) {
      return function(data) {
        return _this.wordsArr = data;
      };
    })(this));
  }

  WordsCtrl.prototype.addWord = function(newWord, scope) {
    this.scope = scope;
    return this.Word.create(newWord).success((function(_this) {
      return function(data) {
        _this.wordsArr.push(data);
        newWord.name = "";
        return newWord.description = "";
      };
    })(this));
  };

  WordsCtrl.prototype.testing = function() {
    return "hi";
  };

  return WordsCtrl;

})();

WordCtrls.controller("WordsCtrl", ["$scope", "Word", WordsCtrl]);
