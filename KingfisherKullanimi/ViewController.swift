//
//  ViewController.swift
//  KingfisherKullanimi
//
//  Created by Beyza Karadeniz on 8.01.2022.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resimGoster(resimAdi: "ayran.png")
    }

    @IBAction func buton1Tiklandi(_ sender: Any) {
        resimGoster(resimAdi: "fanta.png")
    }
    
    @IBAction func buton2Tiklandı(_ sender: Any) {
        resimGoster(resimAdi: "kofte.png")

    }
    
    func resimGoster(resimAdi : String){
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi)"){
            DispatchQueue.main.async{
            self.imageView.kf.setImage(with: url )
            }
            
        }
    }
}

