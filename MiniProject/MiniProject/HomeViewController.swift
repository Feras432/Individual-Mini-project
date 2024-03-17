//
//  ViewController.swift
//  MiniProject
//
//  Created by Feras Alshadad on 29/02/2024.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let name = UITextField()
    let image = UITextField()
    let salary = UITextField()
    let employeeEmail = UITextField()
    let number = UITextField()
    let numberIBAN = UITextField()
    let saveButton = UIButton()
    
    var fullName: String?
    var imageURL: String?
    var employeeSalary: String?
    var email: String?
    var phoneNumber: String?
    var iBAN: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        view.addSubview(name)
        view.addSubview(image)
        view.addSubview(salary)
        view.addSubview(employeeEmail)
        view.addSubview(number)
        view.addSubview(numberIBAN)
        view.addSubview(saveButton)
        
        
        setupUI()
        setupUIConstraints()
        setupNavigationBar()   
        title = "Home Page"
        
    }
    
    
    func setupUI(){
        
        name.placeholder = "Enter Your Name Here"
        name.backgroundColor = .white
        name.textAlignment = .center
        
        image.placeholder = "Enter The Image URL Here"
        image.backgroundColor = .white
        image.textAlignment = .center
        
        salary.placeholder = "Enter The Salary Here"
        salary.backgroundColor = .white
        salary.textAlignment = .center
        
        employeeEmail.placeholder = "Enter The Email Here"
        employeeEmail.backgroundColor = .white
        employeeEmail.textAlignment = .center

        
        number.placeholder = "Enter Your Phone Number Here"
        number.backgroundColor = .white
        number.textAlignment = .center
        
        numberIBAN.placeholder = "Enter The IBAN Here"
        numberIBAN.backgroundColor = .white
        numberIBAN.textAlignment = .center
        
        saveButton.setTitle("Save", for: .normal)
        saveButton.backgroundColor = .systemBlue
        saveButton.layer.cornerRadius = 10
        saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        
        
    }
    
    func setupUIConstraints(){
        
        name.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.width.equalTo(200)
        }
        
        image.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(name.snp.bottom).offset(20)
            make.width.equalTo(200)
        }
        
        salary.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image.snp.bottom).offset(20)
            make.width.equalTo(200)
        }
        
        employeeEmail.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(salary.snp.bottom).offset(20)
            make.width.equalTo(200)
        }
        
        number.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(employeeEmail.snp.bottom).offset(20)
            make.width.equalTo(200)
        }
        
        numberIBAN.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(number.snp.bottom).offset(20)
            make.width.equalTo(200)
        }
        
        saveButton.snp.makeConstraints { make in
            make.top.equalTo(numberIBAN.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(35)
            make.width.equalTo(95)
        }
        
        
    }
    
    @objc func saveButtonClicked(){
        
        fullName = name.text
        imageURL = image.text
        employeeSalary = salary.text
        email = employeeEmail.text
        phoneNumber = number.text
        iBAN = numberIBAN.text
        
        let EmployeeVC = EmployeeViewController()
        
        EmployeeVC.fullName = fullName
        EmployeeVC.imageURL = imageURL
        EmployeeVC.email = email
        EmployeeVC.employeeSalary = employeeSalary
        EmployeeVC.phoneNumber = phoneNumber
        EmployeeVC.iBAN = iBAN
        
        navigationController?.pushViewController(EmployeeVC, animated: true)
        
    }
    

    func setupNavigationBar(){
            
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: .init(systemName: "exclamationmark"), style: .plain, target: self, action: #selector(exclamationButtonClicked))
    }
        
    @objc func exclamationButtonClicked(){
        
        let instructionsVC = InstructionsViewController()
        instructionsVC.modalPresentationStyle = .formSheet
        self.present(instructionsVC, animated: true)
        
    }
    
}
