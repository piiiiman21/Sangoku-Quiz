//
//  ViewController.swift
//  SangokuQuiz
//
//  Created by 木崎伸之助 on 2021/07/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var player0:AVAudioPlayer?
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 再生する音声ファイルを指定する
               let url = Bundle.main.bundleURL.appendingPathComponent("かえるのピアノ.mp3")
               do {
                   try player0 = AVAudioPlayer(contentsOf: url)
               } catch {
                   print("Error")
               }
               player0!.play()
               //音声をループさせる
               player0!.numberOfLoops = -1
    
        // Do any additional setup after loading the view.
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.white.cgColor
    }


}

