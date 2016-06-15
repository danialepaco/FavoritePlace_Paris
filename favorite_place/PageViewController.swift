//
//  ViewController.swift
//  favorite_place
//
//  Created by Daniel Parra on 6/11/16.
//  Copyright © 2016 Daniel Parra. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController
{
    // The name of the places and its images' name    
    var text = ["Notre Dame", "Pont des Arts", "Musée du Louvre", "Arc de Triomphe", "Tour Eiffel", "Palais Garnier"]
    var images = ["Photo1", "Photo2", "Photo3", "Photo4", "Photo5", "Photo6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        
        // create the first imgGalleryVC
        if let startImgGalleryVC = self.viewControllerAtIndex(0) {
            setViewControllers([startImgGalleryVC], direction: .Forward, animated: true, completion: nil)
        }
        
    }
    
    // This send the data to the imgView
        
    func viewControllerAtIndex(index: Int) -> ImgGalleryViewController?
    {
        if index == NSNotFound || index < 0 || index >= self.images.count{
            return nil
        }
        
        // create a new walkthrough view controller and assing appropriate date
        if let ImgGalleryViewController = storyboard?.instantiateViewControllerWithIdentifier("ImgGalleryViewController") as? ImgGalleryViewController {
            ImgGalleryViewController.imageName = images[index]
            ImgGalleryViewController.headerText = text[index]
            ImgGalleryViewController.index = index
            
            return ImgGalleryViewController
        }
        
        return nil
    }
}

extension PageViewController : UIPageViewControllerDataSource
{
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as! ImgGalleryViewController).index
        index++
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ImgGalleryViewController).index
        index--
        return self.viewControllerAtIndex(index)
    }
}






















