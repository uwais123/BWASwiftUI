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
            
            // konten 1
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("thumbnail")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10.00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20) {
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Make Thumbnail that rank")
                            .bold()
                            .font(.headline)
                        HStack {
                            Text("let's make interactive thumbnail - 300x ditonton - 9 jam yang lalu").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            // konten 2
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("thumbnail2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10.00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20) {
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("SwiftUI Tutorial #1")
                            .bold()
                            .font(.headline)
                        HStack {
                            Text("let's make interactive thumbnail - 300x ditonton - 9 jam yang lalu").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            // konten 3
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("thumbnail3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10.00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20) {
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("SwiftUI Tutorial #2")
                            .bold()
                            .font(.headline)
                        HStack {
                            Text("let's make interactive thumbnail - 300x ditonton - 9 jam yang lalu").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
        }
    }
}
