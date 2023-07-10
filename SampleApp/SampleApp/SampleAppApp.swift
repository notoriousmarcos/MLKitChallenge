//
//  SampleAppApp.swift
//  SampleApp
//
//  Created by Marcos Vinicius Brito on 09/07/23.
//

import MLKitChallenge
import SwiftUI

@main
struct SampleAppApp: App {
  let mlkitChallenge = MLKitChallenge()
    var body: some Scene {
        WindowGroup {
          mlkitChallenge.getCameraView()
        }
    }
}
