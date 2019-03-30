OPTION BASE 0
FOR i%=1 TO 100
    div3 = (i% mod 3 = 0)
    div5 = (i% mod 5 = 0)
    if div3 then goto 30
    if div5 then goto 50
    print mid$(str$(i%), 2)
    goto 100
    30 if div5 then goto 80
    print "Fizz"
    goto 100
    50 print "Buzz"
    goto 100
    80 print "FizzBuzz"
    goto 100
100 next
