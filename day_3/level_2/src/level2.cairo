use core::debug::PrintTrait;
// The function to print all odd multiples of m less than or equal to n
fn print_odd_multiples(n: u32, m: u32)
{
    let mut i : usize = 0;
    loop
    {
        if i <= n {
            if i % 2 != 0 {
                i.print();
            }
        }
        else {
            break;
        }
        i += m;
    };
}

// Function to check whether a number is prime
fn is_prime(n : usize) -> bool {
    let mut prime : bool = true;
    if n <= 1 {
        return false;
    }
    if n == 2 || n == 3 {
        return true;
    }
    if n % 2 == 0 || n % 3 == 0 {
        return false;
    }

    let mut i : usize = 5;

    loop {
        if i * i > n {
            break;
        }
        if n % i == 0 || (n % (i + 2)) == 0 {
            prime = false;
            break;
        }
        i += 6;
    };
    prime
}

// main function starts the programs
fn main() {
    'odd multiples are: '.print();
    print_odd_multiples(100, 7);
    '\nchecking prime number'.print();
    is_prime(11).print();
}