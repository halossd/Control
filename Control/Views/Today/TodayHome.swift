//
//  TodayView.swift
//  Control
//
//  Created by cc on 2024/10/08.
//

import SwiftUI

struct TodayHome: View {
    // 第一组任务：已完成的任务
    @State private var completedTasks: [Task] = [
        Task(title: "哑铃15个", isCompleted: true),
        Task(title: "跑步5公里", isCompleted: true)
    ]
    
    // 第二组任务：未完成的任务
    @State private var activeTasks: [Task] = [
        Task(title: "深蹲20个", isCompleted: false),
        Task(title: "俯卧撑30个", isCompleted: false)
    ]
    
    var body: some View {
        NavigationSplitView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        VStack(alignment: .leading) {
                            ForEach(completedTasks) { task in
                                ToadyRow()
                                    .transition(.move(edge: .top))
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("正在做的事情")
                            .font(.headline)
                            .padding(.leading)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            ForEach(activeTasks) { task in
                                DoingRow()
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
            .navigationTitle("Today")
            .padding(.horizontal)
        } detail: {
            Text("select a day")
        }
    }
}

#Preview {
    TodayHome()
}
