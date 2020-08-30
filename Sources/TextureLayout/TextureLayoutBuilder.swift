//
//  TextureLayoutBuilder.swift
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

// MARK: - TextureLayoutBuilder

@_functionBuilder public struct TextureLayoutBuilder {
    public typealias V = VoidElement

    public static func buildBlock() -> EmptyNode {
        return EmptyNode()
    }

    public static func buildBlock<Element: TextureLayoutElement>(_ element: Element) -> Element {
        return element
    }
}

// MARK: - Build a ConditionalNode

extension TextureLayoutBuilder {
    public static func buildIf<Element: TextureLayoutElement>(_ element: Element?) -> Element? {
        return element
    }

    public static func buildEither<T: TextureLayoutElement, F: TextureLayoutElement>(first: T) -> ConditionalNode<T, F> {
        return ConditionalNode(first: first)
    }

    public static func buildEither<T: TextureLayoutElement, F: TextureLayoutElement>(second: F) -> ConditionalNode<T, F> {
        return ConditionalNode(second: second)
    }
}

// MARK: - Build a TupleNode

extension TextureLayoutBuilder {
    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1)
        -> TupleNode<E0, E1, V, V, V, V, V, V, V, V> {
        return TupleNode(e0, e1)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2)
        -> TupleNode<E0, E1, E2, V, V, V, V, V, V, V> {
        return TupleNode(e0, e1, e2)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3)
        -> TupleNode<E0, E1, E2, E3, V, V, V, V, V, V> {
        return TupleNode(e0, e1, e2, e3)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement,
        E4: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3,
         _ e4: E4)
        -> TupleNode<E0, E1, E2, E3, E4, V, V, V, V, V> {
        return TupleNode(e0, e1, e2, e3, e4)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement,
        E4: TextureLayoutElement,
        E5: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3,
         _ e4: E4,
         _ e5: E5)
        -> TupleNode<E0, E1, E2, E3, E4, E5, V, V, V, V> {
        return TupleNode(e0, e1, e2, e3, e4, e5)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement,
        E4: TextureLayoutElement,
        E5: TextureLayoutElement,
        E6: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3,
         _ e4: E4,
         _ e5: E5,
         _ e6: E6)
        -> TupleNode<E0, E1, E2, E3, E4, E5, E6, V, V, V> {
        return TupleNode(e0, e1, e2, e3, e4, e5, e6)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement,
        E4: TextureLayoutElement,
        E5: TextureLayoutElement,
        E6: TextureLayoutElement,
        E7: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3,
         _ e4: E4,
         _ e5: E5,
         _ e6: E6,
         _ e7: E7)
        -> TupleNode<E0, E1, E2, E3, E4, E5, E6, E7, V, V> {
        return TupleNode(e0, e1, e2, e3, e4, e5, e6, e7)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement,
        E4: TextureLayoutElement,
        E5: TextureLayoutElement,
        E6: TextureLayoutElement,
        E7: TextureLayoutElement,
        E8: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3,
         _ e4: E4,
         _ e5: E5,
         _ e6: E6,
         _ e7: E7,
         _ e8: E8)
        -> TupleNode<E0, E1, E2, E3, E4, E5, E6, E7, E8, V> {
        return TupleNode(e0, e1, e2, e3, e4, e5, e6, e7, e8)
    }

    public static func buildBlock<
        E0: TextureLayoutElement,
        E1: TextureLayoutElement,
        E2: TextureLayoutElement,
        E3: TextureLayoutElement,
        E4: TextureLayoutElement,
        E5: TextureLayoutElement,
        E6: TextureLayoutElement,
        E7: TextureLayoutElement,
        E8: TextureLayoutElement,
        E9: TextureLayoutElement>
        (_ e0: E0,
         _ e1: E1,
         _ e2: E2,
         _ e3: E3,
         _ e4: E4,
         _ e5: E5,
         _ e6: E6,
         _ e7: E7,
         _ e8: E8,
         _ e9: E9)
        -> TupleNode<E0, E1, E2, E3, E4, E5, E6, E7, E8, E9> {
        return TupleNode(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9)
    }
}
