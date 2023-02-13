fn main() {
    let res: u32 = (1..1000)
        .into_iter()
        .filter(|num| num % 3 == 0 || num % 5 == 0)
        .sum();

    println!("Expected: {}, Actual: {}", 233168, res);
}
