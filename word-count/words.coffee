String::depunctuate = -> @replace /\W+/g, " "
String::strip = -> if String::trim? then @trim() else @replace /^\s+|\s+$/g, ""

class Words
  @clean_words: (words_s) ->
    return  words_s.depunctuate().strip().toLowerCase().split(" ")

  count: ->
    @words_l.reduce  (counts, word) ->
      if counts[word] then counts[word]++ else counts[word] = 1
      counts
    , {}

  constructor: (words_s) ->
    @words_l = Words.clean_words(words_s)

module.exports = Words
