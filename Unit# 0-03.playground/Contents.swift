// Created on: Sept , 2018
// Created by: Brody MacNeil
// Created for: ICS3U
// This program is the UIKit solution for the "Name City Country" to appear when you hit the click me 
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    let addressButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        //nameLabel.text = "Brody"
        nameLabel.textColor = #colorLiteral(red: 0.219607844948769, green: 0.00784313771873713, blue: 0.854901969432831, alpha: 1.0)
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        //cityLabel.text = "Ottawa"
        cityLabel.textColor = #colorLiteral(red: 0.219607844948769, green: 0.00784313771873713, blue: 0.854901969432831, alpha: 1.0)
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        //countryLabel.text = "Canada"
        countryLabel.textColor = #colorLiteral(red: 0.219607844948769, green: 0.00784313771873713, blue: 0.854901969432831, alpha: 1.0)
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20).isActive = true
        countryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        addressButton.setTitle("Click Me", for: UIControlState.normal)
        addressButton.setTitleColor(.blue, for: .normal)
        addressButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(addressButton)
        addressButton.translatesAutoresizingMaskIntoConstraints = false
        addressButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addressButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =
        true
    }
    @objc func showText() {
        // show Brody Ottawa Canada
        cityLabel.text = "Ottawa"
        nameLabel.text = "Brody"
        countryLabel.text = "Canada"
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

