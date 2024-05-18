import Livre
import XCTest

final class CollectionNonStandardTests: XCTestCase {
  func test_first2() {
    XCTAssertTrue(first2([]) == nil)
    XCTAssertTrue(first2([1]) == nil)
    XCTAssertTrue(first2([1, 2])! == (1, 2))
    XCTAssertTrue(first2([1, 2, 3])! == (1, 2))
    XCTAssertTrue(first2([2, 3, 1, 4])! == (2, 3))
  }

  func test_first3() {
    XCTAssertTrue(first3([]) == nil)
    XCTAssertTrue(first3([1]) == nil)
    XCTAssertTrue(first3([1, 2]) == nil)
    XCTAssertTrue(first3([1, 2, 3])! == (1, 2, 3))
    XCTAssertTrue(first3([2, 3, 1, 4])! == (2, 3, 1))
  }
}
