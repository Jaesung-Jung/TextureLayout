//
//  CenterLayoutSpec.swift
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

// MARK: - Center

public struct Center: TextureLayoutSpec, Modifier {
    public let spec: () -> ASCenterLayoutSpec

    public init<Content: TextureLayoutElement>(
        sizingOptions: ASCenterLayoutSpecSizingOptions = [],
        @TextureLayoutBuilder content: () -> Content) {
        let content = content()
        spec = {
            .init(centeringOptions: .XY, sizingOptions: sizingOptions, child: content.build())
        }
    }

    public init(_ element: ASLayoutElement, sizingOptions: ASCenterLayoutSpecSizingOptions = []) {
        spec = {
            .init(centeringOptions: .XY, sizingOptions: sizingOptions, child: element)
        }
    }
}

// MARK: - VCenter

public struct VCenter: TextureLayoutSpec, Modifier {
    public let spec: () -> ASCenterLayoutSpec

    public init<Content: TextureLayoutElement>(
        sizingOptions: ASCenterLayoutSpecSizingOptions = [],
        @TextureLayoutBuilder content: () -> Content) {
        let content = content()
        spec = {
            .init(centeringOptions: .Y, sizingOptions: sizingOptions, child: content.build())
        }
    }

    public init(_ element: ASLayoutElement, sizingOptions: ASCenterLayoutSpecSizingOptions = []) {
        spec = {
            .init(centeringOptions: .Y, sizingOptions: sizingOptions, child: element)
        }
    }
}

// MARK: - HCenter

public struct HCenter: TextureLayoutSpec, Modifier {
    public let spec: () -> ASCenterLayoutSpec

    public init<Content: TextureLayoutElement>(
        sizingOptions: ASCenterLayoutSpecSizingOptions = [],
        @TextureLayoutBuilder content: () -> Content) {
        let content = content()
        spec = {
            .init(centeringOptions: .X, sizingOptions: sizingOptions, child: content.build())
        }
    }

    public init(_ element: ASLayoutElement, sizingOptions: ASCenterLayoutSpecSizingOptions = []) {
        spec = {
            .init(centeringOptions: .X, sizingOptions: sizingOptions, child: element)
        }
    }
}
