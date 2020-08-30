//
//  StackLayoutSpec.swift
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

// MARK: - VStack

public struct VStack: TextureLayoutSpec, Modifier {
    public let spec: () -> ASStackLayoutSpec

    public init<Content: TextureLayoutElement>(
        justifyContent: ASStackLayoutJustifyContent = .start,
        alignItems: ASStackLayoutAlignItems = .stretch,
        alignContent: ASStackLayoutAlignContent = .start,
        wrap: ASStackLayoutFlexWrap = .noWrap,
        spacing: CGFloat = 0,
        lineSpacing: CGFloat = 0,
        @TextureLayoutBuilder content: () -> Content) {
        let content = content()
        spec = {
            .init(
                direction: .vertical,
                spacing: spacing,
                justifyContent: justifyContent,
                alignItems: alignItems,
                flexWrap: wrap,
                alignContent: alignContent,
                lineSpacing: lineSpacing,
                children: content.buildCollection()
            )
        }
    }
}

// MARK: - HStack

public struct HStack: TextureLayoutSpec, Modifier {
    public let spec: () -> ASStackLayoutSpec

    public init<Content: TextureLayoutElement>(
        justifyContent: ASStackLayoutJustifyContent = .start,
        alignItems: ASStackLayoutAlignItems = .stretch,
        alignContent: ASStackLayoutAlignContent = .start,
        wrap: ASStackLayoutFlexWrap = .noWrap,
        spacing: CGFloat = 0,
        lineSpacing: CGFloat = 0,
        @TextureLayoutBuilder content: () -> Content) {
        let content = content()
        spec = {
            .init(
                direction: .horizontal,
                spacing: spacing,
                justifyContent: justifyContent,
                alignItems: alignItems,
                flexWrap: wrap,
                alignContent: alignContent,
                lineSpacing: lineSpacing,
                children: content.buildCollection()
            )
        }
    }
}
