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
    
    private var subsectionCollectionView = SubsectionCollectionView()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupSubsection()
        set()
    }
    
    private func setupSubsection() {
        
        addSubview(subsectionCollectionView)
       

    
        subsectionCollectionView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        subsectionCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        subsectionCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        subsectionCollectionView.heightAnchor.constraint(equalToConstant: 220).isActive = true

        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func set() {
        backgroundColor = .random()
    }
}

