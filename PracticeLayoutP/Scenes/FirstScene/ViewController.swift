//
//  ViewController.swift
//  PracticeLayoutP
//
//  Created by EdgardVS on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

  
    let grades = [grade(value: 12, percentage: "50%", name: "Nota 1"), grade(value: 12, percentage: "50%", name: "Nota 1"), grade(value: 15, percentage: "50%", name: "Nota 2"), grade(value: 13, percentage: "100%", name: "Promedio")]
    
    let padding: CGFloat = 16
    let ulimaImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        //this enables autolayout for our view
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
       let textView = UITextView()
        //this enables autolayout for our view
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Join us today in our fun learning journey"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
   
        return textView
    }()
    
    let detailText: UILabel = {
        let labelView = UILabel()
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.numberOfLines = 5
        labelView.text = "This ia a very long text about why you should pick Lima University as your home of learning so now i am going to explain you"
        labelView.textColor = .gray
        labelView.font = labelView.font.withSize(15)
        labelView.textAlignment = .center
        return labelView
    }()
    
    let moreText: UILabel = {
       let labelView = UILabel()
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.numberOfLines = 5
        labelView.text = "This ia a very long text about why you should pick Lima University as your home of learning so now i am going to explain you"
        labelView.textColor = .gray
        labelView.font = labelView.font.withSize(15)
        labelView.textAlignment = .center
        return labelView
    }()

    
    
    let containerView: UIView = {
        let normalView = UIView(frame: CGRect(x: 0, y: 0, width: 190, height: 80))
        normalView.translatesAutoresizingMaskIntoConstraints = false
        normalView.backgroundColor = .orange
        normalView.layer.cornerRadius = 10
    
        return normalView
    }()
    
    
    let verticalStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.layer.cornerRadius = 10
        stackView.layer.borderWidth = 1
        stackView.axis = .vertical
        stackView.spacing = 1
        return stackView
    }()
    
    let horizontalStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.layer.cornerRadius = 10
        stackView.axis = .horizontal
        stackView.spacing = 80
        return stackView
    }()
    
    let buttonNext: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .orange
        button.setTitleColor(.white, for: .normal)
        //button.frame.size.width = 200
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.frame.size.height = 52
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(ulimaImageView)
        view.addSubview(descriptionTextView)
        view.addSubview(detailText)
        view.addSubview(moreText)
        view.addSubview(buttonNext)
        
        buttonNext.addTarget(self, action: #selector(disTapButton), for: .touchUpInside)
        
        for i in 0..<grades.count {
            
            let grade = grades[i]
            
            let ulText = UILabel()
            ulText.translatesAutoresizingMaskIntoConstraints = false
            ulText.widthAnchor.constraint(equalToConstant: 120).isActive = true
            ulText.text = grade.name
            let ulTextTwo = UILabel()
            ulTextTwo.translatesAutoresizingMaskIntoConstraints = false
            ulTextTwo.widthAnchor.constraint(equalToConstant: 45).isActive = true
            ulTextTwo.text = grade.percentage
            let ulTextThree = UILabel()
            ulTextThree.translatesAutoresizingMaskIntoConstraints = false
            ulTextThree.widthAnchor.constraint(equalToConstant: 20).isActive = true
            ulTextThree.text = "\(grade.value)"
            //horizontalStack.addArrangedSubview(ulText)
            //horizontalStack.addArrangedSubview(ulTextTwo)
            //horizontalStack.addArrangedSubview(ulTextThree)
            let horiStack = HorizontalStack()
            horiStack.addArrangedSubview(ulText)
            horiStack.addArrangedSubview(ulTextTwo)
            horiStack.addArrangedSubview(ulTextThree)

            let viewContainer = UIView()
            viewContainer.addSubview(horiStack)
            
            //containerView.addSubview(horizontalStack)
            
            horiStack.topAnchor.constraint(equalTo: viewContainer.topAnchor, constant: 15).isActive = true
            horiStack.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive = true
            horiStack.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant: -10).isActive = true
            horiStack.bottomAnchor.constraint(equalTo: viewContainer.bottomAnchor, constant: -10).isActive = true
            
            verticalStack.addArrangedSubview(viewContainer)
        }
        
        view.addSubview(verticalStack)
        setupLayout()
        setupSecondPart()
        
       
    }
    
    @objc private func disTapButton() {
        let rootVC = SecondViewController()
        
        rootVC.title = "My second screen"
        let navVc = UINavigationController(rootViewController: rootVC)
        navVc.modalPresentationStyle = .fullScreen
        present(navVc, animated: true)
    }
    
    
    private func setupLayout() {
      
        //ulimaImageView constrains
        ulimaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        ulimaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        ulimaImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        ulimaImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        //descriptionTextView constrains
        descriptionTextView.topAnchor.constraint(equalTo: ulimaImageView.bottomAnchor, constant: 10).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
        //detailText constrains
        detailText.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 10).isActive = true
        detailText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        detailText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //detailText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true

        moreText.topAnchor.constraint(equalTo: verticalStack.bottomAnchor, constant: 10).isActive = true
        moreText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        moreText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        buttonNext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonNext.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35).isActive = true
        
    
    }
    
    func setupFirstPart() {
        //stack view horizon stack view constrains
        horizontalStack.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 15).isActive = true
        horizontalStack.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        horizontalStack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        horizontalStack.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func setupSecondPart() {
        //stack view constrains
        verticalStack.topAnchor.constraint(equalTo: detailText.bottomAnchor, constant: 10).isActive = true
        verticalStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        verticalStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5).isActive = true
        
    }


}

