//
//  ImagePickerView.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/10/03.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    //Binding変数は別Viewの「＠State」変数との間で双方向データ連動ができる構造体
    
    //UIImagePickerController(写真撮影)が表示されているかを管理するBinding変数
    @Binding var isShowSheet: Bool
    //撮影した写真を格納するBinding変数
    @Binding var captureImage: UIImage?
    
    //CoordinatorクラスでコントローラのDelegateを管理
    //Delegateメソッドとは処理が完了したときに通知され, その中の処理が実行されるメソッドのこと
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        //ImagePickerView型の定数用意
        let parent: ImagePickerView
        
        //イニシャライザ
        init(_ parent: ImagePickerView) {
            self.parent = parent
        }
        
        //撮影が終わったときに呼ばれるdelegateメソッド
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            //撮影した写真をcaptureImageに保存
            if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.captureImage = originalImage
            }
            
            //sheetを閉じる
            parent.isShowSheet.toggle()
        }
        
        //キャンセルボタンが選択されたときに呼ばれるdelegateメソッド、必ず必要
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            //sheetを閉じる
            parent.isShowSheet.toggle()
        }
        
    }
    
    //Coordinatorを生成, SwiftUIによって自動的に呼び出し
    func makeCoordinator() -> Coordinator {
        //Coordinatorクラスのインスタンスを生成
        Coordinator(self)
    }
    
    //Viewを生成するときに実行
    func makeUIViewController(context: Context) -> some UIViewController {
        //UIImagePickerControllerのインスタンスを生成
        let myImagePickerController = UIImagePickerController()
        
        //sourceTypeにcameraを設定
        myImagePickerController.sourceType = .camera
        
        //delegate設定
        myImagePickerController.delegate = context.coordinator
        
        //UIImagePickerControllerを返す
        return myImagePickerController
    }
    
    //Viewが更新されたときに実行
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //処理なし
    }
    
}
