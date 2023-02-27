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
        var liste = [Yapilacaklar]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while rs.next() {
                let yapilacak_id = Int(rs.string(forColumn: "kisi_id"))!
                let yapilacak_ad = rs.string(forColumn: "kisi_ad")!
                
                
                let yapilacak = Yapilacaklar(yapilacak_id: yapilacak_id, yapilacak_ad: yapilacak_ad)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func ara(aramaKelimesi: String) {
        var liste = [Yapilacaklar]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM kisiler WHERE kisi_ad like ?", values: ["%\(aramaKelimesi)%"])
            
            while rs.next() {
                let yapilacak_id = Int(rs.string(forColumn: "kisi_id"))!
                let yapilacak_ad = rs.string(forColumn: "kisi_ad")!
                
                
                let yapilacak = Yapilacaklar(yapilacak_id: yapilacak_id, yapilacak_ad: yapilacak_ad)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func `sil`(yapilacak_id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM kisiler WHERE kisi_id = ?", values: [yapilacak_id])
            kisileriYukle()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
