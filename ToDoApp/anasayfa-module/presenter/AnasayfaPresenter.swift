//
//  AnasayfaPresenter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.kisileriYukle()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func `sil`(yapilacak_id : Int) {
        anasayfaInteractor?.sil(yapilacak_id: yapilacak_id)
    }
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: [Yapilacaklar]) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
}
