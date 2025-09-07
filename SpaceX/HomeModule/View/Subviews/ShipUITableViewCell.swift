import UIKit

final class ShipUITableViewCell: UITableViewCell {
    
    // MARK: ID
    
    static let cellID = "ShipUITableViewCell"
    
    // MARK: UI
    
    private let nameLabel = UILabel(frame: .zero)
    private let modelLabel = UILabel(frame: .zero)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        embedViews()
        setupLayout()
        setupAppereance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Embed views

private extension ShipUITableViewCell {
    func embedViews() {
        [
            nameLabel,
            modelLabel
        ].forEach { label in
            label.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(label)
        }
    }
}

// MARK: Setup layout

private extension ShipUITableViewCell {
    func setupLayout() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            modelLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            modelLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            modelLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            modelLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
}

// MARK: - Setup Appereance

private extension ShipUITableViewCell {
    func setupAppereance () {
        contentView.backgroundColor = .systemBackground
        
        nameLabel.textColor = .label
        modelLabel.textColor = .secondaryLabel
        
        nameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        nameLabel.font = .systemFont(ofSize: 16, weight: .regular)
        
        nameLabel.numberOfLines = 1
        modelLabel.numberOfLines = 0
        
        nameLabel.textAlignment = .left
        modelLabel.textAlignment = .left
    }
}

// MARK: - Set data

extension ShipUITableViewCell {
    func set(name: String, model: String) {
        nameLabel.text = name
        modelLabel.text = model
    }
}
