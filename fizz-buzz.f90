        program fizzbuzz
            integer :: i

            do i = 1, 100
            if (mod(i, 15) == 0) then; print '(a)', "FizzBuzz"
            else if (mod(i, 3) == 0) then; print '(a)', "Fizz"
            else if (mod(i, 5) == 0) then; print '(a)', "Buzz"
            else; print '(i0)', i
            end if
            end do
        end program
