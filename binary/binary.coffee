class Binary
  constructor: (@binstr) ->

  toDecimal: ->
    # return 0 if string contains other than 0 and 1
    return 0 if not /^[0-1]+$/g.test @binstr

    # split string in Array
    binlist = @binstr.split("")
    # calculate decimal equivalents ['0','1','1','0'] -> [0,2,4,0]
    decimal_equivs =(d*2**i for d, i in binlist.reverse())
    # sum the list up for total decimal and return
    return decimal_equivs.reduce (a, b) -> a + b

module.exports  = Binary
