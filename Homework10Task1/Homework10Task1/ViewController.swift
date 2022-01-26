//
//  ViewController.swift
//  Homework10Task1
//
//  Created by Виталий on 26.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onStartAction(_ sender: Any) {
        transitionVC()
    }
    // MARK: - ViewControllerLifeCycle
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private Metods
    // MARK: -

    private func transitionVC() {
        let vc = UIStoryboard.init(name: "GameViewController", bundle: Bundle.main).instantiateInitialViewController() as! GameViewController
        navigationController?.pushViewController(vc, animated: true)
    }


}

