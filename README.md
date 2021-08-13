# UIReusableView
This library allows you to specify a custom UIKit view as reusable, providing simple shorthand and type-safety for common types like UICollectionViewCell, UITableViewCell, and other views which can be loaded from a storyboard or nib.

# Installation

### Swift Package Manager

1. In Xcode, select File > Swift Packages > Add Package Dependency.
1. Follow the prompts using the [URL](https://github.com/ts0l/UIReusableView/) for this repository.

# Usage

### 1. Conforming
```swift
class CustomTableViewCell: UITableViewCell, UIReusableView { }
```
```swift
class CustomCollectionViewCell: UICollectionViewCell, UIReusableView { }
```

### 2. Registering
```swift
override func viewDidLoad() {
    super.viewDidLoad()
    CustomTableViewCell.register(in: tableView)
}
```

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    CustomCollectionViewCell.register(in: collectionView)
}
```

### 3. Dequeuing
```swift
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: CustomTableViewCell = .dequeue(from: tableView, at: indexPath)
    return cell
}
```

```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: CustomCollectionViewCell = .dequeue(from: collectionView, at: indexPath)
    return cell
}
```
