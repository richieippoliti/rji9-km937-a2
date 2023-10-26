//
////  ProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit

protocol UpdateTextDelegate: AnyObject {
    func updateText(newHome: String, newMajor: String)
}

class ProfileVC: UIViewController {

    // MARK: - Properties (view)
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 50
        iv.image = UIImage(named: "prof")
        return iv
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Richie Ippoliti"
        label.font = UIFont.systemFont(ofSize: 32)
        return label
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.text = "If you can't cum in em' cum on em'"
        label.font = UIFont.italicSystemFont(ofSize: 16)
        label.textColor = .gray
        return label
    }()
    
 
    private let hometownIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "Home")
        return iv
    }()
    
    private let hometownLabel: UILabel = {
        let label = UILabel()
        label.text = "Bellmore, NY"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let schoolIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "School")
        return iv
    }()
    
    private let schoolLabel: UILabel = {
        let label = UILabel()
        label.text = "Cornell University"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let majorIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "major")
        return iv
    }()
    
    private let majorLabel: UILabel = {
        let label = UILabel()
        label.text = "Computer Science"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let appIcon: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Home")
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "App")
        return iv
    }()
    
    private let appLabel: UILabel = {
        let label = UILabel()
        label.text = "Volume"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let editProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Edit Profile", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.a2.ruby
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return button
    }()
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    @objc private func buttonClicked() {
        let editVC = EditProfileVC(home: hometownLabel.text ?? "Bellmore, NY", major: majorLabel.text ?? "Computer Science", delegate: self)
        navigationController?.pushViewController(editVC, animated: .random())
        
        
    }
    
    
    // MARK: - Set Up Views
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(bioLabel)
        view.addSubview(hometownIcon)
        view.addSubview(hometownLabel)
        view.addSubview(schoolIcon)
        view.addSubview(schoolLabel)
        view.addSubview(majorIcon)
        view.addSubview(majorLabel)
        view.addSubview(appIcon)
        view.addSubview(appLabel)
        view.addSubview(editProfileButton)
        
        setupLayoutConstraints()
    }
    
    private func setupLayoutConstraints() {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        hometownIcon.translatesAutoresizingMaskIntoConstraints = false
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolIcon.translatesAutoresizingMaskIntoConstraints = false
        schoolLabel.translatesAutoresizingMaskIntoConstraints = false
        majorIcon.translatesAutoresizingMaskIntoConstraints = false
        majorLabel.translatesAutoresizingMaskIntoConstraints = false
        appIcon.translatesAutoresizingMaskIntoConstraints = false
        appLabel.translatesAutoresizingMaskIntoConstraints = false
        editProfileButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100),

            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            bioLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            bioLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            hometownIcon.topAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: 70),
            hometownIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            hometownIcon.widthAnchor.constraint(equalToConstant: 30),
            hometownIcon.heightAnchor.constraint(equalToConstant: 30),

            hometownLabel.centerYAnchor.constraint(equalTo: hometownIcon.centerYAnchor),
            hometownLabel.leadingAnchor.constraint(equalTo: hometownIcon.trailingAnchor, constant: 30),

            schoolIcon.topAnchor.constraint(equalTo: hometownIcon.bottomAnchor, constant: 20),
            schoolIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            schoolIcon.widthAnchor.constraint(equalToConstant: 30),
            schoolIcon.heightAnchor.constraint(equalToConstant: 30),

            schoolLabel.centerYAnchor.constraint(equalTo: schoolIcon.centerYAnchor),
            schoolLabel.leadingAnchor.constraint(equalTo: schoolIcon.trailingAnchor, constant: 30),

            majorIcon.topAnchor.constraint(equalTo: schoolIcon.bottomAnchor, constant: 20),
            majorIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            majorIcon.widthAnchor.constraint(equalToConstant: 30),
            majorIcon.heightAnchor.constraint(equalToConstant: 30),

            majorLabel.centerYAnchor.constraint(equalTo: majorIcon.centerYAnchor),
            majorLabel.leadingAnchor.constraint(equalTo: majorIcon.trailingAnchor, constant: 30),

            appIcon.topAnchor.constraint(equalTo: majorIcon.bottomAnchor, constant: 20),
            appIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            appIcon.widthAnchor.constraint(equalToConstant: 30),
            appIcon.heightAnchor.constraint(equalToConstant: 30),

            appLabel.centerYAnchor.constraint(equalTo: appIcon.centerYAnchor),
            appLabel.leadingAnchor.constraint(equalTo: appIcon.trailingAnchor, constant: 30),

            editProfileButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            editProfileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            editProfileButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            editProfileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            editProfileButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }

}

extension ProfileVC: UpdateTextDelegate {
    
    func updateText(newHome: String, newMajor: String) {
        hometownLabel.text = newHome
        majorLabel.text = newMajor
        hometownLabel.text = newHome

    }
    
}
