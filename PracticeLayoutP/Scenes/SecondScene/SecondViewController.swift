//
//  SecondViewController.swift
//  PracticeLayoutP
//
//  Created by EdgardVS on 16/08/23.
//

import UIKit

class SecondViewController: UIViewController {

    
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
        view.backgroundColor = .systemMint
        // Do any additional setup after loading the view.
        title = "Second view controller"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
        view.addSubview(buttonNext)
        
        buttonNext.addTarget(self, action: #selector(disTapButton), for: .touchUpInside)
        buttonNext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonNext.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    @objc private func disTapButton() {
        let vc = ThirdViewController()
        vc.title = "My third screen"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true) {
            print("desaparecí")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
