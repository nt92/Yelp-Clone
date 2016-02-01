//
//  DetailViewController.swift
//  Yelp
//
//  Created by Nikhil Thota on 1/31/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    var business:Business! {
        didSet {
            self.title = business.name!
            nameLabel.text = business.name!
            self.posterView.setImageWithURL(business.imageURL!)
            self.foodLabel.text = business.categories!
            self.reviewLabel.text = "\(business.reviewCount!) Reviews"
            self.ratingImage.setImageWithURL(business.ratingImageURL!)
            self.distanceLabel.text = business.distance!
            self.addressLabel.text = business.address!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.title = business.name!
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
