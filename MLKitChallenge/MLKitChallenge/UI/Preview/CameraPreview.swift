//
//  CameraView.swift
//  MLKitChallenge
//
//  Created by Marcos Vinicius Brito on 09/07/23.
//

import UIKit
import AVFoundation
import SwiftUI

struct CameraPreview: UIViewRepresentable {
  let session: AVCaptureSession

  init(session: AVCaptureSession) {
    self.session = session
  }

  func makeUIView(context: Context) -> VideoPreviewView {
    let viewFinder = VideoPreviewView()
    viewFinder.backgroundColor = .black
    viewFinder.videoPreviewLayer.cornerRadius = 0
    viewFinder.videoPreviewLayer.session = session
    viewFinder.videoPreviewLayer.connection?.videoOrientation = .portrait
    return viewFinder
  }

  func updateUIView(_ uiView: VideoPreviewView, context: Context) {

  }
}

struct CameraPreview_Previews: PreviewProvider {
  static var previews: some View {
    CameraPreview(session: AVCaptureSession())
      .frame(height: 300)
  }
}
