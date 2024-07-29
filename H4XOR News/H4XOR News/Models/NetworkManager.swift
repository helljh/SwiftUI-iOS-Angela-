//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by 허준호 on 7/24/24.
//

import Foundation

class NetworkManager: ObservableObject{
    
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let urlSession = URLSession(configuration: .default)
            let task = urlSession.dataTask(with: url) { (data, urlResponse, error) in
                if let e = error{
                    print(error!)
                }else{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async{
                                self.posts = results.hits
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
