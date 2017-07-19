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

    @IBOutlet weak var meowButton_1: UIButton!
    @IBOutlet weak var meowButton_2: UIButton!
    @IBOutlet weak var meowButton_3: UIButton!
    @IBOutlet weak var meowButton_4: UIButton!
    @IBOutlet weak var meowButton_5: UIButton!
    @IBOutlet weak var meowButton_6: UIButton!
    @IBOutlet weak var meowButton_7: UIButton!
    @IBOutlet weak var meowButton_8: UIButton!
    @IBOutlet weak var meowButton_9: UIButton!
    @IBOutlet weak var meowButton_10: UIButton!
    @IBOutlet weak var meowButton_11: UIButton!
    @IBOutlet weak var meowButton_12: UIButton!

    
    
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func playSound(filename:String, button:DesignableButton){
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(filename, ofType: "wav")!)
        //  println(alertSound)
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        button.scaleX = 1.2
        button.scaleY = 1.2
        button.duration = 0.7
        button.animateNext{
            button.scaleX = 1
            button.scaleY = 1
        }
    }
    

    @IBAction func meowButtonDidTouch_1(sender: AnyObject) {playSound("meow3", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_2(sender: AnyObject) {playSound("miu", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_3(sender: AnyObject) {playSound("meow2", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_4(sender: AnyObject) {playSound("angry", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_5(sender: AnyObject) {playSound("meow4", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_6(sender: AnyObject) {playSound("angry2", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_7(sender: AnyObject) {playSound("meow1", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_8(sender: AnyObject) {playSound("purr", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_9(sender: AnyObject) {playSound("aow", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_10(sender: AnyObject) {playSound("sleep", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_11(sender: AnyObject) {playSound("meow", button: sender as! DesignableButton)}
    @IBAction func meowButtonDidTouch_12(sender: AnyObject) {playSound("meow5", button: sender as! DesignableButton)}

}