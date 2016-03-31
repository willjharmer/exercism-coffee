class Anagram
  constructor: (str) ->
    @str = str.toLowerCase()

  match: (str_list) ->
    matches = (a_str.toLowerCase() for a_str in str_list when @_notSameString(a_str) and @_sameSortedArray(a_str))
    return matches

  _notSameString: (testcase) ->
    testcase = testcase.toLowerCase()
    @str != testcase 

  _sameSortedArray: (testcase) ->
    testcase = testcase.toLowerCase()
    @str.length == testcase.length and @str.split('').sort().every (elem, i) -> elem is testcase.split('').sort()[i]

module.exports = Anagram
