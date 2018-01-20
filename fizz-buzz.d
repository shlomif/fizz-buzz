import std.conv;
import std.stdio;

void main() {
    foreach (i ; 1..100) {
        auto div3 = (i % 3 == 0);
        auto div5 = (i % 5 == 0);

        writeln(div3? "Fizz" : "",
                div5? "Buzz" : "",
                !div3 && !div5 ? i.to!string : "");
    }
}
