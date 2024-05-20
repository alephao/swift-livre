public func toDictionary<Key: Hashable, Value>(_ keyValues: [(Key, Value)]) -> [Key: Value] {
  return keyValues.reduce(into: [Key: Value](), { dict, kv in dict[kv.0] = kv.1 })
}

public func value<Key: Hashable, Value>(for key: Key) -> ([Key: Value]) -> Value? {
  { dict in dict[key] }
}

public func values<Key: Hashable, Value>(for keys: [Key]) -> ([Key: Value]) -> [Value]? {
  { dict in
    var result: [Value] = []
    for key in keys {
      guard let value = dict[key] else {
        return nil
      }
      result.append(value)
    }
    return result
  }
}

public func values<Key: Hashable, Value>(_ k1: Key, _ k2: Key) -> ([Key: Value]) -> (Value?, Value?)
{
  { dict in return (dict[k1], dict[k2]) }
}

public func values<Key: Hashable, Value>(_ k1: Key, _ k2: Key, _ k3: Key) -> ([Key: Value]) -> (
  Value?, Value?, Value?
) {
  { dict in return (dict[k1], dict[k2], dict[k3]) }
}

public func values<Key: Hashable, Value>(_ k1: Key, _ k2: Key, _ k3: Key, _ k4: Key) -> (
  [Key: Value]
) -> (Value?, Value?, Value?, Value?) {
  { dict in return (dict[k1], dict[k2], dict[k3], dict[k4]) }
}

public func valuesOptional<Key: Hashable, Value>(for keys: [Key]) -> ([Key: Value]) -> [Value?] {
  { dict in
    var result: [Value?] = []
    for key in keys {
      result.append(dict[key])
    }
    return result
  }
}
