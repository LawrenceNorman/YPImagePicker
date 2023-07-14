//
//  YPFlashMode.swift
//  YPImagePicker
//
//  Created by Nik Kov on 13.08.2021.
//

import AVFoundation
import UIKit

enum YPFlashMode {
    case off
    case on
    case auto
}

@available(iOS 14.0, macCatalyst 14.0, *)
extension YPFlashMode {
    init(torchMode: AVCaptureDevice.TorchMode?) {
        switch torchMode {
        case .on:
            self = .on
        case .off:
            self = .off
        case .auto:
            self = .auto
        case .none,
             .some:
            self = .auto
        }
    }
}

@available(iOS 14.0, macCatalyst 14.0, *)
extension YPFlashMode {
    func flashImage() -> UIImage {
        switch self {
        case .on:
            return YPConfig.icons.flashOnIcon
        case .off:
            return YPConfig.icons.flashOffIcon
        case .auto:
            return YPConfig.icons.flashAutoIcon
        }
    }
}
