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
    
    func `sil`(kisi_id: Int) {
        anasayfaInteractor?.sil(kisi_id: kisi_id)
    }
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: [Kisiler]) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
}
