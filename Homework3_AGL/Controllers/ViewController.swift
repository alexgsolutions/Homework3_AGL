//
//  ViewController.swift
//  Homework3_AGL
//
//  Created by Alexis Gonzalez on 4/8/18.
//  Copyright © 2018 alexgsolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declarations
     var messages: [Message] = []
    
    //Outlets
    @IBOutlet weak var fromNameLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet var messageButtons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureNavigationBar()
        loadMessages()
        configureButtons()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        animateButtons()
    }

    private func configureNavigationBar()
    {
        title = "Messages"
        
        //Left button
        let leftBarButton = UIBarButtonItem(title: "Refresh", style: .plain, target: self, action: #selector(refreshButtonPressed))
        leftBarButton.tintColor = UIColor.darkGray
        
        //Right button
        let rightBarButton = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editButtonPressed))
        rightBarButton.tintColor = UIColor.darkGray
        rightBarButton.isEnabled = false
        
        navigationItem.leftBarButtonItem = leftBarButton
        navigationItem.rightBarButtonItem = rightBarButton
        
    }
    
    //Load all Messages
    private func loadMessages(){
        messages = Message.defaultData
    }
    
    
    @objc private func refreshButtonPressed()
    {
        
    }

    @objc private func editButtonPressed()
    {
        
    }
    
    private func configureButtons(){
        for button in messageButtons {
            let buttonIndex = button.tag - 1
            button.setTitle(messages[buttonIndex].fromName, for: .normal)
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
           let buttonIndex = sender.tag - 1
        fromNameLabel.text = messages[buttonIndex].fromName
         bodyLabel.text = messages[buttonIndex].body
        stateLabel.text = "Status: \(messages[buttonIndex].state.txt)"
    }
    private func animateButtons(){
        let rotationAngle = CGFloat.pi
        for button in messageButtons {
            UIView.animate(withDuration: 1, animations: {
                button.transform = CGAffineTransform(rotationAngle: rotationAngle)
                 button.transform = CGAffineTransform(rotationAngle: 0)
            })
        }
       
    }
}

