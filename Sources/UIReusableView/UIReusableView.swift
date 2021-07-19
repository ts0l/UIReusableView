import UIKit

public protocol UIReusableView: UIView {
    static var identifier: String { get }
}

public extension UIReusableView {
    static var identifier: String { .init(describing: self) }
}

public extension UIReusableView where Self: UICollectionViewCell {
    static func load<T: UIReusableView>() -> T {
        Bundle.main.loadNibNamed(identifier, owner: nil)!.first as! T
    }

    static func dequeue<T: UIReusableView>(from collectionView: UICollectionView, at indexPath: IndexPath) -> T {
        collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! T
    }

    static func register(in collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
    }
}

public extension UIReusableView where Self: UITableViewCell {
    static func load<T: UIReusableView>() -> T {
        Bundle.main.loadNibNamed(identifier, owner: nil)!.first as! T
    }

    static func dequeue<T: UIReusableView>(from tableView: UITableView, at indexPath: IndexPath) -> T {
        tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
    }

    static func register(in tableView: UITableView) {
        tableView.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
}
