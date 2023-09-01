
import UIKit

class ViewController: UIViewController {

    
    private let welcomeLabel = MakerView.shared.makeLabel(text: "Login",
                                                          font: .boldSystemFont(ofSize: 18))
    
    private let labelImage = UIImageView(image: UIImage(named: "user"))
    
    private let secondLabel = MakerView.shared.makeLabel(text: "Welcome back , Name Surname")
    
    private let welcomeImage = UIImageView(image: UIImage(named: "welcome_logo"))
    
    private let imageLabel = MakerView.shared.makeLabel(text: "Enter Your Mobile Number",
                                                        textColor: Constants.secondColor,
                                                        font: .boldSystemFont(ofSize: 17))
    
    private let enterNumberTextField = MakerView.shared.makeTextField(placeholder: "Enter Number")
    
    private let changeButton = MakerView.shared.makeButton(title: "Change Number?",
                                                           titleColor: .systemGray2,
                                                           backgroundColor: .init(white: 1, alpha: 0),
                                                           font: .systemFont(ofSize: 12))
                                                           
    private let loginButton = MakerView.shared.makeButton(title: "Login",
                                                           font: .boldSystemFont(ofSize: 15))
    
    private let googleImage = UIImageView(image: UIImage(named: "google"))
    
    private let googleLabel = MakerView.shared.makeLabel(text: "Google",
                                                         font: .boldSystemFont(ofSize: 14))
    
    private let dontLabel = MakerView.shared.makeLabel(text: "You Don’t have an account?",
                                                       textColor: .systemGray2,
                                                       font: .systemFont(ofSize: 12))
    
    private let signUpButton = MakerView.shared.makeButton(title: "Sign up",
                                                           titleColor:  .black,
                                                           backgroundColor: .init(white: 1, alpha: 0),
                                                           font: .boldSystemFont(ofSize: 12))

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        initWelcomeImage()
        initEnterNumber()
        initButtons()
        initBottomLabel()
    }
    
    private func initUI() {
        
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingMargin),
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80)
        ])
        
        view.addSubview(labelImage)
        labelImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelImage.leadingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor, constant: 3),
            labelImage.centerYAnchor.constraint(equalTo: welcomeLabel.centerYAnchor)
        ])
        
        view.addSubview(secondLabel)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingMargin),
            secondLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5)
        ])
    }
    
    private func initWelcomeImage() {
        
        view.addSubview(welcomeImage)
        //welcomeImage.layer.borderColor = CGColor(red: 1, green: 0.733, blue: 0.333, alpha: 1)
        //welcomeImage.layer.borderWidth = 3
        welcomeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeImage.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 30)
        ])
        
        view.addSubview(imageLabel)
        imageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageLabel.centerXAnchor.constraint(equalTo: welcomeImage.centerXAnchor),
            imageLabel.topAnchor.constraint(equalTo: welcomeImage.bottomAnchor, constant: 10)
        ])
    }
    
    private func initEnterNumber() {
        
        view.addSubview(enterNumberTextField)
        enterNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            enterNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.leadingMargin),
            enterNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingMargin),
            enterNumberTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 50)
        ])
        
        view.addSubview(changeButton)
        changeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            changeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(Constants.leadingMargin + 10)),
            changeButton.topAnchor.constraint(equalTo: enterNumberTextField.bottomAnchor, constant: 15)
        ])

    }
    
    private func initButtons() {
        
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.leadingMargin),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingMargin),
            loginButton.heightAnchor.constraint(equalToConstant: 43),
            loginButton.topAnchor.constraint(equalTo: enterNumberTextField.bottomAnchor, constant: 100)
        ])
        
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        view.addSubview(googleImage)
        googleImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            googleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30),
            googleImage.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50)
        ])
        
        view.addSubview(googleLabel)
        googleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            googleLabel.centerXAnchor.constraint(equalTo: googleImage.centerXAnchor, constant: 45),
            googleLabel.centerYAnchor.constraint(equalTo: googleImage.centerYAnchor)
        ])
    }
    
    private func initBottomLabel() {
        
        view.addSubview(dontLabel)
        dontLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dontLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30),
            dontLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
        
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: dontLabel.centerXAnchor, constant: 110),
            signUpButton.centerYAnchor.constraint(equalTo: dontLabel.centerYAnchor)
        ])
    }
    
    @objc func login (_ seder: UIButton) {
        
        var flag = false
        if enterNumberTextField.text?.isEmpty ?? true {
            enterNumberTextField.layer.borderColor = UIColor.red.cgColor
            enterNumberTextField.layer.borderWidth = 1
            enterNumberTextField.placeholder = "Fill the information"
        } else if enterNumberTextField.text!.count < 10 {
            enterNumberTextField.layer.borderColor = UIColor.red.cgColor
            enterNumberTextField.layer.borderWidth = 1
        } else if !(enterNumberTextField.text?.starts(with: "+996"))! {
            enterNumberTextField.layer.borderColor = UIColor.red.cgColor
            enterNumberTextField.layer.borderWidth = 1
        }
        else {
            enterNumberTextField.layer.borderColor = UIColor.white.cgColor
            flag = true
        }
        
        if flag {
            navigationController?.pushViewController(NumbersViewController(), animated: true)
        }
        
    }
}
