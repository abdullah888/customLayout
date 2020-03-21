//
//  ViewController.swift
//  GMApp
//
//  Created by abdullah on 25/07/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit
import Gemini



class ViewController: UIViewController {

     var Images: [UIImage] = [
               UIImage(named: "1")!,
               UIImage(named: "2")!,
               UIImage(named: "4")!,
               UIImage(named: "5")!,
               UIImage(named: "6")!,
               UIImage(named: "7")!,
               UIImage(named: "8")!,
               UIImage(named: "9")!,
               UIImage(named: "10")!,
               UIImage(named: "11")!,
               UIImage(named: "12")!,
               UIImage(named: "13")!,
               UIImage(named: "14")!,
               UIImage(named: "15")!,
               UIImage(named: "16")!,
               UIImage(named: "17")!,
               UIImage(named: "18")!,
               UIImage(named: "19")!,
               UIImage(named: "20")!
               
           ]
        
        
        @IBOutlet weak var collectionView: UICollectionView!{didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
            }}
        

        override func viewDidLoad() {
            super.viewDidLoad()
            collectionView.register(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
            let customLayout = CustomLayout()
            customLayout.delegate = self
            collectionView.collectionViewLayout = customLayout
            
           //1
//     collectionView.gemini
//      .circleRotationAnimation()
//      .radius(400)
//      .rotateDirection(.clockwise)
          /*/2
            collectionView.gemini
            .cubeAnimation()
            .cubeDegree(90)
            //3
            collectionView.gemini
            .rollRotationAnimation()
            .degree(45)
            .rollEffect(.rollUp)
            */
        }


    }

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout , CustomLayoutDelegate  {
    func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath: IndexPath) -> CGSize {
               let cellsAcross: CGFloat = 1
                     let spaceBetweenCells: CGFloat = 0
                     let dim = (collectionView.bounds.width - (cellsAcross - 0) * spaceBetweenCells) / cellsAcross
                     return CGSize(width: dim, height: dim)
    }
    

    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return Images.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ImageCell
            cell.Update(Image: Images[indexPath.row])
       //     self.collectionView.animateCell(cell)
            return cell
        }
   
    }





