//
//  ContentView.swift
//  AppCodingStyleSwiftUI
//
//  Created by Eduard on 26.10.2021.
//

import SwiftUI
import NewLibraryCodingStyle


struct FirstView: View {
    @State var isStyleSelected = false
    @State var selectedCase: StyleСases = .oneStyle
    
    var body: some View {
//        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    Spacer().frame(height: 555)
                    Text("CODING  STYLE")
                        .frame(width:400)
                        .font(.system(size: 40, weight: .bold, design: .default))
                        .rotationEffect(.degrees(-90))
                        .foregroundColor(.white)
                        .opacity(0.2)
                }

                VStack(alignment: .center, spacing: 0) {
                    Text("ВЫБИРИТЕ СТИЛЬ ДЕКОДИРОВАНИЯ:")
                        .frame(width: 300, height: 70, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.6658655405, green: 0.2393900454, blue: 1, alpha: 1)))
                        .cornerRadius(20)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                        .padding(.bottom, 10)
                    
                    Button(action: {
                        ClassForInitializationWrapper.selectedCase = .camelCase
                        isStyleSelected = true
                    }, label: {
                        Text("CAMEL CASE")
                            .frame(width: 300, height: 50, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.8905422091, green: 0.6646444201, blue: 0.993263185, alpha: 1)))
                            .cornerRadius(15)
                            .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                            .opacity(0.9)
                            .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                            .padding(.bottom, 10)
                    })

                    Button(action: {
                        ClassForInitializationWrapper.selectedCase = .snakeCase
                        isStyleSelected = true
                    }, label: {
                        Text("SNAKE CASE")
                            .frame(width: 300, height: 50, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.8905422091, green: 0.6646444201, blue: 0.993263185, alpha: 1)))
                            .cornerRadius(15)
                            .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                            .opacity(0.9)
                            .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                            .padding(.bottom, 10)
                    })

                    Button(action: {
                        ClassForInitializationWrapper.selectedCase = .kebabCase
                        isStyleSelected = true
                    }, label: {
                        Text("KEBAB CASE")
                            .frame(width: 300, height: 50, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.8905422091, green: 0.6646444201, blue: 0.993263185, alpha: 1)))
                            .cornerRadius(15)
                            .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                            .opacity(0.9)
                            .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                            .padding(.bottom, 10)
                    })
                    
                    Button(action: {
                        ClassForInitializationWrapper.selectedCase = .oneStyle
                        isStyleSelected = true
                    }, label: {
                        Text("ONE STYLE")
                            .frame(width: 300, height: 50, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.8905422091, green: 0.6646444201, blue: 0.993263185, alpha: 1)))
                            .cornerRadius(15)
                            .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                            .opacity(0.9)
                            .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                            .padding(.bottom, 90)
                    })
                }
                NavigationLink(
                    destination: SecondView(),
                    isActive: $isStyleSelected,
                    label: {
                        EmptyView()
                    })
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $isStyleSelected, content: {
                SecondView()
        })
    }
}
