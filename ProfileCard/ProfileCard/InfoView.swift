//
//  InfoView.swift
//  ProfileCard
//
//  Created by 허준호 on 7/23/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height:50)
            .overlay(
                HStack{
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text).foregroundColor(Color("darkTextColor"))
                }
            ).padding(.all)
    }
}


#Preview {
    InfoView(text: "hello", imageName: "phone.fill")
}
