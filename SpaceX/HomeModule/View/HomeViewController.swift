import UIKit

final class HomeViewController: UIViewController, HomeView {
    
    // MARK: - Connection
    
    var output: HomeViewOutput?
    
    // MARK: - UI
    
    private let tableView = UITableView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
        embedViews()
        setupBehavior()
        setupLayout()
        setupAppearance()
    }
}

// MARK: - Embed view

private extension HomeViewController {
    func embedViews() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
    }
}

// MARK: - Setup behavior

private extension HomeViewController {
    func setupBehavior() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ShipUITableViewCell.self, forCellReuseIdentifier: ShipUITableViewCell.cellID)
        tableView.estimatedRowHeight = 100
    }
}


// MARK: - Setup layout

private extension HomeViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: - Setup layout

private extension HomeViewController {
    func setupAppearance() {
        tableView.backgroundColor = .red
    }
}

// MARK: - UICollectionViewDataSource

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: ShipUITableViewCell.cellID,
            for: indexPath
        ) as? ShipUITableViewCell  else {
            return UITableViewCell()
        }
        
        cell.set(name: "example name", model: "example model")
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController {
    func set(state: HomeState) {
        switch state {
        case .success:
            print("success")
        case .loading:
            print("loading")
        case .error(let error):
            print("Error: \(error)")
        }
    }
}
