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
var X = [Int]()



class SecondView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myArray = [String]()
    var stopped = false
    
    let pianoSoundC3 = Bundle.main.url(forResource: "DO1", withExtension: "mp3")!
    weak var audioPlayerC3: Sound!
    
    let pianoSoundCS = Bundle.main.url(forResource: "DO#", withExtension: "mp3")!
    weak var audioPlayerCS: Sound!
    
    let pianoSoundD = Bundle.main.url(forResource: "RE", withExtension: "mp3")!
    weak var audioPlayerD: Sound!
    
    let pianoSoundDS = Bundle.main.url(forResource: "RE#", withExtension: "mp3")!
    weak var audioPlayerDS: Sound!
    
    let pianoSoundE = Bundle.main.url(forResource: "MI", withExtension: "mp3")!
    weak var audioPlayerE: Sound!
    
    let pianoSoundF = Bundle.main.url(forResource: "FA", withExtension: "mp3")!
    weak var audioPlayerF: Sound!
    
    let pianoSoundFS = Bundle.main.url(forResource: "FA#", withExtension: "mp3")!
    weak var audioPlayerFS: Sound!
    
    let pianoSoundG = Bundle.main.url(forResource: "SOL", withExtension: "mp3")!
    weak var audioPlayerG: Sound!
    
    let pianoSoundGS = Bundle.main.url(forResource: "SOL#", withExtension: "mp3")!
    weak var audioPlayerGS: Sound!
    
    let pianoSoundA = Bundle.main.url(forResource: "LA", withExtension: "mp3")!
    weak var audioPlayerA: Sound!
    
    let pianoSoundAS = Bundle.main.url(forResource: "LA#", withExtension: "mp3")!
    weak var audioPlayerAS: Sound!
    
    let pianoSoundB = Bundle.main.url(forResource: "SI", withExtension: "mp3")!
    weak var audioPlayerB: Sound!
    
    let pianoSoundC4 = Bundle.main.url(forResource: "DO2", withExtension: "mp3")!
    weak var audioPlayerC4: Sound!
    
    @IBOutlet weak var myTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row + 1) + " - " + list[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        if sourceIndexPath.row != destinationIndexPath.row {
            swap(&list[sourceIndexPath.row], &list[destinationIndexPath.row])
            tableView.reloadData()
        }
    }
    
    
    public func Scroll(){
        let numberOfSections = myTableView.numberOfSections
        let numberOfRows = myTableView.numberOfRows(inSection: numberOfSections-1)
        
        let indexPath = IndexPath(row: numberOfRows-1 , section: numberOfSections-1)
        myTableView.scrollToRow(at: indexPath, at: UITableViewScrollPosition.middle, animated: true)
        
        let x = numberOfRows
        X = [x];
        
        
    }
    
    
    @IBAction func C3(_ sender: UIButton) {
        audioPlayerC3?.play()
        list.append("DO1 - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
    }
    
    @IBAction func CS(_ sender: UIButton) {
        audioPlayerCS?.play()
        list.append("DO# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func D(_ sender: UIButton) {
        audioPlayerD?.play()
        list.append("RE - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func DS(_ sender: UIButton) {
        audioPlayerDS?.play()
        list.append("RE# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func E(_ sender: UIButton) {
        audioPlayerE?.play()
        list.append("MI - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func F(_ sender: UIButton) {
        audioPlayerF?.play()
        list.append("FA - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func FS(_ sender: UIButton) {
        audioPlayerFS?.play()
        list.append("FA# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func G(_ sender: UIButton) {
        audioPlayerG?.play()
        list.append("SOL - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func GS(_ sender: UIButton) {
        audioPlayerGS?.play()
        list.append("SOL# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
    }
    
    @IBAction func A(_ sender: UIButton) {
        audioPlayerA?.play()
        list.append("LA - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func AS(_ sender: UIButton) {
        audioPlayerAS?.play()
        list.append("LA# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func B(_ sender: UIButton) {
        audioPlayerB?.play()
        list.append("SI - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func C4(_ sender: UIButton) {
        audioPlayerC4?.play()
        list.append("DO2 - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myTableView.flashScrollIndicators()
        myTableView.reloadData()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Sound.enabled = true
        Sound.playersPerSound = 10
        
        audioPlayerC3 = Sound(url: pianoSoundC3)
        audioPlayerCS = Sound(url: pianoSoundCS)
        audioPlayerD  = Sound(url: pianoSoundD)
        audioPlayerDS = Sound(url: pianoSoundDS)
        audioPlayerE  = Sound(url: pianoSoundE)
        audioPlayerF  = Sound(url: pianoSoundF)
        audioPlayerFS = Sound(url: pianoSoundFS)
        audioPlayerG  = Sound(url: pianoSoundG)
        audioPlayerGS = Sound(url: pianoSoundGS)
        audioPlayerA  = Sound(url: pianoSoundA)
        audioPlayerAS = Sound(url: pianoSoundAS)
        audioPlayerB  = Sound(url: pianoSoundB)
        audioPlayerC4 = Sound(url: pianoSoundC4)
        
        myTableView.setEditing(true, animated: true)
    }
    
    @IBAction func clearTable(_ sender: Any) {
        list.removeAll()
        myTableView.reloadData()
        
    }
    
    @IBOutlet var sleepInterval: UITextField!
    
    @IBAction func PlaySounds(_ sender: UIButton) {
        if list.count > 0 {
            for i in 0 ..< list.count {
                var soundSplit = list[i].components(separatedBy: " - ")
                
                switch soundSplit[0] {
                case "DO1":
                    audioPlayerC3?.play()
                case "DO#":
                    audioPlayerCS?.play()
                case "RE":
                    audioPlayerD?.play()
                case "RE#":
                    audioPlayerDS?.play()
                case "MI":
                    audioPlayerE?.play()
                case "FA":
                    audioPlayerF?.play()
                case "FA#":
                    audioPlayerFS?.play()
                case "SOL" :
                    audioPlayerG?.play()
                case "SOL#":
                    audioPlayerGS?.play()
                case "LA":
                    audioPlayerA?.play()
                case "LA#":
                    audioPlayerAS?.play()
                case "SI":
                    audioPlayerB?.play()
                case "DO2":
                    audioPlayerC4?.play()
                default:
                    print("None")
                }
                
                soundSplit[1] = soundSplit[1].replacingOccurrences(of: ",", with: ".")
                let sleep = useconds_t(Float(soundSplit[1])! * 1000000)
                
                usleep(sleep)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


