import UIKit

/// Helper UIImage extension.
extension UIImage {
  /// Checks if image has alpha component
  var hasAlpha: Bool {
    let result: Bool

    guard let alpha = cgImage?.alphaInfo else {
      return false
    }

    switch alpha {
    case .none, .noneSkipFirst, .noneSkipLast:
      result = false
    default:
      result = true
    }

    return result
  }

  // Convert to data
//  func cache_toData() -> Data? {
//    return hasAlpha
//        ? jpegData(compressionQuality: 0.75)
//      : UIImage.jpegData(compressionQuality: 1.0)
//  }
}
