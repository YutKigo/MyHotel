//
//  RoomSetupView.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/09/12.
//

import SwiftUI
import Firebase

struct RoomSetupView: View {
    @Binding var selectedRoom: Int
    @State var lostItem = ""
    @State var status = ""
    @State var showChangeStatusAlert = false
    @State var changedStatus = ""
    
    
    var body: some View {
        VStack {
            Text("\(selectedRoom)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("現在の部屋状況:")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("\(status)")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
        
            Text("ステータス変更 ▼")
                .font(.largeTitle)
                .padding()
            
            
            HStack {
                Button {
                    changedStatus = "清掃指示"
                    status = changedStatus
                    showChangeStatusAlert = true
                    changeStatusToCleaning_Required(roomNumber: selectedRoom)
                } label: {
                    Text("清掃指示")
                        .font(.largeTitle)
                        .frame(width: 150, height: 100)
                        .background(Color.orange)
                        .foregroundColor(.black)
                }
                
                Button {
                    changeStatusToCleaning_In_Progress(roomNumber: selectedRoom)
                    changedStatus = "清掃中"
                    status = changedStatus
                    showChangeStatusAlert = true
                } label: {
                    Text("清掃中")
                        .font(.largeTitle)
                        .frame(width: 150, height: 100)
                        .background(Color.yellow)
                        .foregroundColor(.black)
                }
                
                Button {
                    changeStatusToInspection_In_Progress(roomNumber: selectedRoom)
                    changedStatus = "点検中"
                    status = changedStatus
                    showChangeStatusAlert = true
                } label: {
                    Text("点検中")
                        .font(.largeTitle)
                        .frame(width: 150, height: 100)
                        .background(Color.green)
                        .foregroundColor(.black)
                }
            }//HStack
            
            HStack {
                Button {
                    changeStatusToCleaning_Completed(roomNumber: selectedRoom)
                    changedStatus = "清掃済み"
                    status = changedStatus
                    showChangeStatusAlert = true
                } label: {
                    Text("清掃済み")
                        .font(.largeTitle)
                        .frame(width: 150, height: 100)
                        .background(Color.blue)
                        .foregroundColor(.black)
                }
                
                Button {
                    changeStatusToDont_Disturb(roomNumber: selectedRoom)
                    changedStatus = "D/D"
                    status = changedStatus
                    showChangeStatusAlert = true
                } label: {
                    Text("D/D")
                        .font(.largeTitle)
                        .frame(width: 150, height: 100)
                        .background(.black)
                        .foregroundColor(.white)
                    
                }
                /*
                Button {
                    changeStatusToStop_Providing(roomNumber: selectedRoom)
                    changedStatus = "売止"
                    status = changedStatus
                    showChangeStatusAlert = true
                } label: {
                    Text("売止")
                        .font(.largeTitle)
                        .frame(width: 150, height: 100)
                        .background(.red)
                        .foregroundColor(.black)
                    
                }*/
            }//HStack
            .padding()
            
        }//VStack
        .onAppear {
            let ref = Database.database().reference()
            ref.child("rooms/\(selectedRoom)/status").getData { (error, snapshot) in
                
                if let error = error {
                    print("データ取得エラー: \(error)")
                } else if let snapshot = snapshot, snapshot.exists() {
                    
                    if let status = snapshot.value as? String {
                        self.status = status
                    } else {
                        print("ステータスの型が不正です")
                    }
                } else {
                    print("データが存在しません")
                }
            }
        }//onAppear
        .alert("客室ステータス変更通知", isPresented: $showChangeStatusAlert) {
            Button("OK") {
                
            }
        } message: {
            Text("「\(changedStatus)」に変更しました")
        }//alert
        
        
    }
        
}

#Preview {
    RoomSetupView(selectedRoom: .constant(201))
}

