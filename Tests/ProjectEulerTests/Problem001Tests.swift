import Testing
@testable import ProjectEuler

@Suite("Problem 001")
struct Problem001Tests {
    var subject: Problem001 = .init()
    
    @Test("Known sum of all the multiples of 3 or 5 below 10.")
    func test_knownValue() {
        let test = subject.sum(of: [3, 5], max: 10)
        
        #expect(test == 23)
    }
    
    @Test("Test sum of all the multiples of 3 or 5 below 1000.")
    func test_testValue() {
        let test = subject.sum(of: [3, 5], max: 1000)
        
        #expect(test == 233168)
    }
}
