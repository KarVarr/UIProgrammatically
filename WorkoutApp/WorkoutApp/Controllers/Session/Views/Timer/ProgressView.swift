//
//  ProgressView.swift
//  WorkoutApp
//
//  Created by Karen Vardanian on 06.02.2023.
//

import UIKit

extension TimerView {
    final class ProgressView: UIView {
        func drawProgress(with percent: CGFloat) {
            
            let circleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
            let radius = circleFrame / 2
            let center = CGPoint(x: radius, y: radius)
            let startAngel = -CGFloat.pi * 7 / 6
            let endAngel = CGFloat.pi * 1 / 6
            
            let circlePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngel, endAngle: endAngel, clockwise: true)
            
            
            
            let circleLayer = CAShapeLayer()
            circleLayer.path = circlePath.cgPath
            circleLayer.strokeColor = R.Colors.active.cgColor
            circleLayer.lineWidth = 20
            circleLayer.strokeEnd = percent
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineCap = .round
            
            layer.addSublayer(circleLayer)
        }
    }
}
