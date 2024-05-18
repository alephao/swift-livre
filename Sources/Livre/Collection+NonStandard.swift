public func first2<C: Collection>(_ collection: C) -> (C.Element, C.Element)? {
  guard collection.count >= 2 else { return nil }
  return (
    collection[collection.startIndex],
    collection[collection.index(after: collection.startIndex)]
  )
}

public func first3<C: Collection>(_ collection: C) -> (C.Element, C.Element, C.Element)? {
  guard collection.count >= 3 else { return nil }
  return (
    collection[collection.startIndex],
    collection[collection.index(collection.startIndex, offsetBy: 1)],
    collection[collection.index(collection.startIndex, offsetBy: 2)]
  )
}
