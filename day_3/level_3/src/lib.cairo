use debug::PrintTrait;

// function to calculate and return the result of base^exponent
fn calculate_power(base: u32, exponent: u32) -> u32
{
    if exponent == 0 {
        return 1;
    }
    if exponent == 1 {
        return base;
    }
    base * calculate_power(base, exponent - 1)
}

// Function that prints all odd numbers from 1 to n.
fn print_odd_numbers(n: u32)
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
        i += 1;
    };
}
// main function callsother functions
fn main() {
    'calculate base^exponent'.print();
    calculate_power(5, 5).print();
    '\nprint odd numbers'.print();
    print_odd_numbers(20);
}