//
//  VC + StackViews.swift
//  TestSerfProfile
//
//  Created by Karen Vardanian on 01.08.2023.
//

import UIKit


extension ViewController {
     func settingsForStackView() {
        applyStackViewSettings(verticalStackViewForProfileImageAndText.stackV, axis: .vertical, alignment: .center, spacing: 16)
        applyStackViewSettings(horizontalStackViewForLabel.stackV, axis: .horizontal, alignment: .center, spacing: 0)
        applyStackViewSettings(horizontalStackViewVForTagsTitleAndButton.stackV, axis: .horizontal, alignment: .center, spacing: 0)
        applyStackViewSettings(verticalStackViewForMySelf.stackV, axis: .vertical, alignment: .leading, spacing: 8)
    }
    
    private func applyStackViewSettings(_ stackView: UIStackView, axis: NSLayoutConstraint.Axis, alignment: UIStackView.Alignment, spacing: CGFloat) {
        stackView.axis = axis
        stackView.alignment = alignment
        stackView.spacing = spacing
    }

}
