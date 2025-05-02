//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2014-2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// The configuration of the build environment.
public struct BuildConfiguration: CaseIterable {
    public static var allCases = [BuildConfiguration]()

    public let rawValue: String
    public var traits: Set<String>

    public var dirname: String {
        self.rawValue
    }

    public init(rawValue: String, traits: Set<String>) {
        self.rawValue = rawValue
        self.traits = traits
        if traits.isEmpty {
            self.traits = [rawValue]
        }
        Self.allCases.append(self)
    }
}

extension BuildConfiguration: Encodable, Sendable, Equatable, Hashable {

}
