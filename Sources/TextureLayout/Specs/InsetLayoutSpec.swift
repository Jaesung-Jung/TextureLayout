//
//  InsetLayoutSpec.swift
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

import AsyncDisplayKit.ASLayoutSpec

public struct Inset: TextureLayoutSpec, Modifier {
    public let spec: () -> ASInsetLayoutSpec

    public init<Content: TextureLayoutElement>(
        _ insets: UIEdgeInsets = .zero,
        @TextureLayoutBuilder content: () -> Content) {
        let content = content()
        spec = {
            .init(insets: insets, child: content.build())
        }
    }

    public init<Content: TextureLayoutElement>(
        hInset: CGFloat = 0,
        vInset: CGFloat = 0,
        @TextureLayoutBuilder content: () -> Content) {
        self.init(.init(top: vInset, left: hInset, bottom: vInset, right: hInset), content: content)
    }

    public init<Content: TextureLayoutElement>(
        top: CGFloat = 0,
        left: CGFloat = 0,
        bottom: CGFloat = 0,
        right: CGFloat = 0,
        @TextureLayoutBuilder content: () -> Content) {
        self.init(.init(top: top, left: left, bottom: bottom, right: right), content: content)
    }
}

extension Inset {
    public init(_ element: ASLayoutElement, insets: UIEdgeInsets = .zero) {
        spec = {
            .init(insets: insets, child: element)
        }
    }

    public init(_ element: ASLayoutElement, hInset: CGFloat = 0, vInset: CGFloat = 0) {
        self.init(element, insets: .init(top: vInset, left: hInset, bottom: vInset, right: hInset))
    }

    public init(_ element: ASLayoutElement, top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        self.init(element, insets: .init(top: top, left: left, bottom: bottom, right: right))
    }
}
