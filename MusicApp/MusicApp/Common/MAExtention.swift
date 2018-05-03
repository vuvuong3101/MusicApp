//
//  MAExtention.swift
//  MusicApp
//
//  Created by ADMIN on 5/3/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
	
	@discardableResult
	func setGradientBackground(startColor: UIColor, endColor: UIColor) -> CAGradientLayer {
		
		let colorTop = startColor.cgColor
		let colorBottom = endColor.cgColor
		
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [ colorTop, colorBottom]
		gradientLayer.locations = [ 0.0, 1.0]
		gradientLayer.frame = UIScreen.main.bounds
		
		self.layer.insertSublayer(gradientLayer, at: 0)
		return gradientLayer
	}
}

extension UIColor {
	
	convenience init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
	}
	
	convenience init(netHex: Int) {
		self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
	}
}
