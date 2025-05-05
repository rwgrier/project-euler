import Foundation

struct FibonacciGenerator {
    private let sqrt_5: Double
    private let phi: Double

    init() {
        sqrt_5 = sqrt(Double(5))
        phi = ((1 + sqrt_5) / 2)
    }

    func fibonacci(at index: Int) -> Int {
        guard index >= 2 else {
            return index
        }

        let doubleIndex = Double(index)

        // x(n) = (Phi^n - (-Phi)^-n) / √5
        let numerator = pow(phi, doubleIndex) - pow((-1.0 * phi), (-1.0 * doubleIndex))
        return Int(numerator / sqrt_5)
    }
}
