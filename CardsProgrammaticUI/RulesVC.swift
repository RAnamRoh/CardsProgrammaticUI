//
//  RulesVC.swift
//  CardsProgrammaticUI
//
//  Created by BS00834 on 24/6/24.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    
    func configureUI(){
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        // Label Does not Need 4 Constraints
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
        
    }
    
    func configureRulesLabel(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        rulesLabel.text = "The Values of each card represents the number of exercise you do. \n\n J = 11, Q = 12, K = 13, A = 14 "
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines   = 0
        
        // Label Does not Need 4 Constraints
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
        
    }
    
    
    func configureExerciseLabel(){
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        exerciseLabel.text = "♠️ = Push Up \n\n♥️ = Squat \n\n♣️ = Jumping Jacks \n\n♦️ = Burpies"
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.textAlignment = .left
        exerciseLabel.numberOfLines   = 0
        
        // Label Does not Need 4 Constraints
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 40),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    


}
