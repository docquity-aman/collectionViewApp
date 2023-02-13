//
//  ImageViewController.swift
//  collectionView
//
//  Created by Aman Verma on 13/02/23.
//

import UIKit

class ImageViewController: UIViewController {

    
    @IBOutlet weak var ilbl: UILabel!
    @IBOutlet weak var iimg: UIImageView!
    
    var mainimg:UIImage!
    var mainlbl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iimg.image=mainimg
        ilbl.text=mainlbl
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
