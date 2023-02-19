//
//  ContentView.swift
//  LoginLearning1
//
//  Created by Max Victor on 17/02/2023.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        
        ZStack{
            Color.blue
            RoundedRectangle(cornerRadius: 15, style: .circular)
                .foregroundColor(.white)
                .frame(width: 1000, height: 650)
                .rotationEffect(.degrees(-45))
                .shadow(color: .black, radius: 40, x: 0, y: 4)
            
            VStack(spacing: 30){
               
                ZStack{
                    //image 1
                    Image(uiImage: #imageLiteral(resourceName: "image1"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 183.8, height: 182.4)
                        .clipped()
                    .frame(width: 183.8, height: 182.4)
                    .rotationEffect(.degrees(-10.2))
                    
                    //Ellipse 1
                    Ellipse()
                        .fill(Color(#colorLiteral(red: 0.04583333432674408, green: 0.04487847164273262, blue: 0.04487847164273262, alpha: 0.12999999523162842)))
                    .frame(width: 235, height: 118)
                    .rotationEffect(.degrees(-18.5))
                }
                
                
                Text("Welcome")
                    .foregroundColor(.blue)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                
                TextField("Email",text: $email).foregroundColor(.black)
                    .frame(width: 350)
                    .textFieldStyle(.roundedBorder)
                    
                
                SecureField("Password", text: $password)
                    .frame(width: 350)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    register()
                } label: {
                    Text("Sign Up")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 30)
                        .background(
                            //Rectangle 2
                            RoundedRectangle(cornerRadius: 50, style: .circular)
                                .fill(LinearGradient(
                                        gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 0.02270829677581787, green: 0.3769581913948059, blue: 0.9083333611488342, alpha: 0.8700000047683716)), location: 0),
                                    .init(color: Color(#colorLiteral(red: 0.35729166865348816, green: 0.45937496423721313, blue: 0.612500011920929, alpha: 0)), location: 1)]),
                                        startPoint: UnitPoint(x: -0.32142858537150487, y: 0.5102039876373379),
                                        endPoint: UnitPoint(x: 1.3831169581153402, y: 1.653060963378456)))
                            .frame(width: 154, height: 49)
                            .shadow(color: .black, radius: 4, x: 0, y: 4)
                            

                            
                        )
                }
                .padding(.top)
                
                
                
                Button {
                    login()
                } label: {
                    Text("Already have an account? Login")
                        .bold()
                }
                .padding(.top)
                
                
            }
        }
        .ignoresSafeArea()
        
    }
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) {result, error in if error != nil {
            print(error!.localizedDescription)
        }
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password){result,error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
