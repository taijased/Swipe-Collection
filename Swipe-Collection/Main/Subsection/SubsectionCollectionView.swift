//
//  SubsectionCollectionView.swift
//  Swipe-Collection
//
//  Created by Maxim Spiridonov on 21/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

struct SubectionViewModel {
    
}

class SubsectionCollectionView: UICollectionView {
    
    var cells = [SubectionViewModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        setupCollectionSettings()
        backgroundColor = .random()
    }
    
    
    
    func set(cells: [SubectionViewModel]) {
        self.cells = cells
    }
    
    private func setupCollectionSettings() {
        delegate = self
        dataSource = self
        register(SubsectionCollectionViewCell.self, forCellWithReuseIdentifier: SubsectionCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
//        isPagingEnabled = true
        print("olo")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension SubsectionCollectionView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int.random(in: 2..<6)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: SubsectionCollectionViewCell.reuseId, for: indexPath) as! SubsectionCollectionViewCell
        cell.set(imageUrl: "https://kor.ill.in.ua/m/610x385/1804612.jpg")
        return cell
    }


}


extension SubsectionCollectionView: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 200, height: 150)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }

    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }

}
