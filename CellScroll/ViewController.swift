//
//  ViewController.swift
//  CellScroll
//
//  Created by Karin on 2016/04/05.
//  Copyright © 2016年 Karin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)as UICollectionViewCell
        
        cell.backgroundColor = UIColor.orangeColor()
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

