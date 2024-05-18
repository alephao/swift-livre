public func appending<A>(contentsOf other: [A]) -> ([A]) -> [A] {
  { a in a + other }
}

public func appending<A>(_ newElement: A) -> ([A]) -> [A] {
  appending(contentsOf: [newElement])
}

public func compactMap<C: Collection, ElementOfResult>(
  _ transform: @escaping (C.Element) -> ElementOfResult?
) -> (C) -> [ElementOfResult] {
  { c in c.compactMap(transform) }
}

public func compactMap<C: Collection, ElementOfResult>(
  _ transform: @escaping (C.Element) throws -> ElementOfResult?
) -> (C) throws -> [ElementOfResult] {
  { c in try c.compactMap(transform) }
}

public func filterNil<A>(
  _ transform: @escaping (A?) -> A? = { $0 }
) -> ([A]) -> [A] {
  { c in c.compactMap(transform) }
}

public func contains<C: Collection>(where predicate: @escaping (C.Element) -> Bool) -> (C) -> Bool {
  { c in c.contains(where: predicate) }
}

public func contains<C: Collection>(where predicate: @escaping (C.Element) throws -> Bool) -> (C)
  throws -> Bool
{
  { c in try c.contains(where: predicate) }
}

public func filter<C: Collection>(_ isIncluded: @escaping (C.Element) -> Bool) -> (C) -> [C.Element]
{
  { c in c.filter(isIncluded) }
}

public func filter<C: Collection>(_ isIncluded: @escaping (C.Element) throws -> Bool) -> (C) throws
  -> [C.Element]
{
  { c in try c.filter(isIncluded) }
}

public func firstIndex<C: Collection>(of element: C.Element) -> (C) -> C.Index?
where C.Element: Equatable {
  { c in c.firstIndex(of: element) }
}

public func joined<C: Collection>(separator: String = "") -> (C) -> String
where C.Element: StringProtocol {
  { c in c.joined(separator: separator) }
}

public func map<C: Collection, ElementOfResult>(
  _ transform: @escaping (C.Element) -> ElementOfResult
) -> (C) -> [ElementOfResult] {
  { c in c.map(transform) }
}

public func map<C: Collection, ElementOfResult>(
  _ transform: @escaping (C.Element) throws -> ElementOfResult
) -> (C) throws -> [ElementOfResult] {
  { c in try c.map(transform) }
}

public func reduce<C: Collection, Result>(
  _ initialResult: Result,
  _ nextPartialResult: @escaping (Result, C.Element) -> Result
) -> (C) -> Result {
  { c in c.reduce(initialResult, nextPartialResult) }
}

public func reduce<C: Collection, Result>(
  _ initialResult: Result,
  _ nextPartialResult: @escaping (Result, C.Element) throws -> Result
) -> (C) throws -> Result {
  { c in try c.reduce(initialResult, nextPartialResult) }
}
