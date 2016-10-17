//
//  DetailViewController.swift
//  AC3.2-GameOfThrones
//
//  Created by Erica Y Stevens on 10/13/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var episodeImage: UIImageView!
    @IBOutlet weak var watchNowButton: UIButton!
    @IBAction func didTapWatchNow(_ sender: UIButton) {
        UIApplication.shared.openURL(URL(string: episodeLink)!)
    }
    @IBOutlet weak var airDateLabel: UILabel!
    @IBOutlet weak var seasonEpisodeLabel: UILabel!
    @IBOutlet weak var episodeSummaryLabel: UILabel!
    @IBOutlet weak var episodeTitleLabel: UILabel!
    var episodeTitle = ""
    var episodeSummary = ""
    var seasonEpisode = ""
    var airDate = ""
    var episodeLink = ""
    var episodeImageURL = ""
   

    override func viewDidLoad() {
        
        episodeTitleLabel.text = episodeTitle
        episodeSummaryLabel.text = episodeSummary
        seasonEpisodeLabel.text = seasonEpisode
        airDateLabel.text = airDate
        watchNowButton.layer.cornerRadius = 5
        
        if let url  = NSURL(string: episodeImageURL),
            let data = NSData(contentsOf: url as URL)
        {
            episodeImage.image = UIImage(data: data as Data)
        }
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
