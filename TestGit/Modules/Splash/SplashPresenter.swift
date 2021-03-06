//
//  SplashPresenter.swift
//  TestGit
//
//  Created by Игорь Дикань on 22.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SplashPresentationLogic {
    func presentData(response: Splash.Model.Response.ResponseType)
}

final class SplashPresenter {
    
    // MARK: - External vars
    weak var viewController: SplashDisplayLogic?
}

// MARK: - Presentation logic
extension SplashPresenter: SplashPresentationLogic {
    
    func presentData(response: Splash.Model.Response.ResponseType) {
        switch response {
        case .some:
            print("SplashInteractor")
            viewController?.display(viewModel: .some)
        }
    }
}
