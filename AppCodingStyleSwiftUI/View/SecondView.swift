//
//  SecondView.swift
//  AppCodingStyleSwiftUI
//
//  Created by Eduard on 26.10.2021.
//

import SwiftUI
import NewLibraryCodingStyle

struct SecondView: View {
    @LibraryCodingStyle(styleCase: ClassForInitializationWrapper.selectedCase) var decodingString = ""
    @State var textForDecoding = ""
    @State var isInputCompleted = false
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Spacer().frame(height: 510)
                Text("CODING  STYLE")
                    .frame(width:400)
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .rotationEffect(.degrees(-90))
                    .foregroundColor(.white)
                    .opacity(0.2)
            }
            
            VStack(alignment: .center, spacing: 0) {
                Text("ВВЕДИТЕ ТЕКСТ ДЛЯ ДЕКОДИРОВАНИЯ:")
                    .frame(width: 300, height: 70, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.6658655405, green: 0.2393900454, blue: 1, alpha: 1)))
                    .cornerRadius(20)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .opacity(0.8)
                    .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                    .padding(.bottom, 10)
                    .multilineTextAlignment(.center)
                
                ZStack {
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)))
                        .frame(width: 300, height: 70, alignment: .center)
                        .cornerRadius(15)
                        .opacity(0.9)
                        .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                    TextField("", text: $textForDecoding, onEditingChanged:{_ in }, onCommit: {
                        decodingString = textForDecoding
                        isInputCompleted = true
                    })
                        .frame(width: 270, height: 70, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                        .autocapitalization(.none)
                }
                .padding(.bottom, 10)
                
                ZStack {
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)))
                        .frame(width: 300, height: 70, alignment: .center)
                        .cornerRadius(15)
                        .opacity(!isInputCompleted ? 0 : 0.9)
                        .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                    Text(verbatim: decodingString)
                        .frame(width: 270, height: 70, alignment: .leading)
                        .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                }
                .padding(.bottom, 10)
                
                ZStack {
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0.7521830201, green: 0.3208570182, blue: 1, alpha: 1)))
                        .frame(width: 100, height: 40, alignment: .center)
                        .cornerRadius(15)
                        .opacity(!isInputCompleted ? 0 : 0.9)
                        .shadow(color: .black, radius: 5, x: 3.0, y: 3.0)
                    Button(action: {
                        textForDecoding = ""
                        decodingString = ""
                        isInputCompleted = false
                    }, label: {
                        Text("Clear")
                            .frame(width: 270, height: 40, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.4502797723, green: 0, blue: 0.7522810102, alpha: 1)))
                            .opacity(!isInputCompleted ? 0 : 0.9)
                    })
                }
                .padding(.bottom, 90)
            }
            ButtonBackView(presentation: presentation)
        }
    }
}
