public func toDictionary<Key: Hashable, Value>(_ keyValues: [(Key, Value)]) -> [Key: Value] {
  return keyValues.reduce(into: [Key: Value](), { dict, kv in dict[kv.0] = kv.1 })
}

public func getting<Key: Hashable, Value>(key: Key) -> ([Key: Value]) -> Value? {
  { dict in dict[key] }
}

public func getting<Key: Hashable, Value>(allKeys: [Key]) -> ([Key: Value]) -> [Value]? {
  { dict in
    var result: [Value] = []
    for key in allKeys {
      guard let value = dict[key] else {
        return nil
      }
      result.append(value)
    }
    return result
  }
}
