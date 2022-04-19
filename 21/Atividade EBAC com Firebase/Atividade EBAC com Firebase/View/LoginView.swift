
import Foundation
import UIKit

protocol LoginViewDelegate {
    func handleLoginButtonClick()
    func handleNotAnUserButtonClick()
}

class LoginView: UIView {
        
    private lazy var scrollView : UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: self.bounds.width, height: self.bounds.height)
        scrollView.backgroundColor = .white
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.isAccessibilityElement = false
        return view
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .white
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.spacing = 0.0
        stackView.isAccessibilityElement = false
        return stackView
    }()
    
    private let emailTextField : UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 15
        textField.placeholder = "E-mail"
        return textField
    }()
    
    private let passwordTextField : UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 15
        return textField
    }()
    
    private let loginButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("LOGIN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(didTapUpInsideLoginButton), for: .touchUpInside)
        return button
    }()
    
    private let notAnUserButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Not an User? SignIn", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(didTapUpInsideAldearyAnUserButton), for: .touchUpInside)
        return button
    }()
    
    var delegate: LoginViewDelegate?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(){
        super.init(frame: .zero)
        self.addViewsToMainView()
        self.setupConstraints()
    }
    
    func getEmailText() ->String? {
        return emailTextField.text
    }
    
    func getPasswordText() ->String? {
        return passwordTextField.text
    }
    
    //MARK: Private methods
    private func addViewsToMainView(){
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        stackView.addArrangedSubview(notAnUserButton)
    }
    
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
        
            contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            
            stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),

            emailTextField.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 100),
            emailTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 24),
            emailTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -24),
            emailTextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
            passwordTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 24),
            passwordTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -24),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            loginButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 24),
            loginButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -24),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            
            notAnUserButton.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 150),
            notAnUserButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 24),
            notAnUserButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -24),
            notAnUserButton.heightAnchor.constraint(equalToConstant: 48),
        ])
        
    }
    
}

extension LoginView {
    
    @objc func didTapUpInsideLoginButton() {
        self.delegate?.handleLoginButtonClick()
    }
    
    @objc func didTapUpInsideAldearyAnUserButton(){
        self.delegate?.handleNotAnUserButtonClick()
    }
    
}
