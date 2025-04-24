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
        let three = sumOfMultiplesUsingAP(multiple: 3, max: max)
        let five = sumOfMultiplesUsingAP(multiple: 5, max: max)
        let fifteen = sumOfMultiplesUsingAP(multiple: 15, max: max)

        return (three + five) - fifteen
    }

    // Using Arithmetic Progression
    private func sumOfMultiplesUsingAP(multiple: Int, max: Int) -> Int {
        let numberOfMultiples = (max - 1) / multiple
        return multiple * numberOfMultiples * (numberOfMultiples + 1) / 2
    }
}
