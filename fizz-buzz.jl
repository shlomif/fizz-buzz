#=
    fizz-buzz
    Copyright © 2019 Shlomi Fish <shlomif@cpan.org>

    Distributed under terms of the MIT license.
=#


for n in 1:100
    m3 = n % 3 == 0
    m5 = n % 5 == 0
    if m3
        if m5
            println("FizzBuzz")
        else
            println("Fizz")
        end
    else
        if m5
            println("Buzz")
        else
            println(n)
        end
    end
end
