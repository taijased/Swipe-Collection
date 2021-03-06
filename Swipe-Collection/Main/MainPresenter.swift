//
//  MainPresenter.swift
//  Swipe-Collection
//
//  Created by Maxim Spiridonov on 21/05/2019.
//  Copyright (c) 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

protocol MainPresentationLogic {
  func presentData(response: Main.Model.Response.ResponseType)
}

class MainPresenter: MainPresentationLogic {
  weak var viewController: MainDisplayLogic?
  
  func presentData(response: Main.Model.Response.ResponseType) {
  
  }
  
}
