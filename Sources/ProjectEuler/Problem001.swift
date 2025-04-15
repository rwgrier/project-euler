/// Project Euler [Problem 1](https://projecteuler.net/problem=1)
/// > If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
/// > The sum of these multiples is 23.
/// >
/// > Find the sum of all the multiples of 3 or 5 below 1000.
struct Problem001 {

    /// Returns the sum of all multiples of 3 or 5 below `max`
    /// - Parameter max: The max natural number to determine the sum for.
    /// - Returns: The sum of all the multiples of 3 or 5 below `max`. 
    func sumOfMultiples3And5(max: Int) -> Int {
        (1..<max)
            .filter { $0 % 3 == 0 || $0 % 5 == 0 }
            .reduce(0, +)
    }
}
