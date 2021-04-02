//
//  ViewController.swift
//  maz - UIimage&UiButton - DDP
//
//  Created by Shaik abdul mazeed on 04/12/20.
//  Copyright © 2020 Shaik abdul mazeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //creating InterfaceBuilder outlets
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var lightsButton: UIButton!
    @IBOutlet weak var fanButton: UIButton!
    @IBOutlet weak var speakerButton: UIButton!
    @IBOutlet weak var fans: UILabel!
    @IBOutlet weak var lights: UILabel!
    @IBOutlet weak var speakers: UILabel!
   
    
    @IBOutlet weak var wooferSwitch: UISwitch!
    @IBOutlet weak var wooferImage: UIImageView!
    
    @IBOutlet weak var fan2Switch: UISwitch!
    @IBOutlet weak var fan2Image: UIImageView!
    
    @IBOutlet weak var fan1Switch: UISwitch!
    @IBOutlet weak var fan1Image: UIImageView!
    
    @IBOutlet weak var light2Switch: UISwitch!
    @IBOutlet weak var light2Image: UIImageView!
    
    @IBOutlet weak var light1Switch: UISwitch!
    @IBOutlet weak var light1Image: UIImageView!
    
    @IBOutlet weak var speaker4Switch: UISwitch!
    @IBOutlet weak var speaker4Image: UIImageView!
    
    @IBOutlet weak var speaker3Switch: UISwitch!
    @IBOutlet weak var speaker3Image: UIImageView!
    
    @IBOutlet weak var speaker2Switch: UISwitch!
    @IBOutlet weak var speaker2Image: UIImageView!
    
    @IBOutlet weak var speaker1Switch: UISwitch!
    @IBOutlet weak var speaker1Image: UIImageView!
    
    @IBOutlet weak var projectorSwitch: UISwitch!
    @IBOutlet weak var projectorImage: UIImageView!
    
    @IBOutlet weak var mainSwitch: UISwitch!
    @IBOutlet weak var mainImage: UIImageView!
       
    @IBOutlet weak var ACImage: UIImageView!
    @IBOutlet weak var ACSwitch: UISwitch!
      
    //creating a function
    @IBAction func lights(_ sender: Any) {
        
        lights.text = "Lights"
        lights.textColor = .systemBlue
        lights.backgroundColor = UIColor.systemOrange
        lights.textAlignment = .center
        lights.font = UIFont(name: "Didot-Bold", size: 18)
        
        lightsButton.setTitle("Lights", for: UIControl.State.normal)
        lightsButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        lightsButton.layer.cornerRadius = 15
        lightsButton.layer.borderWidth = 1
        //function calling for to display lights label,images and switches
        labelHidden(label: lights)
        hidden(uiSwitch: light1Switch, image: light1Image)
        hidden(uiSwitch: light2Switch, image: light2Image)
        
        //Event handling for lights switch
        light1Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        light2Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
    }
    //creating a function
    @IBAction func main(_ sender: Any) {
        
        mainButton.setTitle("Main", for: UIControl.State.normal)
        mainButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        mainButton.layer.cornerRadius = 12
        mainButton.layer.borderWidth = 1
       //function calling for to display and hide images and switches
        hidden(uiSwitch: mainSwitch, image: mainImage)
        hidden(uiSwitch: projectorSwitch, image: projectorImage)
        
        //Event handling for projector switch
        projectorSwitch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
    }
    //creating a function
    @IBAction func fans(_ sender: Any) {
        
        fans.text = "Fans"
        fans.textColor = .systemBlue
        fans.backgroundColor = UIColor.systemOrange
        fans.textAlignment = .center
        fans.font = UIFont(name: "Didot-Bold", size: 18)
        
        fanButton.setTitle("Fans", for: UIControl.State.normal)
        fanButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        fanButton.layer.cornerRadius = 12
        fanButton.layer.borderWidth = 1
       
        //function calling for to display and hide images,labels and switches
        labelHidden(label: fans)
        hidden(uiSwitch: fan1Switch, image: fan1Image)
        hidden(uiSwitch: fan2Switch, image: fan2Image)
        hidden(uiSwitch: ACSwitch, image: ACImage)
       
        //Event handling for switches
        fan1Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        fan2Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        ACSwitch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
    }
    //creating a function
    @IBAction func speakers(_ sender: Any) {
        
        speakers.text = "Speakers"
        speakers.textColor = .systemBlue
        speakers.backgroundColor = UIColor.systemOrange
        speakers.textAlignment = .center
        speakers.font = UIFont(name: "Didot-Bold", size: 18)
        
        speakerButton.setTitle("Speakers", for: UIControl.State.normal)
        speakerButton.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        speakerButton.layer.cornerRadius = 17
        speakerButton.layer.borderWidth = 1
        //Function calling for to display and hide images and switches, labels
        hidden(uiSwitch: wooferSwitch, image: wooferImage)
        hidden(uiSwitch: speaker1Switch, image: speaker1Image)
        hidden(uiSwitch: speaker2Switch, image: speaker2Image)
        hidden(uiSwitch: speaker3Switch, image: speaker3Image)
        hidden(uiSwitch: speaker4Switch, image: speaker4Image)
        labelHidden(label: speakers)
       
        //Event handling for the switches
        wooferSwitch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        speaker1Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        speaker2Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        speaker3Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)
        speaker4Switch.addTarget(self, action: #selector(allSwitchesOff(switchOff:)), for: UIControl.Event.valueChanged)

    }    
    //creating a IBAction function
    @IBAction func mainSwitchAction(_ sender: UISwitch) {
        
        if sender.isOn == false
        {
            fan1Switch.isOn = false
            fan2Switch.isOn = false
            ACSwitch.isOn = false
            wooferSwitch.isOn = false
            speaker1Switch.isOn = false
            speaker2Switch.isOn = false
            speaker3Switch.isOn = false
            speaker4Switch.isOn = false
            light1Switch.isOn = false
            light2Switch.isOn = false
            projectorSwitch.isOn = false
            
        }
    }
    //Creating a function
    @objc func allSwitchesOff(switchOff:UISwitch)
    {
        if mainSwitch.isOn == false
        {
            switchOff.isOn = false
        }
        if ACSwitch.isOn == true
        {
            fan1Switch.isOn = false
            fan2Switch.isOn = false
            
        }
        if projectorSwitch.isOn == true
        {
            light1Switch.isOn = false
            light2Switch.isOn = false
        }
    }
    //Creating a function for to hide images and switches
    func hidden(uiSwitch:UISwitch, image:UIImageView)
    {
        if (uiSwitch.isHidden == true || image.isHidden == true)
        {
            uiSwitch.isHidden = false
            image.isHidden = false
        }else
        {
            uiSwitch.isHidden = true
            image.isHidden = true
            
        }
    }
    //Creating a function for to hide labels
    func labelHidden(label:UILabel)
    {
        if label.isHidden
        {
            label.isHidden = false
        }else
        {
            label.isHidden = true
        }
    }

    @IBOutlet weak var changeImage: UISwitch!
    @IBAction func backgroundImage(_ sender: UISwitch) {
        if changeImage.isOn == true
        {
            view.layer.contents = #imageLiteral(resourceName: "classroom").cgImage
        }else
        {
            view.backgroundColor = UIColor.systemBlue
        }
    }
    
}

