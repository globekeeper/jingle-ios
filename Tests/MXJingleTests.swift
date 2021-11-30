import XCTest
// validate module import
@testable import MXJingle

final class MXJingleTests: XCTestCase {
  func testExample() throws {
    // validate all public headers
    _ = type(of: MXJingleCallStack.self)
    _ = type(of: MXJingleCallStackCall.self)
    _ = type(of: MXJingleCallAudioSessionConfigurator.self)
    _ = type(of: MXJingleVideoView.self)
    _ = type(of: MXJingleCameraCaptureController.self)
    _ = XCTSkip()
  }
}
