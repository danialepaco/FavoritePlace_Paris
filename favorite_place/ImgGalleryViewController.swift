//
//  ViewController.swift
//  favorite_place
//
//  Created by Daniel Parra on 6/11/16.
//  Copyright © 2016 Daniel Parra. All rights reserved.
//

import UIKit

class ImgGalleryViewController: UIViewController
{
    
    @IBOutlet weak var x: UIImageView!
    @IBOutlet weak var y: UIPageControl!
    @IBOutlet weak var z: UILabel!
    
    
    var index = 0
    var headerText = ""
    var imageName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        z.text = headerText
        x.image = UIImage(named: imageName)
        y.currentPage = index
    }
}

























