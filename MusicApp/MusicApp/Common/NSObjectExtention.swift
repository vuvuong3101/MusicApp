//
//  NSObjectExtention.swift
//  MusicApp
//
//  Created by ADMIN on 5/3/18.
//  Copyright © 2018 ADMIN. All rights reserved.
//

import Foundation

extension NSObject {
	
	var className: String {
		
		return String(describing: type(of: self))
	}
	
	class var className: String {
		
		return String(describing: self)
	}
}
