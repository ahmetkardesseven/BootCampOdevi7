//
//  KisiDetayPresenter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation


class KisiDetayPresenter : ViewToPresenterKisiDetayProtocol  {
    var kisiDetayInteractor: PresenterToInteractorKisiDetayProtocol?
    
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        kisiDetayInteractor?.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
