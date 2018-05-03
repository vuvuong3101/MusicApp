//
//  MABaseViewController.swift
//  MusicApp
//
//  Created by ADMIN on 5/3/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//

import Foundation
import UIKit

class MABaseViewController: UIViewController {
	
	override func viewDidLoad() {
		setupBgColor()
	}
	
	private func setupBgColor() {
		let startColor = UIColor(netHex: 0x5a3f5c)
		let endColor = UIColor(netHex: 0x1f1f27)
		
		view.setGradientBackground(startColor: startColor, endColor: endColor)
	}
	
}
