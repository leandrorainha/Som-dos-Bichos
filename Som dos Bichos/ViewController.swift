//
//  ViewController.swift
//  Som dos Bichos
//
//  Created by LEANDRO RAINHA on 27/02/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    @IBAction func cao(_ sender: UIButton) {
        self.executarSom(nomeSom: "cao")
        
    }
    @IBAction func gato(_ sender: UIButton) {
        self.executarSom(nomeSom: "gato")
        
    }
    @IBAction func leao(_ sender: UIButton) {
        self.executarSom(nomeSom: "leao")
        
    }
    @IBAction func macaco(_ sender: UIButton) {
        self.executarSom(nomeSom: "macaco")
        
    }
    @IBAction func ovelha(_ sender: UIButton) {
        self.executarSom(nomeSom: "ovelha")
        
    }
    @IBAction func vaca(_ sender: UIButton) {
        self.executarSom(nomeSom: "vaca")
        
    }
    
    func executarSom(nomeSom: String){
        
        if  let path = Bundle.main.path(forResource: nomeSom, ofType: "mp3"){
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            } catch {
                print("Erro ao executar o audio")
            }
        }
        
        
    }
    
}


