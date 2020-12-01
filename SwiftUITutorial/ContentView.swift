//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Uwais Alqadri on 01/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Logo()
                FormBox()
            }
        
        }
//        padding(.all, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo: View {
    var body: some View {
        
       VStack{
        Image("swift")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.white)
            .cornerRadius(20)
        
        Text("Halo SwiftUI").foregroundColor(Color.white)
       }
    }
}

struct FormBox: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username").font(.callout).bold()
            TextField("Username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello Button")}) {
               HStack{
                Text("Sign in")
                    .foregroundColor(.white)
                    .font(.callout).bold()
            
                Spacer()
               }
            }
            
            .padding()
            .background(Color.black)
            .cornerRadius(10)
        }
        .padding(.all, 30)
        .background(Color.orange)
        .cornerRadius(10)
    }
}
