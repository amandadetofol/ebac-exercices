import UIKit

protocol HomeViewDelegate {
    func handleLogoutButtonTap()
}

class HomeView: UIView {
    
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
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    var delegate: HomeViewDelegate?
    
    init(){
        super.init(frame: .zero)
        self.addViewsToMainView()
        self.setupConstraints()
    }
    
    private func addViewsToMainView(){
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(signOutButton)
    }
    
    private let signOutButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("SignOut", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(didTapUpInsideSignOutButton), for: .touchUpInside)
        return button
    }()
    
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
            
            signOutButton.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 200),
            signOutButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor,constant: 24),
            signOutButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -24),
            signOutButton.heightAnchor.constraint(equalToConstant: 48)
            
        ])
    }
}

extension HomeView{
    
    @objc func didTapUpInsideSignOutButton(){
        self.delegate?.handleLogoutButtonTap()
    }
    
}
