public func map<A, B>(_ transform: @escaping (A) -> B) -> (A?) -> B? {
  { a in a.map(transform) }
}

public func map<A, B>(_ transform: @escaping (A) throws -> B) -> (A?) throws -> B? {
  { a in try a.map(transform) }
}
