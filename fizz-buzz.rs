/*
 * Copyright (c) 2017 Yuki Ono
 * Licensed under the MIT License.
 *
 * Taken from https://gist.github.com/ykon/d00c3431817a8c687a3df82652db10cf
 * thanks!
 */

fn common_fizzbuzz() {
    let mut i = 1;
    while i <= 100 {
        if i % 15 == 0 {
            println!("FizzBuzz");
        } else if i % 3 == 0 {
            println!("Fizz");
        } else if i % 5 == 0 {
            println!("Buzz");
        } else {
            println!("{}", i);
        }

        i = i + 1;
    }
}

enum FizzBuzzType {
    FizzBuzz(i32),
    Fizz(i32),
    Buzz(i32),
    Number(i32),
}

fn to_fizzbuzz(n: i32) -> FizzBuzzType {
    match n {
        n if n % 15 == 0 => FizzBuzzType::FizzBuzz(n),
        n if n % 3 == 0 => FizzBuzzType::Fizz(n),
        n if n % 5 == 0 => FizzBuzzType::Buzz(n),
        n => FizzBuzzType::Number(n),
    }
}

fn to_fizzbuzz_t(n: i32) -> FizzBuzzType {
    match (n % 3, n % 5) {
        (0, 0) => FizzBuzzType::FizzBuzz(n),
        (0, _) => FizzBuzzType::Fizz(n),
        (_, 0) => FizzBuzzType::Buzz(n),
        _ => FizzBuzzType::Number(n),
    }
}

fn to_str(fb: FizzBuzzType) -> String {
    match fb {
        FizzBuzzType::FizzBuzz(_) => "FizzBuzz".to_string(),
        FizzBuzzType::Fizz(_) => "Fizz".to_string(),
        FizzBuzzType::Buzz(_) => "Buzz".to_string(),
        FizzBuzzType::Number(n) => n.to_string(),
    }
}

fn func_fizzbuzz() {
    println!("func_fizzbuzz");
    (1..101).map(to_fizzbuzz).map(to_str).for_each(|s| println!("{}", s));
    //(1..101).map(|n| to_str(to_fizzbuzz(n))).for_each(|s| println!("{}", s));
}

fn iter_fizzbuzz() {
    println!("iter_fizzbuzz");
    (1..).map(to_fizzbuzz).take(100).map(to_str).for_each(|s| println!("{}", s));
    //(1..).map(to_fizzbuzz).map(to_str).take(100).for_each(|s| println!("{}", s));
}

fn main() {
    common_fizzbuzz();
    //func_fizzbuzz();
    //iter_fizzbuzz();
    //println!("Hello, world!");
}
