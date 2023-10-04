//
//  ViewController.swift
//  Xylophone
//
//  Created by Eduard Zepciuc on 25.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CKey(_ sender: UIButton) {
        //print(sender.titleLabel?.text)
        playSound(soundName: (sender.titleLabel?.text)!)
    }
    
    func playSound(soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

