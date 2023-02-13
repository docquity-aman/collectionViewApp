//
//  ViewController.swift
//  collectionView
//
//  Created by Aman Verma on 13/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var arrimg = [#imageLiteral(resourceName: "watch4"),
                  #imageLiteral(resourceName: "watch3"),
                  #imageLiteral(resourceName: "watch5"),
                  #imageLiteral(resourceName: "watch7"),
                  #imageLiteral(resourceName: "watch6"),
                  #imageLiteral(resourceName: "watch8"),
                  #imageLiteral(resourceName: "watch9"),
                  #imageLiteral(resourceName: "watch4"),
                  #imageLiteral(resourceName: "watch10"),
                  #imageLiteral(resourceName: "watch3"),
                  #imageLiteral(resourceName: "watch5"),
                  #imageLiteral(resourceName: "watch7"),
                  #imageLiteral(resourceName: "watch6"),
                  #imageLiteral(resourceName: "watch8"),
                  #imageLiteral(resourceName: "watch9"),
                  #imageLiteral(resourceName: "watch4"),
                  #imageLiteral(resourceName: "watch6"),
                  #imageLiteral(resourceName: "watch8"),
                  #imageLiteral(resourceName: "watch9"),
                  #imageLiteral(resourceName: "watch4")]
    var arrlbl = ["Watch1","Watch2","Watch3","Watch4","Watch5","Watch6","Watch7","Watch8","Watch9","Watch10","Watch11","Watch12","Watch13","Watch14","Watch15","Watch16","Watch17","Watch18","Watch19","Watch20"]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! CollectionViewCell
        cell.img.image=arrimg[indexPath.row]
        cell.lbl.text=arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail:ImageViewController=self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        imageDetail.mainimg=arrimg[indexPath.row]
        imageDetail.mainlbl=arrlbl[indexPath.row]
        self.navigationController?.pushViewController(imageDetail, animated: true)
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView.dataSource=self
//        collectionView.delegate=self
//        // Do any additional setup after loading the view.
        collectionView.collectionViewLayout=UICollectionViewFlowLayout()
    }


}
extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth=collectionView.bounds.width;
        return CGSize(width: collectionWidth/3, height: collectionWidth/3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0;
    }
}

