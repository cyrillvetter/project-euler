fn main() {
    // TODO: Replace "Sieve of Eratosthenes" with another method to avoid creating a large sieve.

    let mut number = 600851475143;
    let n = f64::sqrt(number as f64) as usize + 1;
    let mut sieve = vec![true; n + 1];

    sieve[0] = false;
    sieve[1] = false;

    for i in 2..(n + 1) {
        if sieve[i] {
            loop {
                if number % i != 0 {
                    break;
                }

                number /= i;
                if number == 1 {
                    println!("Expected: {}, Actual: {}", 6857, i);
                    return;
                }
            }

            for j in (2 * i..=n).step_by(i) {
                sieve[j] = false;
            }
        }
    }
}
