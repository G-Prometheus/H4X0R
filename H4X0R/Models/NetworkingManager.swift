//
//  NetworkingManager.swift
//  H4X0R
//
//  Created by Nguyễn Thanh Minh on 21/07/2024.
//

import Foundation

class NetworkingManager: ObservableObject{
    @Published var posts = [Posts]()
    func fetchDate(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decode = JSONDecoder()
                    if let safeData = data{
                        do{
                            let result = try decode.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                                
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}

