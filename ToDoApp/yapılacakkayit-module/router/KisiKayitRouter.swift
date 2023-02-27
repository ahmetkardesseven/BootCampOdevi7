//
//  KisiKayitRouter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation


class YapilacaklariEkleRouter : PresenterToRouterYapilacaklariEkleProtocol {
    static func createModule(ref: YapilacaklariEkle) {
        ref.YapilacaklariEklePresenterNesnesi = YapilacaklariEklePresenter()
        ref.YapilacaklariEklePresenterNesnesi?.YapilacaklariEkleInteractor = YapilacaklariEkleInteractor()
    }
}
