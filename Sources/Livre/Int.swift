public func isMultiple(of other: Int) -> (Int) -> Bool {
  { i in i.isMultiple(of: other) }
}
