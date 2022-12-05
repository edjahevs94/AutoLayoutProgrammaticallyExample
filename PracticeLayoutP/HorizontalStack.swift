//
//  Stacks.swift
//  PracticeLayoutP
//
//  Created by EdgardVS on 5/12/22.
//

import UIKit

class HorizontalStack: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHorizontalStack()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupHorizontalStack()
    }
    func setupHorizontalStack() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .gray
        distribution = .equalSpacing
        alignment = .center
        layer.cornerRadius = 10
        axis = .horizontal
        spacing = 80
        
    }
    
}
