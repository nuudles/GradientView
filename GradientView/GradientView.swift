//
//  GradientView.swift
//  GradientView
//
//  Created by Christopher Luu on 12/17/15.
//  Copyright © 2015 Nuudles. All rights reserved.
//

import UIKit

open class GradientView: UIView {
	// MARK: - Class methods
	open override class var layerClass: AnyClass {
		return CAGradientLayer.self
	}

	// MARK: - Public properties
	open var gradientLayer: CAGradientLayer {
		return layer as! CAGradientLayer
	}
	open var colors: [UIColor]? {
		get {
			guard let colors = gradientLayer.colors as? [CGColor] else { return nil }
			return colors.map { UIColor(cgColor: $0) }
		}
		set {
			gradientLayer.colors = newValue?.map { $0.cgColor }
		}
	}
	open var locations: [Float]? {
		get {
			return gradientLayer.locations as? [Float]
		}
		set {
			gradientLayer.locations = newValue as [NSNumber]?
		}
	}
	open var endPoint: CGPoint {
		get {
			return gradientLayer.endPoint
		}
		set {
			gradientLayer.endPoint = newValue
		}
	}
	open var startPoint: CGPoint {
		get {
			return gradientLayer.startPoint
		}
		set {
			gradientLayer.startPoint = newValue
		}
	}
}
