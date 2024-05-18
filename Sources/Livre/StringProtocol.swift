public func hasPrefix<S: StringProtocol, Prefix: StringProtocol>(_ prefix: Prefix) -> (S) -> Bool {
  { s in s.hasPrefix(prefix) }
}

public func hasSuffix<S: StringProtocol, Suffix: StringProtocol>(_ suffix: Suffix) -> (S) -> Bool {
  { s in s.hasSuffix(suffix) }
}

public func split<S: StringProtocol>(
  separator: Character,
  maxSplits: Int = Int.max,
  omittingEmptySubsequences: Bool = true
) -> (S) -> [S.SubSequence] {
  { str in
    str.split(
      separator: separator,
      maxSplits: maxSplits,
      omittingEmptySubsequences: omittingEmptySubsequences
    )
  }
}
