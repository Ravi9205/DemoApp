//
//  PlaceResouces.swift
//  DemoApp
//
//  Created by Ravi dwivedi on 03/12/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import Foundation


struct NewsResource {
   
    func getNewsFeedDetails(request: NewsFeedRequest,completionHandler:@escaping(_ result: PlacesListResponse?)->Void){
        var urlRequest = URLRequest(url: URL(string: API.newsFeedList)!)
        urlRequest.httpMethod = "get"
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        urlRequest.httpBody = try! JSONEncoder().encode(request)

        HttpUtility.shared.performDataTask(urlRequest: urlRequest, resultType: PlacesListResponse.self) { (newsFeedResponse) in

            _ = completionHandler(newsFeedResponse)
            }
    }
}
