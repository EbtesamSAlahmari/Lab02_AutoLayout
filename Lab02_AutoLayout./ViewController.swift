//
//  ViewController.swift
//  Lab02_AutoLayout.
//
//  Created by Ebtesam Alahmari on 15/11/2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    var infoArr = [
        Info(name: "Apple Frames", icon: "square", numberOfActions: "169 actions", color: #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)),
        Info(name: "Twitter Video Downloder V2.6", icon: "square.and.arrow.down.fill", numberOfActions: "76 actions", color: #colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)),
        Info(name: "Calculate Tip", icon: "dollarsign.circle.fill", numberOfActions: "17 actions", color: #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)),
        Info(name: "XS Frames", icon: "phone.fill", numberOfActions: "55 actions", color: #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) ),
        Info(name: "Waht's a shourtcut?", icon: "square.2.stack.3d", numberOfActions: "37 actions", color: #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1) ),
        Info(name: "Take a Break", icon: "timer", numberOfActions: "13 actions", color: #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)),
        Info(name: "Text Last Image", icon: "plus.message.fill", numberOfActions: "2 actions", color: #colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1)),
        Info(name: "Shazam shourtcut", icon: "waveform.path", numberOfActions: "32 actions", color: #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1) )
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return infoArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.lblName.text = infoArr[indexPath.item].name
        cell.lblActionNum.text = infoArr[indexPath.item].numberOfActions
        cell.img.image = UIImage(systemName: infoArr[indexPath.item].icon)
        cell.infoView.layer.cornerRadius = 20
        cell.infoView.backgroundColor = infoArr[indexPath.item].color
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 160)
    }
    
    
}

