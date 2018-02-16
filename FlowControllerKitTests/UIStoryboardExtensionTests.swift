import XCTest
@testable import FlowControllerKit

class UIStoryboardExtensionTests: XCTestCase {

    func testInstantiate_ViewController_ShouldGenerateIDEqualToClassName() {
        let storyboard = UIStoryboardMock()

        _ = storyboard.instantiate(UIViewControllerMock.self)

        XCTAssertEqual("UIViewControllerMock", storyboard.identifier)
    }
}

class UIStoryboardMock: UIStoryboard {

    var identifier: String?

    override func instantiateViewController(withIdentifier identifier: String) -> UIViewController {
        self.identifier = identifier

        return UIViewControllerMock()
    }
}
