//
//  ToadyRow.swift
//  Control
//
//  Created by cc on 2024/10/08.
//

import SwiftUI

struct DoingRow: View {
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .resizable()
                .frame(width: 15, height: 15)
            Text("哑铃15个")
            Spacer()
            ProgressView(value: 0.2)
                .frame(width: 30)
        }
    }
}

#Preview {
    DoingRow()
}
