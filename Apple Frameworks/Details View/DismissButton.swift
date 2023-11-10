//
//  DismissButton.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct DismissButton: View {
    var body: some View {
        Image(systemName: "xmark.circle.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .tint(.pink)
            .frame(width: 25, height: 25)
            .padding(.top, 12)
            .padding(.trailing, 12)

    }
}

#Preview {
    DismissButton()
}
