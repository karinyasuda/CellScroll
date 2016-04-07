//
//  ViewController.swift
//  CellScroll
//
//  Created by Karin on 2016/04/05.
//  Copyright © 2016年 Karin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource ,UICollectionViewDelegate{
    
    @IBOutlet weak var collectionView: UICollectionView!
  
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
//        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//
//        filterlabel.text = "sepia"
//        exampleimage.image = UIImage(named: "sepia.jpg")
    }
    
    //Cellに値を設定する
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! FilterCollectionViewCell
        
        cell.backgroundColor = UIColor.orangeColor()
        cell.filterlabel.text = "sepia"
        cell.exampleimage.image = UIImage(named: "sepia.jpg")
        
        return cell
    }
    
    
    //Cellの総数を返す
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    //Cellが選択されたときに呼び出される
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("sepia")
    }
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

