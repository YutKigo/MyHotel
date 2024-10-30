//
//  LostItemDisplayView.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/10/31.
//


import SwiftUI


struct LostItemDisplayView: View {
    @StateObject var viewModel = LostItemViewModel()
    @State var showContentView = false

    var body: some View {
        VStack {
            if showContentView == true {
                ContentView()
            } else {
                if viewModel.lostItems.isEmpty {
                    Text("現在保管中の忘れ物はありません。")
                        .padding(.bottom, 2)
                        .font(.headline)
                    Button("戻る") {
                        showContentView = true
                    }
                } else {
                    List {
                        ForEach(viewModel.lostItems.indices, id: \.self) { index in
                            let item = viewModel.lostItems[index]
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.lostItem)
                                    Text("発見者: \(item.discover)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    Text("日付: \(item.date)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    Text("部屋番号: \(item.roomNumber)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Button(action: {
                                    viewModel.deleteLostItem(at: index)
                                }) {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }.buttonStyle(BorderlessButtonStyle())  // ボタンのタッチ領域をリスト全体に広げない
                            }
                        }
                    }
                    .navigationTitle("忘れ物リスト")
                    .onAppear {
                        viewModel.fetchAllLostItems()
                    }
                    
                    Button("戻る") {
                        showContentView = true
                    }
                }
            }
        }
        .onAppear() {
            viewModel.fetchAllLostItems()
        }
        .padding()
    }
}


#Preview {
    LostItemDisplayView()
}
