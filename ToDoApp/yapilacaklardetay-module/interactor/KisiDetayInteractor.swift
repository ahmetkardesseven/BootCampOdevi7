//
//  KisiDetayInteractor.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class KisiDetayInteractor : PresenterToInteractorKisiDetayProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func guncelle(kisi_id: Int, kisi_ad: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE kisiler SET kisi_ad = ?", values: [kisi_ad,kisi_id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
