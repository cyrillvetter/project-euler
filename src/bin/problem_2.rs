fn main() {
    let mut even_sum = 0;

    let mut curr = 0;
    let mut sec_prev = 0;
    let mut prev = 1;

    while curr <= 4_000_000 {
        curr = sec_prev + prev;
        sec_prev = prev;
        prev = curr;

        if curr % 2 == 0 {
            even_sum += curr;
        }
    }

    println!("{}", even_sum);
}
