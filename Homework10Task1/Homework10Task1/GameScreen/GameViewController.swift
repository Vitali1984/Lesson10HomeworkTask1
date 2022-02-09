//
//  GameViewController.swift
//  Homework10Task1
//
//  Created by Виталий on 26.01.22.
//

import UIKit

class GameViewController: UIViewController {
    
    private var label: UILabel!

    // MARK: - ViewControllerLifeCycle
    // MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Game"

        createLabel()
        createGesture()
    }
    
    // MARK: - GestureRecognizer
    // MARK: -
    
    @IBAction func onTap(gesture: UITapGestureRecognizer) {
        label.text = "Tap Me"
        let locationLabel = gesture.location(in: view)
        let locationX = locationLabel.x - 50
        let locationY = locationLabel.y - 50
        label.frame = CGRect(x: locationX, y: locationY, width: 100, height: 100)
        label.layer.cornerRadius = 50
        label.clipsToBounds = true
        label.backgroundColor = getRandomColor()
        label.isUserInteractionEnabled = true
    }
    
    @objc func onTapFrame(gesture: UITapGestureRecognizer) {
        print("remove")
        label.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    }
    
    // MARK: - Private Metods
    // MARK: -

    private func getRandomColor() -> UIColor {
         let red:CGFloat = .random(in: 0...1)
         let green:CGFloat = .random(in: 0...1)
         let blue:CGFloat = .random(in: 0...1)

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    private func createGesture() {
        let tapGestureReconizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(tapGestureReconizer)
        
        let tapGestureReconizerWithFrame = UITapGestureRecognizer(target: self, action: #selector(onTapFrame))
        label.addGestureRecognizer(tapGestureReconizerWithFrame)
    }
    
    private func createLabel() {
        label = UILabel()
        view.addSubview(label)
    }
}
