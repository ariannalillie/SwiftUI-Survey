//
//  RGBToClampedDouble.swift
//  SwiftUI-Weather
//
//  Created by Summers, JM on 8/15/22.
//

prefix operator %

public prefix func %(rhs: Int) -> Double {
    .init(rhs) / 255
}
