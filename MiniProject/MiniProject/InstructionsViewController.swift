//
//  InstructionsViewController.swift
//  MiniProject
//
//  Created by Feras Alshadad on 29/02/2024.
//

import UIKit
import SnapKit
class InstructionsViewController: UIViewController {
    
    let instructionLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(instructionLabel)
        
        setupUI()
        setupConstraints()
        title = "Instructions Page"

    }
    
    
        func setupUI(){
            instructionLabel.text = "This is an app developed for HR purposes, where one would be told to enter details pertaining to one's job's details such as name, email, and number. Please be careful with whom you share your private details."
            
            instructionLabel.numberOfLines = 0
            instructionLabel.textColor = .gray
        }
        func setupConstraints(){
            instructionLabel.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
                make.width.equalTo(300)
                make.height.equalTo(300)
            }
        }
    

}
