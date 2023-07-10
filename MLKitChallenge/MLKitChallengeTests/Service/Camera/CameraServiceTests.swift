//
//  CameraServiceTests.swift
//  MLKitChallengeTests
//
//  Created by Marcos Vinicius Brito on 10/07/23.
//

import XCTest
import AVFoundation
@testable import MLKitChallenge

class CameraServiceTests: XCTestCase {
  var cameraService: CameraService!

  override func setUp() {
    super.setUp()
    cameraService = CameraService()
  }

  override func tearDown() {
    cameraService = nil
    super.tearDown()
  }

  func testFlashMode_DefaultValue_ShouldBeOff() {
    XCTAssertEqual(cameraService.flashMode, .off)
  }

  func testShouldShowAlertView_DefaultValue_ShouldBeFalse() {
    XCTAssertFalse(cameraService.shouldShowAlertView)
  }

  func testShouldShowSpinner_DefaultValue_ShouldBeFalse() {
    XCTAssertFalse(cameraService.shouldShowSpinner)
  }

  func testWillCapturePhoto_DefaultValue_ShouldBeFalse() {
    XCTAssertFalse(cameraService.willCapturePhoto)
  }

  func testIsCameraButtonDisabled_DefaultValue_ShouldBeTrue() {
    XCTAssertTrue(cameraService.isCameraButtonDisabled)
  }

  func testIsCameraUnavailable_DefaultValue_ShouldBeTrue() {
    XCTAssertTrue(cameraService.isCameraUnavailable)
  }

  func testPhoto_DefaultValue_ShouldBeNil() {
    XCTAssertNil(cameraService.photo)
  }
}
