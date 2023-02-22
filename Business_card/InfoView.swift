//
//  InfoView.swift
//  Business_card
//
//  Created by Yann DIPITA on 23/02/2023.
//

import SwiftUI

struct InfoView: View {
    var text : String = "";
    var image : String = "";
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack{
                Image(systemName: image)
                    .foregroundColor(Color.green)
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", image: "phone.fill")
    }
}
