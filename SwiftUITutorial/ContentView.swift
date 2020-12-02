//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Uwais Alqadri on 01/12/20.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                TabOne()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explorasi")
                    }
                TabTwo()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subcription")
                    }
                
                TabTwo()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                    }
            }.accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView {
            Content()
                
                .navigationBarItems(
                    leading:
                        HStack {
                            Button(action: {print("Hello")}) {
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width:90, height:50)
                            }
                            
                        },
                    trailing:
                        HStack {
                            Button(action: {print("btn")}) {
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("btn")}) {
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("btn")}) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("btn")}) {
                                Image("profile")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .clipShape(Circle())
                            }
                        }
                ).navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TabOne: View {
    var body: some View {
        Text("TabOne")
    }
}

struct TabTwo: View {
    var body: some View {
        Text("TabTwo")
    }
}

struct Content: View {
    var body: some View {
        List {
            Cell(image: "thumbnail", profile: "profile", judul: "SwiftUI", deskripsi: "Belajar membuat aplikasi IOS - 500x Ditonton - 9 jam yang lalu", durasi: "10:00")
            
            Cell(image: "thumbnail2", profile: "profile", judul: "SwiftUI", deskripsi: "Belajar membuat aplikasi IOS - 500x Ditonton - 9 jam yang lalu", durasi: "10:00")
            
            Cell(image: "thumbnail3", profile: "profile", judul: "SwiftUI", deskripsi: "Belajar membuat aplikasi IOS - 500x Ditonton - 9 jam yang lalu", durasi: "10:00")
        }
    }
}

struct Cell: View {
    
    var image: String
    var profile: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    var body: some View {
        // konten 3
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing: 20) {
                Image(profile)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(judul)
                        .bold()
                        .font(.headline)
                    HStack {
                        Text(deskripsi).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
            
        }
    }
}
