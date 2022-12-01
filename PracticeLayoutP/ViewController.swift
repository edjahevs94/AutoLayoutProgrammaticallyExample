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
    
    let containerView: UIView = {
        let normalView = UIView()
        normalView.translatesAutoresizingMaskIntoConstraints = false
        normalView.backgroundColor = .orange
        normalView.layer.cornerRadius = 10
    
        return normalView
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.addSubview(ulimaImageView)
        view.addSubview(descriptionTextView)
        view.addSubview(detailText)
        containerView.addSubview(containerLabel1)
        containerView.addSubview(containerLabel2)
        containerView.addSubview(containerLabel3)
        view.addSubview(containerView)
        setupLayout()
       
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
        //containerView constrains
        containerView.topAnchor.constraint(equalTo: detailText.bottomAnchor, constant: 50).isActive = true
        //containerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        //containerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //containerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //containerView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        
        //label 1
        
        containerLabel1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        containerLabel1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12).isActive = true
        //containerLabel1.trailingAnchor.constraint(equalTo: containerLabel2.trailingAnchor, constant: 60).isActive = true
        
        //label 2
        
        containerLabel2.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        containerLabel2.leadingAnchor.constraint(equalTo: containerLabel1.leadingAnchor, constant: 220).isActive = true
        //containerLabel2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 47).isActive = true
        
        //label 3
        
        containerLabel3.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        //containerLabel3.leadingAnchor.constraint(equalTo: containerLabel2.leadingAnchor, constant: 110).isActive = true
        containerLabel3.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12).isActive = true
        
        
        
    }
    
    


}

