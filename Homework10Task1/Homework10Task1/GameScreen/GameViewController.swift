//
//  GameViewController.swift
//  Homework10Task1
//
//  Created by Виталий on 26.01.22.
//

import UIKit

class GameViewController: UIViewController {
    
    private var label: UILabel!

    // MARK: -ViewControllerLifeCycle
    // MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)

        label = UILabel()
        label.text = "Tap Me"
        label.layer.cornerRadius = 50
        customView.addSubview(label)
        
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Game"
        view.backgroundColor = .systemGreen
        
        let tapGestureReconizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(tapGestureReconizer)
        
        let tapGestureReconizerWithFrame = UITapGestureRecognizer(target: self, action: #selector(onPanFrame))
        label.addGestureRecognizer(tapGestureReconizerWithFrame)

        // Do any additional setup after loading the view.
    }

    
    // MARK: -GestureRecognizer
    // MARK: -

    @IBAction func onTap(gesture: UITapGestureRecognizer) {
        label.frame.origin = gesture.location(in: view)
        label.frame.size = CGSize(width: 100, height: 100)
        label.backgroundColor = getRandomColor()
        
    }

    
    // MARK: -Private Metods
    // MARK: -

    @objc func onPanFrame(gesture: UIPanGestureRecognizer) {
        //label.removeFromSuperview()
    }
    
    func getRandomColor() -> UIColor {
         let red:CGFloat = .random(in: 0...1)
         let green:CGFloat = .random(in: 0...1)
         let blue:CGFloat = .random(in: 0...1)

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
