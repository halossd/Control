//
//  ToadyRow.swift
//  Control
//
//  Created by cc on 2024/10/08.
//

import SwiftUI

struct ToadyRow: View {
    var body: some View {
        HStack {
            Image(systemName: "circle.circle")
                .resizable()
                .frame(width: 15, height: 15)
            Text("哑铃15个")
            Spacer()
            Image(systemName: "checkmark.circle")
        }
    }
}

#Preview {
    ToadyRow()
}
