//
//  PlacesListVCExtensions.swift
//  DemoApp
//
//  Created by Ravi dwivedi on 04/12/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import Foundation
import UIKit

extension PlacesListVC : UITableViewDelegate, UITableViewDataSource{
    
    //MARK:- TableView  Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsFeedListArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        guard let cell = self.tblView .dequeueReusableCell(withIdentifier:"PlacesListCell", for: indexPath) as? PlacesListCell else {
            fatalError()
        }
        //cell.lbl_city.text = placesListArr[inde]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    //MARK:- TableView Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
}
