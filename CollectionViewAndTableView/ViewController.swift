//
//  ViewController.swift
//  CollectionViewAndTableView
//
//  Created by Ramazan on 07.11.2021.
//

import UIKit

var collectionview: UICollectionView!
  var cellId = "Cell"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                layout.itemSize = CGSize(width: view.frame.width, height: 700)

                collectionview = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                collectionview.dataSource = self
                collectionview.delegate = self
                collectionview.register(FreelancerCell.self, forCellWithReuseIdentifier: cellId)
                collectionview.showsVerticalScrollIndicator = false
                collectionview.backgroundColor = UIColor.white
                self.view.addSubview(collectionview)
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FreelancerCell
        cell.backgroundColor = .blue
                return cell
    }
    
    
}

