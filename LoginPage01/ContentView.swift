//
//  ContentView.swift
//  LoginPage
//
//  Created by Apple on 10/07/24.
//

// Login Page

import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var isLoginIn: Bool = false
    @State private var showingAlert: Bool = false
    
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
//                if userName ==  && password == {
//                    isLoginIn = true
//                }else{
//                    showingAlert = false
//                }
                
                    
            }){
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Error"), message: Text("Invalid Credentials"), dismissButton: .default(Text("OK")))
            }
            
            if isLoginIn {
                Text("Welcome, \(userName)")
                    .font(.headline)
                    .padding(.top, 20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
