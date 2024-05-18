import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public func trimmingCharacters<S: StringProtocol>(in set: CharacterSet) -> (S) -> String {
  { s in s.trimmingCharacters(in: set) }
}

public func replacingOccurrences<
  S: StringProtocol,
  Target: StringProtocol,
  Replacement: StringProtocol
>(
  of target: Target,
  with replacement: Replacement,
  options: String.CompareOptions = [],
  range searchRange: Range<S.Index>? = nil
) -> (S) -> String {
  { s in s.replacingOccurrences(of: target, with: replacement, options: options, range: searchRange)
  }
}
