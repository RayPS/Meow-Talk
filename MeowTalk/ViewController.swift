//
//  ViewController.swift
//  MeowTalk
//
//  Created by Ray on 3/23/15.
//  Copyright (c) 2015 RayPS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!

    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
//    func playSound(_ fileName:String, button:DesignableButton){
//        var alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: filename, ofType: "wav")!)
//        var error:NSError?
//        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
//        audioPlayer.prepareToPlay()
//        audioPlayer.play()
//    }

    @IBAction func tapped(_ sender: UIButton) {
    }




}
