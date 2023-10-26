import UIKit

class ProfileVC: UIViewController {

    // MARK: - Properties (view)
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 50  // You can adjust based on your requirements
        iv.image = UIImage(named: "prof")
        return iv
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Richie Ippoliti"  // Placeholder
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
        iv.image = UIImage(named: "Home")  // Placeholder image name
        return iv
    }()
    
    private let hometownLabel: UILabel = {
        let label = UILabel()
        label.text = "Dallas, TX"  // Placeholder
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let schoolIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "School")  // Placeholder image name
        return iv
    }()
    
    private let schoolLabel: UILabel = {
        let label = UILabel()
        label.text = "Cornell University"  // Placeholder
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let majorIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "major")  // Placeholder image name
        return iv
    }()
    
    private let majorLabel: UILabel = {
        let label = UILabel()
        label.text = "Information Science"  // Placeholder
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let appIcon: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Home")
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "App")  // Placeholder image name
        return iv
    }()
    
    private let appLabel: UILabel = {
        let label = UILabel()
        label.text = "Volume"  // Placeholder
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    // ... [Repeat for school, major, app store]
    
    private let editProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Edit Profile", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.a2.ruby  // Adjust based on your design
        button.layer.cornerRadius = 5
        return button
    }()
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
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
        // ... [Add other subviews similarly]
        
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

            editProfileButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            editProfileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            editProfileButton.widthAnchor.constraint(equalToConstant: 200),
            editProfileButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}
