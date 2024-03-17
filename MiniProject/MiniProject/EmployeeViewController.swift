//
//  NavigationViewController.swift
//  MiniProject
//
//  Created by Feras Alshadad on 29/02/2024.
//

import UIKit
import SnapKit
class EmployeeViewController: UIViewController {
        
    let name = UILabel()
    let salary = UILabel()
    let employeeEmail = UILabel()
    let number = UILabel()
    let numberIBAN = UILabel()
    let imageView = UIImageView()
    let container = UIView()
    
    
    var fullName: String?
    var employeeSalary: String?
    var email: String?
    var phoneNumber: String?
    var iBAN: String?
    var imageURL: String?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        view.addSubview(container)
                
        container.addSubview(name)
        container.addSubview(salary)
        container.addSubview(employeeEmail)
        container.addSubview(number)
        container.addSubview(numberIBAN)
      
        setupUI()
        setupConstraints()
        
        title = "Employee Details Page"
    }

    func setupUI(){
        
        imageView.image = UIImage(named: imageURL?.lowercased() ?? "")
        imageView.contentMode = .scaleToFill
               
        container.backgroundColor = .lightGray
        container.layer.cornerRadius = 10
               
        name.text = "Name: " + (fullName ?? "No Name")
        salary.text = "Salary: " + (employeeSalary ?? "No Salary")
        employeeEmail.text = "Email: " + (email ?? "No Email")
        number.text = "Phone Number: " + (phoneNumber ?? "No Phone Number")
        numberIBAN.text = "IBAN: " + (iBAN ?? "No IBAN")
        
        
        
    }
    func setupConstraints(){
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(350)
        }
                
        container.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(157)
        }
                
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(10)
        }
                
        employeeEmail.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
        }
                
        number.snp.makeConstraints { make in
            make.top.equalTo(employeeEmail.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
        }

        numberIBAN.snp.makeConstraints { make in
            make.top.equalTo(number.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
        }

        salary.snp.makeConstraints { make in
            make.top.equalTo(numberIBAN.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
        }

    }
}
