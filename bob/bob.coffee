String::endsWith   ?= (s) -> s is '' or @[-s.length..] is s
String::isUppercase   = -> (/^[^a-z]*$/).test(@)
String::hasWords       = -> (/[A-Z]/).test(@)
String::isSilence       = -> (/^\s*$/).test(@)

class Bob
  hey: (cmd) ->
    switch
      when cmd.isSilence() then return 'Fine. Be that way!'
      when cmd.hasWords() and cmd.isUppercase() then return 'Whoa, chill out!'
      when cmd.endsWith('?') then return 'Sure.'
      else return 'Whatever.'

module.exports = Bob
