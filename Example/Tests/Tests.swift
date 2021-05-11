import SnapshotTesting
import XCTest

@testable import Lottie

class Tests: XCTestCase {
  let animationView = AnimationView()

  override func setUp() {
    super.setUp()

    let animation = Animation.named("LottieLogo1", subdirectory: "TestAnimations")

    animationView.animation = animation
    animationView.contentMode = .scaleAspectFit
    print("asdf")
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  func testFirstOne() {
    animationView.currentProgress = 0.5
//        animationView.play()
//        animationView.frame = CGRect(x: 0, y: 0, width: 500, height: 500)

//        let vc = TestViewController()

    isRecording = true
    assertSnapshot(matching: animationView, as: .image(size: CGSize(width: 500, height: 500)))
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
}
