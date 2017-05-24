//
//  ViewController.swift
//  FirstPianoApp
//
//  Created by Alex on 28/03/2017.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

var list = [String]()


class SecondView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myArray = [String]()
    
    let pianoSoundC3 = Bundle.main.url(forResource: "DO1", withExtension: "mp3")!
    var audioPlayerC3 = AVAudioPlayer()
    
    let pianoSoundCS = Bundle.main.url(forResource: "DO#", withExtension: "mp3")!
    var audioPlayerCS = AVAudioPlayer()
    
    let pianoSoundD = Bundle.main.url(forResource: "RE", withExtension: "mp3")!
    var audioPlayerD = AVAudioPlayer()
    
    let pianoSoundDS = Bundle.main.url(forResource: "RE#", withExtension: "mp3")!
    var audioPlayerDS = AVAudioPlayer()
    
    let pianoSoundE = Bundle.main.url(forResource: "MI", withExtension: "mp3")!
    var audioPlayerE = AVAudioPlayer()
    
    let pianoSoundF = Bundle.main.url(forResource: "FA", withExtension: "mp3")!
    var audioPlayerF = AVAudioPlayer()
    
    let pianoSoundFS = Bundle.main.url(forResource: "FA#", withExtension: "mp3")!
    var audioPlayerFS = AVAudioPlayer()
    
    let pianoSoundG = Bundle.main.url(forResource: "SOL", withExtension: "mp3")!
    var audioPlayerG = AVAudioPlayer()
    
    let pianoSoundGS = Bundle.main.url(forResource: "SOL#", withExtension: "mp3")!
    var audioPlayerGS = AVAudioPlayer()
    
    let pianoSoundA = Bundle.main.url(forResource: "LA", withExtension: "mp3")!
    var audioPlayerA = AVAudioPlayer()
    
    let pianoSoundAS = Bundle.main.url(forResource: "LA#", withExtension: "mp3")!
    var audioPlayerAS = AVAudioPlayer()
    
    let pianoSoundB = Bundle.main.url(forResource: "SI", withExtension: "mp3")!
    var audioPlayerB = AVAudioPlayer()
    
    let pianoSoundC4 = Bundle.main.url(forResource: "DO2", withExtension: "mp3")!
    var audioPlayerC4 = AVAudioPlayer()
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var DO1: UIButton!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        
        return(cell)
    }
    
    public func Scroll(){
        let numberOfSections = myTableView.numberOfSections
        let numberOfRows = myTableView.numberOfRows(inSection: numberOfSections-1)
        
        let indexPath = IndexPath(row: numberOfRows-1 , section: numberOfSections-1)
        myTableView.scrollToRow(at: indexPath, at: UITableViewScrollPosition.middle, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }
    
    @IBAction func C3(_ sender: UIButton) {
        audioPlayerC3.currentTime = 0
        //audioPlayerC3.enableRate = true
        //audioPlayerC3.rate = Float(5.0)
        audioPlayerC3.play()
        list.append("DO1")
        myTableView.reloadData()
        Scroll()

        
        
    }
    
    @IBAction func CS(_ sender: UIButton) {
        audioPlayerCS.currentTime = 0
        audioPlayerCS.play()
        list.append("DO#")
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func D(_ sender: UIButton) {
        audioPlayerD.currentTime = 0
        audioPlayerD.play()
        list.append("RE")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func DS(_ sender: UIButton) {
        audioPlayerDS.currentTime = 0
        audioPlayerDS.play()
        list.append("RE#")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func E(_ sender: UIButton) {
        audioPlayerE.currentTime = 0
        audioPlayerE.play()
        list.append("MI")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func F(_ sender: UIButton) {
        audioPlayerF.currentTime = 0
        audioPlayerF.play()
        list.append("FA")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func FS(_ sender: UIButton) {
        audioPlayerFS.currentTime = 0
        audioPlayerFS.play()
        list.append("FA#")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func G(_ sender: UIButton) {
        audioPlayerG.currentTime = 0
        audioPlayerG.play()
        list.append("SOL")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func GS(_ sender: UIButton) {
        audioPlayerGS.currentTime = 0
        audioPlayerGS.play()
        list.append("SOL#")
        myTableView.reloadData()
        Scroll()
    }
    
    @IBAction func A(_ sender: UIButton) {
        audioPlayerA.currentTime = 0
        audioPlayerA.play()
        list.append("LA")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func AS(_ sender: UIButton) {
        audioPlayerAS.currentTime = 0
        audioPlayerAS.play()
        list.append("LA#")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func B(_ sender: UIButton) {
        audioPlayerB.currentTime = 0
        audioPlayerB.play()
        list.append("SI")
        myTableView.reloadData()
        Scroll()

    }
    
    @IBAction func C4(_ sender: UIButton) {
        audioPlayerC4.currentTime = 0
        audioPlayerC4.play()
        list.append("DO2")
        myTableView.reloadData()
        Scroll()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myTableView.flashScrollIndicators()
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try audioPlayerC3 = AVAudioPlayer(contentsOf: pianoSoundC3 as URL)
            audioPlayerC3.prepareToPlay()
            
            try audioPlayerCS = AVAudioPlayer(contentsOf: pianoSoundCS as URL)
            audioPlayerCS.prepareToPlay()
            
            try audioPlayerD = AVAudioPlayer(contentsOf: pianoSoundD as URL)
            audioPlayerD.prepareToPlay()
            
            try audioPlayerDS = AVAudioPlayer(contentsOf: pianoSoundDS as URL)
            audioPlayerDS.prepareToPlay()
            
            try audioPlayerE = AVAudioPlayer(contentsOf: pianoSoundE as URL)
            audioPlayerE.prepareToPlay()
            
            try audioPlayerF = AVAudioPlayer(contentsOf: pianoSoundF as URL)
            audioPlayerF.prepareToPlay()
            
            try audioPlayerFS = AVAudioPlayer(contentsOf: pianoSoundFS as URL)
            audioPlayerFS.prepareToPlay()
            
            try audioPlayerG = AVAudioPlayer(contentsOf: pianoSoundG as URL)
            audioPlayerG.prepareToPlay()
            
            try audioPlayerGS = AVAudioPlayer(contentsOf: pianoSoundGS as URL)
            audioPlayerGS.prepareToPlay()
            
            try audioPlayerA = AVAudioPlayer(contentsOf: pianoSoundA as URL)
            audioPlayerA.prepareToPlay()
            
            try audioPlayerAS = AVAudioPlayer(contentsOf: pianoSoundAS as URL)
            audioPlayerAS.prepareToPlay()
            
            try audioPlayerB = AVAudioPlayer(contentsOf: pianoSoundB as URL)
            audioPlayerB.prepareToPlay()
            
            try audioPlayerC4 = AVAudioPlayer(contentsOf: pianoSoundC4 as URL)
            audioPlayerC4.prepareToPlay()
        } catch {
            
        }

        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


