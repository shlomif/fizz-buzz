import strformat

for i in countup(1, 100):
    let div3 = (i mod 3 == 0)
    let div5 = (i mod 5 == 0)
    echo(if div3: (if div5: "FizzBuzz" else: "Fizz") else: (if div5: "Buzz" else: fmt"{i}"))
