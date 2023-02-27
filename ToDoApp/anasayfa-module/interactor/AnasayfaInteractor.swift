//
//  AnasayfaInteractor.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kisileriYukle() {
        var liste = [Kisiler]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while rs.next() {
                let kisi_id = Int(rs.string(forColumn: "kisi_id"))!
                let kisi_ad = rs.string(forColumn: "kisi_ad")!
                
                
                let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad)
                liste.append(kisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func ara(aramaKelimesi: String) {
        var liste = [Kisiler]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM kisiler WHERE kisi_ad like ?", values: ["%\(aramaKelimesi)%"])
            
            while rs.next() {
                let kisi_id = Int(rs.string(forColumn: "kisi_id"))!
                let kisi_ad = rs.string(forColumn: "kisi_ad")!
                
                
                let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad)
                liste.append(kisi)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func `sil`(kisi_id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM kisiler WHERE kisi_id = ?", values: [kisi_id])
            kisileriYukle()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
