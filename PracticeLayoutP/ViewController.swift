//
//  ViewController.swift
//  PracticeLayoutP
//
//  Created by EdgardVS on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    //lest avoid polluting viewDidLoad
    // {} is referred as a closure
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
    

    
    let containerLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = "Evaluacion continua 1"
        label.font = label.font.withSize(15)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    let containerLabel2: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = "50%"
        label.font = label.font.withSize(15)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    let containerLabel3: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = "20"
        label.font = label.font.withSize(15)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    let stackLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.numberOfLines = 1
         label.text = "20"
         label.font = label.font.withSize(15)
         label.font = UIFont.boldSystemFont(ofSize: 15)
         label.textColor = .white
         return label
    }()
    
    let containerView: UIView = {
        let normalView = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 80))
        normalView.translatesAutoresizingMaskIntoConstraints = false
        normalView.backgroundColor = .orange
        normalView.layer.cornerRadius = 10
    
        return normalView
    }()
    
    let viewForStack: UIView = {
       let normalView = UIView()
        normalView.translatesAutoresizingMaskIntoConstraints = false
        normalView.backgroundColor = .orange
        normalView.layer.cornerRadius = 10
        return normalView
    }()
    
    let verticalStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .gray
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.layer.cornerRadius = 10
        stackView.axis = .vertical
        stackView.spacing = 1
        return stackView
    }()
    
    let horizontalStack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .gray
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.layer.cornerRadius = 10
        stackView.axis = .horizontal
        stackView.spacing = 1
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(ulimaImageView)
        view.addSubview(descriptionTextView)
        view.addSubview(detailText)
        //containerView.addSubview(containerLabel1)
        //containerView.addSubview(containerLabel2)
        //containerView.addSubview(containerLabel3)
        //stackGrades.addArrangedSubview(containerView)
        //stackGrades.addArrangedSubview(containerView)
        //stackGrades.addArrangedSubview(containerView)
        
       
        //viewForStack.addSubview(containerLabel3)
     
        //addViewsToStackView()
 
        let ulText = UILabel()
        ulText.text = "text"
        let ulTextTwo = UILabel()
        ulTextTwo.text = "text2"
        horizontalStack.addArrangedSubview(ulText)
        horizontalStack.addArrangedSubview(ulTextTwo)
        let viewContainer = UIView()
        //viewContainer.addSubview(horizontalStack)
        containerView.addSubview(horizontalStack)
        setupFirstPart()
      
            verticalStack.addArrangedSubview(containerView)
        
        
        view.addSubview(verticalStack)
        setupLayout()
        setupSecondPart()
        
        //==========================
        /*
        let redView = UIView()
        redView.backgroundColor = .red

        let blueView = UIView()
        blueView.backgroundColor = .blue

        let stackView = UIStackView()
        stackView.addArrangedSubview(redView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually

        view.addSubview(stackView)

        // stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)

        // autolayout constraint
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 200)
        ])
         */
       
    }
    
    func addViewsToStackView() {
        let numberoOfGrades = 5
    
        for i in 1...numberoOfGrades {
            print(i)
            
            let label = UILabel()
            label.font = label.font.withSize(15)
            label.text = "Evaluacion Continua \(i)"
            let view2 = UIView()
            view2.backgroundColor = .orange
            view2.layer.cornerRadius = 10
            verticalStack.addArrangedSubview(label)
        }
            
        
    }
    func addLabelsToVerticalStack() {
        let gradeLabel = UILabel()
        
        gradeLabel.text = "Nota de evaluación"
        
    }
    
    private func setupLayout() {
        //imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //ulimaImageView constrains
        ulimaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        ulimaImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        ulimaImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        ulimaImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        //descriptionTextView constrains
        descriptionTextView.topAnchor.constraint(equalTo: ulimaImageView.bottomAnchor, constant: padding).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        //detailText constrains
        detailText.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 10).isActive = true
        detailText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        detailText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //detailText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true

 
        
        
      
        
    
        
       /* //containerView constrains
        containerView.topAnchor.constraint(equalTo: stackGrades.bottomAnchor, constant: 20).isActive = true
        containerView.leftAnchor.constraint(equalTo: stackGrades.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: stackGrades.rightAnchor).isActive = true
        //containerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //containerView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: stackGrades.centerYAnchor, constant: -45).isActive = true
        containerView.widthAnchor.constraint(equalTo: stackGrades.widthAnchor, multiplier: 1).isActive = true
        containerView.heightAnchor.constraint(equalTo: stackGrades.heightAnchor, multiplier: 0.12).isActive = true
        containerView.bottomAnchor.constraint(equalTo: stackGrades.bottomAnchor, constant: 0).isActive = true
        */
        //label 1
       
        /*
        containerLabel1.topAnchor.constraint(equalTo: viewForStack.topAnchor, constant: 15).isActive = true
        containerLabel1.leadingAnchor.constraint(equalTo: viewForStack.leadingAnchor, constant: 12).isActive = true
        //containerLabel1.trailingAnchor.constraint(equalTo: containerLabel2.trailingAnchor, constant: 60).isActive = true
        //containerLabel1.bottomAnchor.constraint(equalTo: viewForStack.bottomAnchor, constant: 0).isActive = true
        
        //label 2
        
        containerLabel2.topAnchor.constraint(equalTo: viewForStack.topAnchor, constant: 15).isActive = true
        containerLabel2.leadingAnchor.constraint(equalTo: viewForStack.leadingAnchor, constant: 220).isActive = true
        //containerLabel2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 47).isActive = true
        
        //label 3
        
        //containerLabel3.topAnchor.constraint(equalTo: viewForStack.topAnchor, constant: 15).isActive = true
        //containerLabel3.leadingAnchor.constraint(equalTo: containerLabel2.leadingAnchor, constant: 50).isActive = true
        //containerLabel3.trailingAnchor.constraint(equalTo: viewForStack.trailingAnchor, constant: -12).isActive = true
       */
        
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
        verticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }


}

