/*

=head1 ABOUT

The FizzBuzz program. See:

=over 4

=item * L<https://github.com/shlomif/Freenode-programming-channel-FAQ/blob/master/FAQ.mdwn#what-is-fizzbuzz>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2017 by Shlomi Fish

This program is distributed under the MIT / Expat License:
L<http://www.opensource.org/licenses/mit-license.php>

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

=cut

*/

public class FizzBuzz {
    public static void main() {
        for (int i = 1 ; i <= 100; ++i)
        {
            bool div3 = (i % 3 == 0);
            bool div5 = (i % 5 == 0);
            if (div3 || div5)
            {
                stdout.puts((div3 && div5) ? "FizzBuzz" :
                        div3 ? "Fizz" :
                        "Buzz");
            }
            else
            {
                stdout.printf("%d", i);
            }
            stdout.puts("\n");
        }
    }
}
