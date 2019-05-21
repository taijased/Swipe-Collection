//
//  SectionCollectionViewCell.swift
//  Swipe-Collection
//
//  Created by Maxim Spiridonov on 21/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "SectionCollectionViewCell"
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .random()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

