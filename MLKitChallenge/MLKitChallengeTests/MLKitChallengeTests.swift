//
//  MLKitChallengeTests.swift
//  MLKitChallengeTests
//
//  Created by Marcos Vinicius Brito on 09/07/23.
//

import SwiftUI
import XCTest
import MLKitChallenge

final class MLKitChallengeTests: XCTestCase {

  func testgetCameraViewShouldReturnCameraView() {
    // Arrange
    let sut = MLKitChallenge()

    // Act
    let cameraView = sut.getCameraView()

    // Assert
    XCTAssertTrue(cameraView is (any View))
  }
}
