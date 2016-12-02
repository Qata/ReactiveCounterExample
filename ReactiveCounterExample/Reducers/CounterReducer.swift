import ReactiveReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
let counterReducer = Reducer<AppState> { action, state in
    switch action as? AppAction {
    case .increase?:
        return AppState(counter: state.counter + 1)
    case .decrease?:
        return AppState(counter: state.counter - 1)
    default:
        return state
    }
}
