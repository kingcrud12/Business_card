//
//  ContentView.swift
//  Business_card
//
//  Created by Yann DIPITA on 22/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ImageConfig()
                TextConfig1()
                TextConfig2()
                Divider()
                InfoView(text: "+33.7.49.79.64.81", image: "phone.fill")
                InfoView(text:"dipitay@gmail.com", image: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImageConfig: View {
    var body: some View {
        Image("AvatarMaker")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct TextConfig1: View {
    var body: some View {
        Text("Yann DIPITA")
            .font(.custom("Pacifico-Regular", size: 20.0))
            .foregroundColor(Color.white)
    }
}

struct TextConfig2: View {
    var body: some View {
        Text("Mobile Developer")
            .font(.system(size: 20.0))
            .foregroundColor(Color.white)
    }
}
