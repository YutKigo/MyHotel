//
//  LostItemSettingView.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/10/02.
//

import SwiftUI
import Firebase

struct LostItemSettingView: View {
    @State var roomNumber: String = ""
    @State var discoverer: String = ""
    @State var captureImage: UIImage? = nil
    @State var isShowSheet: Bool = false
    
    var body: some View {
        VStack {
            Text("忘れ物・設備登録画面")
                .padding()
                .frame(width: 500, height: 100)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            TextField("部屋番号", text: $roomNumber, prompt:
                        Text("部屋番号を入力"))
            .padding()
            .frame(width: 400, height: 60)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .border(Color.blue, width: 2)
            
            TextField("発見者を入力", text: $discoverer, prompt:
                        Text("発見者の名前を入力"))
            .padding()
            .frame(width: 400, height: 60)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .border(Color.blue, width: 2)
            
            Button {
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    print("カメラ利用可能")
                    isShowSheet.toggle()
                } else {
                    print("カメラ利用不可")
                }
            } label: {
                Text("忘れ物を写真で入力")
                    .padding()
                    .frame(width: 400, height: 60)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .border(Color.blue, width: 2)
            }
            
            if let captureImage {
                Image(uiImage: captureImage)
                    .resizable()
                    .scaledToFit()
            } else {
                Text("")
                    .frame(width: 400, height: 400)
            }
            
            Button {
                 
            } label: {
                Text("登録")
                    .padding()
                    .frame(width: 400, height: 90)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .border(Color.blue, width: 2)
                    .background(.blue)
                    .foregroundStyle(.white)
            }
            
        }//VStack
        .sheet(isPresented: $isShowSheet) {
            ImagePickerView(isShowSheet: $isShowSheet, captureImage: $captureImage)
        }
        
    }
}

#Preview {
    LostItemSettingView()
}
