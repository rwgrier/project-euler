final class FibonacciGenerator {
    private var memoized: [Int: Int] = [:]
    
    func fibonacci(at index: Int) -> Int {
        if let fibonacci = memoized[index] {
            return fibonacci
        }
        
        guard index >= 2 else {
            memoized[index] = index
            return index
        }
        
        let fibonacci = fibonacci(at: index - 1) + fibonacci(at: index - 2)
        memoized[index] = fibonacci
        return fibonacci
    }
}
