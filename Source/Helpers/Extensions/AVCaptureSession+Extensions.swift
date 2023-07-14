//
//  AVCaptureSession+Extensions.swift
//  YPImagePicker
//
//  Created by Nik Kov on 23.04.2018.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import AVFoundation

@available(iOS 14.0, macCatalyst 14.0, *)
extension AVCaptureSession {
    func resetInputs() {
        // remove all sesison inputs
        for i in inputs {
            removeInput(i)
        }
    }
}
