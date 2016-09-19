//
//  ViewController.swift
//  SeCoucherMoinsBete
//
//  Created by Mohamed on 18/09/2016.
//  Copyright © 2016 oulmaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var informationLabel: UILabel!
    
    @IBOutlet weak var showInfoButton: UIButton!
    let informationsModel = InformationModel()
    let colorModel = ColorModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showRandomInfoAndColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNewInformation() {
     showRandomInfoAndColor()
    }
    
    func showRandomInfoAndColor () {
        let randomInfo = informationsModel.getRandomInfo()
        let randomColor = colorModel.getRandomColor()
        informationLabel.text = randomInfo
        view.backgroundColor = randomColor
        showInfoButton.tintColor = randomColor
    }

}

