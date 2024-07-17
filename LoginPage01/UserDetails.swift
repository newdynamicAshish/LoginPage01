//
//  UserDetails.swift
//  LoginPage01
//
//  Created by Apple on 10/07/24.
//

import SwiftUI

struct UserDetails: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    @State  var showAlert: Bool = false
    @State  var ErrorTitl = ""
    var body: some View {
        VStack{
            Text("Login")
                .font(.largeTitle)
                .padding(.bottom, 40)
            
            TextField("Username", text: $userName)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Button(action: {
                
                if self.userName == ""{
                    self.ErrorTitl = "Please enter your username"
                    self.showAlert = true
                }else if self.password == "" {
                    self.ErrorTitl = "Please enter your password"
                    self.showAlert = true
                }else{
                    self.ErrorTitl = "Most Welcome \(userName)"
                    self.showAlert = true
                }
            }){
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text(self.ErrorTitl))
            }
        } .padding()
        
    }
}

#Preview {
    UserDetails()
}
