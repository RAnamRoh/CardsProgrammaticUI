//
//  CardSelectionVC.swift
//  CardsProgrammaticUI
//
//  Created by BS00834 on 24/6/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    
    let cardImageView   = UIImageView()
    let stopButton      = CustomButton(backgroudnColor: .systemRed, title: "Stop!")
    let resetButton     = CustomButton(backgroudnColor: .systemGreen, title: "Reset")
    let rulesButton     = CustomButton(backgroudnColor: .systemBlue, title: "Rules")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    
    func configureUI(){
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }

    func configureCardImageView(){
        //adding the cardview in our View
        view.addSubview(cardImageView)
        //Use AutoLayout on the Object
        cardImageView.translatesAutoresizingMaskIntoConstraints = false

        cardImageView.image = UIImage(named: "AS")
        
        //Programmatic Constraints - 4 Constaints : Height, Width, X and Y
        
        NSLayoutConstraint.activate([
        
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        
        ])
 
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
        
            stopButton.widthAnchor.constraint(equalToConstant: 250),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
            
        ])
        
    }
    
    func configureResetButton(){
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
        
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
        ])
        
    }
    
    func configureRulesButton(){
        view.addSubview(rulesButton)
        
        NSLayoutConstraint.activate([
        
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
        ])
        
    }

    
    


}
