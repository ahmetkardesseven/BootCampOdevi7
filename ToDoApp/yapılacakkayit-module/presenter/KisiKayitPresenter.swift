//
//  KisiKayitPresenter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class KisiKayitPresenter : ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor: PresenterToInteractorKisiKayitProtocol?
    
    func kaydet(kisi_ad: String, kisi_tel: String) {
        kisiKayitInteractor?.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
