//
//  CoinTableViewCell.swift
//  coincrypto
//
//  Created by James Sweeney on 3/2/25.
//

import UIKit
import Kingfisher

class CoinTableViewCell: UITableViewCell {
    
    var coin: Coin? {
        didSet { configure() }
    }
    
    private let coinRankLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray3
        return label
    }()
    
    private let coinImageView = UIImageView()
    
    private let coinNameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private let coinSymbolLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    private let coinPriceLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private let coinPercentChangeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
        guard let coin else { return }
        
        let url = URL(string: coin.image)
        coinImageView.kf.setImage(with: url)
        coinRankLabel.text = "\(coin.marketCapRank)"
        coinNameLabel.text = coin.name
        coinSymbolLabel.text = coin.symbol.uppercased()
        coinPriceLabel.text = "\(coin.currentPrice)"
        coinPercentChangeLabel.text = "\(coin.priceChangePercentage24H)"
        coinImageView.backgroundColor = .systemRed
    }
    
    func configureUI() {
        contentView.addSubview(coinRankLabel)
        coinRankLabel.translatesAutoresizingMaskIntoConstraints = false
        coinRankLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        coinRankLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        coinRankLabel.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        contentView.addSubview(coinImageView)
        coinImageView.translatesAutoresizingMaskIntoConstraints = false
        coinImageView.leftAnchor.constraint(equalTo: coinRankLabel.rightAnchor, constant: 16).isActive = true
        coinImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        coinImageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        coinImageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        coinImageView.layer.cornerRadius = 10
        coinImageView.clipsToBounds = true
        
        let coinNameStack = UIStackView(arrangedSubviews: [coinNameLabel, coinSymbolLabel])
        coinNameStack.spacing = 4
        coinNameStack.axis = .vertical
        coinNameStack.alignment = .leading
        
        contentView.addSubview(coinNameStack)
        coinNameStack.translatesAutoresizingMaskIntoConstraints = false
        coinNameStack.leftAnchor.constraint(equalTo: coinImageView.rightAnchor, constant: 16).isActive = true
        coinNameStack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        let priceStack = UIStackView(arrangedSubviews: [coinPriceLabel, coinPercentChangeLabel])
        priceStack.spacing = 4
        priceStack.axis = .vertical
        priceStack.alignment = .trailing
        
        contentView.addSubview(priceStack)
        priceStack.translatesAutoresizingMaskIntoConstraints = false
        priceStack.rightAnchor.constraint(equalTo:rightAnchor, constant: -16).isActive = true
        priceStack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}










