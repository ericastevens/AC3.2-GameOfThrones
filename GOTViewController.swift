//
//  GOTViewController.swift
//  AC3.2-GameOfThrones
//
//  Created by Erica Y Stevens on 10/15/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class GOTViewController: UIViewController {

    //initialize the GOT show object
    var gameOfThrones = [GOT]()
    
    override func viewDidLoad() {
        loadData()
        dump(gameOfThrones)
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
    func loadData() {
        guard let path = Bundle.main.path(forResource: "got", ofType: "json"),
            let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path), options:  NSData.ReadingOptions.mappedIfSafe),
            let dict = try? JSONSerialization.jsonObject(with: jsonData as Data, options: .allowFragments) as? NSDictionary else {
                return
        }
        
        //gameOfThrones = GOT(withDict: dict as! [String : Any])
        if let data = dict?.value(forKeyPath: "summary") as? [[String:Any]] {
            for dict in data {
                if let showData = GOT(withDict: dict) {
                    self.gameOfThrones.append(showData)
                    //dump(gameOfThrones)
                }
            }
        }
    }

}
