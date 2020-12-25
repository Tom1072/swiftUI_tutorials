## State property
- Purpose: Swift UI manages the storage of any property you declare as a state. When the state value
changes, the view validates its appearance and recomputes the body. Use state as the single source of
truth for a given view
    - To declare a State property, use `@State` before declaration
    - Use `private` for you state property, because it should only be accessed from inside the view's body
    - To pass a state property to another view in the view hierarchy, use `$` followed by the variable name
```Swift
struct PlayerView: View {
    var episode: Episode
    @State private var isPlaying: Bool = false

    var body: some View {
        VStack {
            Text(episode.title)
            Text(episode.showTitle)
            PlayButton(isPlaying: $isPlaying)
        }
    }
}
```
[SwiftUI State Docs](https://developer.apple.com/documentation/swiftui/state)

## Bundle class
- Purpose: Apple uses bundles to represent apps, frameworks, plug-ins, and other specific types of content.

- `Bundle.main`: the most common Bundle construtor


## Codable Protocol
- Purpose: Make your data encodable and decodable for compatibility with external representation such as JSON
    - Send over network
    - Save to disk
    - Submit to API
- To adop the standardized approach to data encoding and decoding in the Swift STD Library, we implement
`Encodable` and `Decodable` protocols on our custom types. This lets the implementation of the `Encoder` and 
`Decoder` protocols take your data and encode or decode it to and from an external representation such as JSON
or property list.
- To support both encoding and decoding, declare conformance to `Codable`, which combines the `Encodable` and
`Decodable` protocols.
[Swift Codable Docs](https://developer.apple.com/documentation/swift/codable)

## Hashable Protocol
- Purpose: Similar idea to `Codable` protocols, custom types that conform to the `Hashable` protocol can be
hashed to use in a set or as a dictionary key
[Swift Hashable Docs](https://developer.apple.com/documentation/swift/hashable)

## guard statement
- Purpose: `guard` helps you return your function early if a condition isn't met
```
func sqrt(number: Int) -> Int?
{
    guard number >= 0 else {
        return nil
    }

    // Calculate and return square root of `number`
    return ...
}
```
- `guard` that `number` is `>= 0`, or `else`, `return nil`.

## `Data` value type
- Purpose: The `Data` value type allows simple byte buffer to take on the behaviour of Foundation objects. 
