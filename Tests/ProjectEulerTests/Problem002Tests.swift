import Testing
@testable import ProjectEuler

@Suite("Problem 002")
struct Problem002Tests {
    var subject: Problem002 = .init()
    
    @Test("Known even Fibonacci sum below 89.")
    func test_knownValue() {
        let test = subject.sumEvenFibonacci(89)
        
        #expect(test == 44)
    }
    
    @Test("Test even Fibonacci sum below 4,000,000.")
    func test_testValue() {
        let test = subject.sumEvenFibonacci(4_000_000)
        
        #expect(test == 4613732)
    }
}
