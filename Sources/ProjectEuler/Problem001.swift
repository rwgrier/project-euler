/// Project Euler [Problem 1](https://projecteuler.net/problem=1)
/// > If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
/// > The sum of these multiples is 23.
/// >
/// > Find the sum of all the multiples of 3 or 5 below 1000.
struct Problem001 {

    func sum(of multiples: [Int], max: Int) -> Int {
        var sum: Int = 0

        for count in 1..<max {
            for multiple in multiples {
                guard count % multiple == 0 else { continue }
                sum += count
                break
            }
        }

         return sum
    }
}
