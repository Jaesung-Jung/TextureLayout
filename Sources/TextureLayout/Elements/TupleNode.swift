//
//  TupleNode.swift
//
//  Copyright (c) 2019 Jaesung Jung.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import AsyncDisplayKit.ASDisplayNode

// MARK: - TupleNode

public struct TupleNode<
    E0: TextureLayoutElement,
    E1: TextureLayoutElement,
    E2: TextureLayoutElement,
    E3: TextureLayoutElement,
    E4: TextureLayoutElement,
    E5: TextureLayoutElement,
    E6: TextureLayoutElement,
    E7: TextureLayoutElement,
    E8: TextureLayoutElement,
    E9: TextureLayoutElement
    >: TextureLayoutElementCollection {

    public let values: (E0, E1, E2, E3, E4, E5, E6, E7, E8, E9)

    @inlinable public func buildCollection() -> [ASLayoutElement] {
        let elements: [[ASLayoutElement]] = [
            values.0.buildCollection(),
            values.1.buildCollection(),
            values.2.buildCollection(),
            values.3.buildCollection(),
            values.4.buildCollection(),
            values.5.buildCollection(),
            values.6.buildCollection(),
            values.7.buildCollection(),
            values.8.buildCollection(),
            values.9.buildCollection()
        ]
        return elements.flatMap { $0 }
    }
}

// MARK: - TupleNode (2)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2 == VoidElement,
          E3 == VoidElement,
          E4 == VoidElement,
          E5 == VoidElement,
          E6 == VoidElement,
          E7 == VoidElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1) {
        self.values = (e0, e1, .init(), .init(), .init(), .init(), .init(), .init(), .init(), .init())
    }
}

// MARK: - TupleNode (3)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3 == VoidElement,
          E4 == VoidElement,
          E5 == VoidElement,
          E6 == VoidElement,
          E7 == VoidElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2) {
        self.values = (e0, e1, e2, .init(), .init(), .init(), .init(), .init(), .init(), .init())
    }
}

// MARK: - TupleNode (4)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4 == VoidElement,
          E5 == VoidElement,
          E6 == VoidElement,
          E7 == VoidElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3) {
        self.values = (e0, e1, e2, e3, .init(), .init(), .init(), .init(), .init(), .init())
    }
}

// MARK: - TupleNode (5)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4: TextureLayoutElement,
          E5 == VoidElement,
          E6 == VoidElement,
          E7 == VoidElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3, _ e4: E4) {
        self.values = (e0, e1, e2, e3, e4, .init(), .init(), .init(), .init(), .init())
    }
}

// MARK: - TupleNode (6)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4: TextureLayoutElement,
          E5: TextureLayoutElement,
          E6 == VoidElement,
          E7 == VoidElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3, _ e4: E4, _ e5: E5) {
        self.values = (e0, e1, e2, e3, e4, e5, .init(), .init(), .init(), .init())
    }
}

// MARK: - TupleNode (7)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4: TextureLayoutElement,
          E5: TextureLayoutElement,
          E6: TextureLayoutElement,
          E7 == VoidElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3, _ e4: E4, _ e5: E5, _ e6: E6) {
        self.values = (e0, e1, e2, e3, e4, e5, e6, .init(), .init(), .init())
    }
}

// MARK: - TupleNode (8)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4: TextureLayoutElement,
          E5: TextureLayoutElement,
          E6: TextureLayoutElement,
          E7: TextureLayoutElement,
          E8 == VoidElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3, _ e4: E4, _ e5: E5, _ e6: E6, _ e7: E7) {
        self.values = (e0, e1, e2, e3, e4, e5, e6, e7, .init(), .init())
    }
}

// MARK: - TupleNode (9)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4: TextureLayoutElement,
          E5: TextureLayoutElement,
          E6: TextureLayoutElement,
          E7: TextureLayoutElement,
          E8: TextureLayoutElement,
          E9 == VoidElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3, _ e4: E4, _ e5: E5, _ e6: E6, _ e7: E7, _ e8: E8) {
        self.values = (e0, e1, e2, e3, e4, e5, e6, e7, e8, .init())
    }
}

// MARK: - TupleNode (10)

extension TupleNode
    where E0: TextureLayoutElement,
          E1: TextureLayoutElement,
          E2: TextureLayoutElement,
          E3: TextureLayoutElement,
          E4: TextureLayoutElement,
          E5: TextureLayoutElement,
          E6: TextureLayoutElement,
          E7: TextureLayoutElement,
          E8: TextureLayoutElement,
          E9: TextureLayoutElement {

    public init(_ e0: E0, _ e1: E1, _ e2: E2, _ e3: E3, _ e4: E4, _ e5: E5, _ e6: E6, _ e7: E7, _ e8: E8, _ e9: E9) {
        self.values = (e0, e1, e2, e3, e4, e5, e6, e7, e8, e9)
    }
}

// MARK: - VoidElement

public struct VoidElement: TextureLayoutElement {
    fileprivate init() {
    }

    @inlinable public func build() -> ASLayoutElement {
        fatalError("Can't build a VoidElement")
    }

    @inlinable public func buildCollection() -> [ASLayoutElement] {
        return []
    }
}
