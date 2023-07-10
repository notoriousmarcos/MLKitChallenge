//
//  Photo.swift
//  MLKitChallenge
//
//  Created by Marcos Vinicius Brito on 10/07/23.
//


import UIKit

//  MARK: Class Camera Service, handles setup of AVFoundation needed for a basic camera app.
public struct Photo: Identifiable, Equatable {
  public var id: String
  public var originalData: Data

  public init(id: String = UUID().uuidString, originalData: Data) {
    self.id = id
    self.originalData = originalData
  }
}

extension Photo {
  public var compressedData: Data? {
    ImageResizer(targetWidth: 800).resize(data: originalData)?.jpegData(compressionQuality: 0.5)
  }
  public var thumbnailData: Data? {
    ImageResizer(targetWidth: 100).resize(data: originalData)?.jpegData(compressionQuality: 0.5)
  }
  public var thumbnailImage: UIImage? {
    guard let data = thumbnailData else { return nil }
    return UIImage(data: data)
  }
  public var image: UIImage? {
    guard let data = compressedData else { return nil }
    return UIImage(data: data)
  }
}
