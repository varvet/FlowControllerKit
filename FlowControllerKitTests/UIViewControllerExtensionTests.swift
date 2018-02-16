import XCTest
@testable import FlowControllerKit

class UIViewControllerExtensionTests: XCTestCase {

    var vc1: UIViewControllerMock!
    var vc2: UIViewController!

    override func setUp() {
        super.setUp()

        vc1 = UIViewControllerMock()
        vc2 = UIViewController()
    }

    // MARK: Showing

    func testShowing_ShouldPushViewController() {
        vc1.showing(vc2)(())

        XCTAssertEqual(vc2, vc1.didPushedViewController)
    }

    func testShowing_Value_ShouldRunPreparationClosureWithValue() {
        var number: Int?

        vc1.showing(vc2) { number = $0  }(2)

        XCTAssertEqual(2, number)
    }

    // MARK: Presenting

    func testPresenting_ShouldPushViewController() {
        vc1.presenting(vc2)(())

        XCTAssertEqual(vc2, vc1.didPresentedViewController)
    }

    func testPresenting_Value_ShouldRunPreparationClosureWithValue() {
        var number: Int?

        vc1.presenting(vc2) { number = $0  }(2)

        XCTAssertEqual(2, number)
    }

    // MARK: Dismissing

    func testDismissing_ShouldDismissViewController() {
        vc1.dismissing()(())

        XCTAssertTrue(vc1.didDismiss)
    }

    func testDismissing_Value_ShouldRunPreparationClosureWithValue() {
        var number: Int?

        vc1.dismissing() { number = $0  }(2)

        XCTAssertEqual(2, number)
    }
}
