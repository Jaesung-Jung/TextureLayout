//
//  Modifier.swift
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

public protocol Modifier: TextureLayoutElement {
}

extension Modifier {
    @inlinable public func basis(_ value: ASDimension) -> some Modifier {
        return modified(\.style.flexBasis, value: value)
    }

    @inlinable public func grow(_ value: CGFloat) -> some Modifier {
        return modified(\.style.flexGrow, value: value)
    }

    @inlinable public func shrink(_ value: CGFloat) -> some Modifier {
        return modified(\.style.flexShrink, value: value)
    }

    @inlinable public func width(_ value: ASDimension) -> some Modifier {
        return modified(\.style.width, value: value)
    }

    @inlinable public func height(_ value: ASDimension) -> some Modifier {
        return modified(\.style.height, value: value)
    }

    @inlinable public func maxWidth(_ value: ASDimension) -> some Modifier {
        return modified(\.style.maxWidth, value: value)
    }

    @inlinable public func maxHeight(_ value: ASDimension) -> some Modifier {
        return modified(\.style.maxHeight, value: value)
    }

    @inlinable public func minWidth(_ value: ASDimension) -> some Modifier {
        return modified(\.style.minWidth, value: value)
    }

    @inlinable public func minHeight(_ value: ASDimension) -> some Modifier {
        return modified(\.style.minHeight, value: value)
    }

    @inlinable public func maxLayoutSize(_ value: ASLayoutSize) -> some Modifier {
        return modified(\.style.maxLayoutSize, value: value)
    }

    @inlinable public func minLayoutSize(_ value: ASLayoutSize) -> some Modifier {
        return modified(\.style.minLayoutSize, value: value)
    }

    @inlinable public func preferredLayoutSize(_ value: ASLayoutSize) -> some Modifier {
        return modified(\.style.preferredLayoutSize, value: value)
    }

    @inlinable public func preferredSize(_ value: CGSize) -> some Modifier {
        return modified(\.style.preferredSize, value: value)
    }

    @inlinable public func modified<Value>(_ keyPath: ReferenceWritableKeyPath<Element, Value>, value: Value) -> some Modifier {
        return ModifiedNode<Self>(self) {
            $0[keyPath: keyPath] = value
            return $0
        }
    }
}
