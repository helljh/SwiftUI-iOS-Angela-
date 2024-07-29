//
//  ContentView.swift
//  H4XOR News
//
//  Created by 허준호 on 7/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManger = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManger.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url ?? "https://google.com")) {
                    HStack{
                        Text(String( post.points))
                        Text(post.title)
                    }
                }
            })
            .navigationTitle("H4XOR News")
        }
        .onAppear{
            self.networkManger.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

