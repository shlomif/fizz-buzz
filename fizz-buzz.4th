\ =head1 ABOUT
\
\ The FizzBuzz program. See:
\
\ =over 4
\
\ =back
\
\ =head1 COPYRIGHT & LICENSE
\
\ Copyright 2018 by GeDaMo
\
\ This program is distributed under the MIT / Expat License:
\ L<http://www.opensource.org/licenses/mit-license.php>
\
\ Permission is hereby granted, free of charge, to any person
\ obtaining a copy of this software and associated documentation
\ files (the "Software"), to deal in the Software without
\ restriction, including without limitation the rights to use,
\ copy, modify, merge, publish, distribute, sublicense, and/or sell
\ copies of the Software, and to permit persons to whom the
\ Software is furnished to do so, subject to the following
\ conditions:
\
\ The above copyright notice and this permission notice shall be
\ included in all copies or substantial portions of the Software.
\
\ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
\ EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
\ OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
\ NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
\ HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
\ WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
\ FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
\ OTHER DEALINGS IN THE SOFTWARE.
\
\ =cut
\ FizzBuzz

: .nospace  ( n -- )  s>d <# #s #> type ;
: divisible?  ( a u n1 n2 -- flag )
  mod 0= if type true else 2drop false then ;
: Fizz?  ( n -- flag )  s" Fizz" rot 3 divisible? ;
: Buzz?  ( n -- flag )  s" Buzz" rot 5 divisible? ;
: Fizz?Buzz?  ( n -- )
  dup Fizz? over Buzz? or if drop else .nospace then ;

: FizzBuzz  101 1 do i Fizz?Buzz? cr loop ;

FizzBuzz
