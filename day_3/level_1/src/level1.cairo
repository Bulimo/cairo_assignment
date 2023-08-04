use debug::PrintTrait;

// function to alculate and return the sum of all numbers from 1 to n that are multiples of m.
fn sum_multiples(n: u32, m: u32)
{
    let mut sum : usize = 0;
    let mut i : usize = 1;
    'sum of multiples are: '.print();
    loop
    {
        if i <= n {
            if i % m == 0 {
                sum += i;
            }
        }
        else {
            break;
        }
        i += 1;
    };
    sum.print();
}

// Function to check whether a number is prime
fn is_prime(n : usize) -> usize {
    let mut prime : usize = 1;
    if n <= 1 {
        return 0;
    }
    if n == 2 || n == 3 {
        return 1;
    }
    if n % 2 == 0 || n % 3 == 0 {
        return 0;
    }

    let mut i : usize = 5;

    loop {
        if i * i > n {
            break;
        }
        if n % i == 0 || (n % (i + 2)) == 0 {
            prime = 0;
            break;
        }
        i += 6;
    };
    prime
}

// function that prints all prime numbers less than or equal to n
fn find_primes(n : usize) {
    'prime numbers less than'.print();
    n.print();
    'are: \n'.print();
    let mut i : usize = 1;
    loop {
        if i > n {
            break;
        }
        if is_prime(i) == 1 {
            i.print();
        }
        i += 1;
    };
}

// main function start the programs
fn main() {
    sum_multiples(9, 10);
    '\n'.print();
    find_primes(20);
}