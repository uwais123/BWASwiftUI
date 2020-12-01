//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Uwais Alqadri on 01/12/20.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                // Section Profile
                Section() {
                   NavigationLink(destination: About()){
                    HStack {
                        Image("profile")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        // Nama & Status
                        VStack(alignment: .leading) {
                            Text("Uwais").font(.headline)
                            Text("Mobile Developer").font(.caption)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    
                   }
                }
                
                // section pengaturan umum
                Section(header: Text("Pengaturan Umum").textCase(.none)) {
                    NavigationLink(destination: Pesan()){
                        HStack(spacing: 20) {
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        
                            Text("Pesan Berbintang")
                        }
                    }
                    
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                            Text("Whatsapp Web/Dekstop")
                        }
                    }
                }
                
                // section pengaturan akun
                Section(header:
                        Text("Pengaturan Akun").textCase(.none)){
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                            Text("Akun")
                        }
                    }
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                            Text("Chat")
                        }
                    }
                }
            }.navigationTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About: View {
    var body: some View {
        Text("Halaman About")
    }
}

struct Pesan: View {
    var body: some View {
        Text("Pesan Berbintang")
    }
}
