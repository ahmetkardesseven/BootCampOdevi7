//
//  KisiKayitInteractor.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class YapilacaklariEkleInteractor : PresenterToInteractorYapilacaklariEkleProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet(yapilacak_ad: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO kisiler (kisi_ad) VALUES (?)", values: [yapilacak_ad])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
