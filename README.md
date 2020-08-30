# Texture Layout

Texture layout builder using @\_functionBuilder.

## Texture

```swift
override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec
{
  let mainStack = ASStackLayoutSpec(
    direction: .horizontal,
    spacing: 6.0,
    justifyContent: .start,
    alignItems: .center,
    children: [titleNode, subtitleNode]
  )
  mainStack.style.minWidth = ASDimensionMakeWithPoints(60.0)
  mainStack.style.maxHeight = ASDimensionMakeWithPoints(40.0)

  return mainStack
}
```

## With TextureLayout builder

```swift
override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec
  LayoutSpec {
    HStack(justifyContent: .start, alignItems: .start, spacing: 6) {
      Node(titleNode)
      Node(subtitleNode)
    }
    .minWidth(60)
    .minHeight(40)
  }
}
```
