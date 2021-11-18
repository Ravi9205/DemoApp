//
//  PlacesListVC.swift
//  DemoApp
//
//  Created by Ravi dwivedi on 04/12/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import UIKit

class PlacesListVC: UIViewController {
    
    @IBOutlet weak var tblView:UITableView!
    var newsFeedListArr  = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.getNewsListDetails()
    }
    
    
    func getNewsListDetails(){
        let newsResource = NewsResource()
        let newsRequest = NewsFeedRequest(q:"bitcoin", from: "2020-12-25", sortBy:"publishedAt", apiKey: "d209d9c86a4741e8950181b589ce3b08")
        
        newsResource.getNewsFeedDetails(request: newsRequest) { (newsFeedResponse) in
            if newsFeedResponse != nil{
                newsFeedResponse?.articles.forEach({ (result) in
                    self.newsFeedListArr.append(result)
                })
                
                DispatchQueue.main.async {
                    self.tblView.reloadData()
                }
                
            }
        }
    }
}


