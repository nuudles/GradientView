//
//  GradientView.swift
//  GradientView
//
//  Created by Christopher Luu on 12/17/15.
//  Copyright © 2015 Nuudles. All rights reserved.
//

import UIKit

public class GradientView: UIView {
	// MARK: - Class methods
	public override class func layerClass() -> AnyClass {
		return CAGradientLayer.self
	}
	
	// MARK: - Public properties
	public var gradientLayer: CAGradientLayer {
		return layer as! CAGradientLayer
	}
	public var colors: [UIColor]? {
		get {
			guard let colors = gradientLayer.colors as? [CGColorRef] else { return nil }
			return colors.map { UIColor(CGColor: $0) }
		}
		set {
			gradientLayer.colors = newValue?.map { $0.CGColor }
		}
	}
	public var locations: [Float]? {
		get {
			return gradientLayer.locations as? [Float]
		}
		set {
			gradientLayer.locations = newValue
		}
	}
	public var endPoint: CGPoint {
		get {
			return gradientLayer.endPoint
		}
		set {
			gradientLayer.endPoint = newValue
		}
	}
	public var startPoint: CGPoint {
		get {
			return gradientLayer.startPoint
		}
		set {
			gradientLayer.startPoint = newValue
		}
	}
}
