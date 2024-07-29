//
//  DetailView.swift
//  H4XOR News
//
//  Created by 허준호 on 7/24/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://google.com")
}


