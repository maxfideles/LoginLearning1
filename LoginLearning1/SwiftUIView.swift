//
//  SwiftUIView.swift
//  LoginLearning1
//
//  Created by Max Victor on 19/02/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
                
        Button {
            //
        } label: {
            
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                .fill(Color(red: 0.36, green: 0.46, blue: 0.61, opacity: 0.79))
                .frame(width: 154, height: 49)
                .shadow(radius: 4, y: 4)

                
                
                Text("Login")
                .font(.largeTitle)
            }
            .frame(width: 166, height: 62)
            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            .cornerRadius(50)
            .shadow(radius: 4, y: 4)
            .padding(.horizontal, 112)
            .padding(.top, 610)
            .padding(.bottom, 172)
            .frame(width: 390, height: 844)
            .foregroundColor(.white)

        }

        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
