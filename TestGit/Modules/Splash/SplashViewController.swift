//
//  SplashViewController.swift
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

protocol SplashDisplayLogic: class {
    func display(viewModel: Splash.Model.ViewModel.ViewModelType)
}

final class SplashViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - External vars
    var interactor: SplashBusinessLogic?
    var router: (NSObjectProtocol & SplashRoutingLogic & SplashDataPassing)?
    
    // MARK: - Internal vars

    // MARK: - Object lifecycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        SplashConfigurator.shared.configure(self)
    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        SplashConfigurator.shared.configure(self)
    }
  
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - IBActions
}

// MARK: - Display logic
extension SplashViewController: SplashDisplayLogic {
    
    func display(viewModel: Splash.Model.ViewModel.ViewModelType) {
        switch viewModel {
        case .some:
            print("SplashViewController")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.router?.routeToMain()
            }
        }
    }
}

// MARK: - Private methods
private extension SplashViewController {
    
    func setupView() {
        interactor?.make(request: .some)
    }
}
