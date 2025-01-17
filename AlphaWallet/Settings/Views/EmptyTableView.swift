//
//  SaveCustomRpcEmptyTableView.swift
//  AlphaWallet
//
//  Created by Jerome Chan on 22/12/21.
//

import UIKit

class EmptyTableView: UIView {

    private var imageView: UIImageView?
    private let title: String
    private let image: UIImage
    private let heightAdjustment: CGFloat
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Style.Search.Network.Empty.color
        label.font = Style.Search.Network.Empty.font
        label.textAlignment = .center
        return label
    }()

    convenience init(title: String, image: UIImage, heightAdjustment: CGFloat) {
        self.init(frame: .zero, title: title, image: image, heightAdjustment: heightAdjustment)
    }

    init(frame: CGRect, title: String, image: UIImage, heightAdjustment: CGFloat) {
        self.title = title
        self.image = image
        self.heightAdjustment = heightAdjustment
        super.init(frame: frame)
        configureView()
    }

    required init?(coder: NSCoder) {
        return nil
    }

    private func configureView() {
        translatesAutoresizingMaskIntoConstraints = false
        configureImageView()
        configureLabel()
    }

    private func configureImageView() {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .center
        imageView.clipsToBounds = true
        addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: heightAdjustment),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        self.imageView = imageView
    }

    private func configureLabel() {
        guard let imageView = imageView else {
            return
        }
        label.text = title
        addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 24.0),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

}
