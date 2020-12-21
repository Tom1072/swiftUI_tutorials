## State property
- Swift UI manages the storage of any property you declare as a state. When the state value changes, the view
validates its appearance and recomputes the body. Use state as the single source of truth for a given view
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

