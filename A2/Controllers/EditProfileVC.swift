//
////  EditProfileVC.swift
//  A2
//
//  Created by Vin Bui on 6/4/23.
//

import UIKit



class EditProfileVC: UIViewController {
    
    // MARK: - Properties (view)
    
    static let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

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
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.text = "If you can't cum in em' cum on em'"
        label.font = UIFont.italicSystemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()
    
    
    private let hometownLabel: UILabel = {
        let label = UILabel()
        label.text = "Hometown"
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.semibold)
        return label
    }()
    
    private let hometownEdit: UITextField = {
        let homeEdit = UITextField()
        homeEdit.text = "Bellmore, NY"
        homeEdit.textColor = UIColor.black
        homeEdit.font = UIFont.systemFont(ofSize: 14)
        homeEdit.layer.borderColor = CGColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        homeEdit.layer.borderWidth = 0.5
        homeEdit.layer.cornerRadius = 8
        return homeEdit
        
    }()
    

    private let majorLabel: UILabel = {
        let label = UILabel()
        label.text = "Major"
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.semibold)
        return label
    }()
    
    private let majorEdit: UITextField = {
        let studyEdit = UITextField()
        studyEdit.text = "Computer Science"
        studyEdit.textColor = UIColor.black
        studyEdit.font = UIFont.systemFont(ofSize: 14)
        studyEdit.layer.borderColor = CGColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        studyEdit.layer.borderWidth = 0.5
        studyEdit.layer.cornerRadius = 8


        return studyEdit
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.792, green: 0.259, blue: 0.22, alpha: 1)
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return button
    }()

    
    
    // MARK: - Properties (data)
    private var home: String = ""
    private var major: String = ""
    private weak var delegate: UpdateTextDelegate?
    
    // MARK: - viewDidLoad and init
    init(home: String,major: String, delegate: UpdateTextDelegate) {
        self.home = home
        self.major = major
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Edit Profile"
        
        setUpLabels()
        setUpView()
    }
    
    // MARK: - Set Up Views
    private func setUpLabels() {
        hometownEdit.text = home
        majorEdit.text = major
    }
    
    private func setUpView() {
        view.backgroundColor = .white
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(bioLabel)
        view.addSubview(hometownLabel)
        view.addSubview(majorLabel)
        view.addSubview(hometownEdit)
        view.addSubview(majorEdit)
        view.addSubview(saveButton)
        
        setupLayoutConstraints()
    }
    
    private func setupLayoutConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        hometownLabel.translatesAutoresizingMaskIntoConstraints = false
        hometownEdit.translatesAutoresizingMaskIntoConstraints = false
        majorLabel.translatesAutoresizingMaskIntoConstraints = false
        majorEdit.translatesAutoresizingMaskIntoConstraints = false
        saveButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: 96),
            profileImageView.heightAnchor.constraint(equalToConstant: 96),
            nameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: -10),
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 20),
            bioLabel.topAnchor.constraint(equalTo: nameLabel.safeAreaLayoutGuide.bottomAnchor, constant: 4),
            bioLabel.leadingAnchor.constraint(equalTo: nameLabel.safeAreaLayoutGuide.leadingAnchor),
            
            hometownLabel.topAnchor.constraint(equalTo: bioLabel.safeAreaLayoutGuide.bottomAnchor, constant: 80),
            hometownLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
           
            hometownEdit.topAnchor.constraint(equalTo: hometownLabel.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            hometownEdit.leadingAnchor.constraint(equalTo: hometownLabel.leadingAnchor),
            hometownEdit.widthAnchor.constraint(equalToConstant: 329),
            hometownEdit.heightAnchor.constraint(equalToConstant: 40),
            
            majorLabel.topAnchor.constraint(equalTo: hometownEdit.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            majorLabel.leadingAnchor.constraint(equalTo: hometownLabel.leadingAnchor),
            
            majorEdit.topAnchor.constraint(equalTo: majorLabel.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            majorEdit.leadingAnchor.constraint(equalTo: majorLabel.leadingAnchor),
            majorEdit.widthAnchor.constraint(equalToConstant: 329),
            majorEdit.heightAnchor.constraint(equalToConstant: 40),
            
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            saveButton.heightAnchor.constraint(equalToConstant: 56)
        ])

    }

    
    @objc private func buttonClicked() {
        navigationController?.popViewController(animated: true)
        delegate?.updateText(newHome: hometownEdit.text ?? "", newMajor: majorEdit.text ?? "")
    }
}

