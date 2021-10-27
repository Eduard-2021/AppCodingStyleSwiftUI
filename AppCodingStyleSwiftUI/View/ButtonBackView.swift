//
//  ButtonBackView.swift
//  AppCodingStyleSwiftUI
//
//  Created by Eduard on 27.10.2021.
//

import SwiftUI

struct ButtonBackView: View {
    let presentation: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .opacity(0.6)
                
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    Text(" Back")
                        .foregroundColor(.white)
                        .opacity(0.6)
                })
                Spacer()
            }
            .padding(.horizontal, 30)
            Spacer()
        }
    }
}
