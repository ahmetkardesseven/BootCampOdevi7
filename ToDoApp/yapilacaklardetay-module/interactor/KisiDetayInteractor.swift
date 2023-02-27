//
//  KisiDetayInteractor.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class YapilacakDetayInteractor : PresenterToInteractorYapilacakDetayProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func guncelle(yapilacak_id yapilacak_id: Int, yapilacak_ad yapilacak_ad: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE kisiler SET kisi_ad = ?", values: [yapilacak_ad,yapilacak_id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
