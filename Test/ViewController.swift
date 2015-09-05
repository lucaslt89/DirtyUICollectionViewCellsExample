//
//  ViewController.swift
//  Test
//
//  Created by Lucas Diez de Medina on 9/5/15.
//  Copyright (c) 2015 Chesscom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let viewToAdd = UIView(frame: CGRectMake(CGFloat(indexPath.row) * 5, CGFloat(indexPath.row) * 5, 50, 50))
        
        viewToAdd.backgroundColor = UIColor.greenColor()
        let cell:UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cellIdentifier", forIndexPath: indexPath) as! UICollectionViewCell;
        cell.backgroundColor = UIColor.clearColor();
        cell.contentView.addSubview(viewToAdd)

        // Configure the cell
        return cell
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

}

