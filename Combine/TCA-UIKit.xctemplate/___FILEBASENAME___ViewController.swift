import ComposableArchitecture
import Combine
import SwiftUI
import UIKit


final class ___FILEBASENAME___: UIViewController {

    private let store: Store<___VARIABLE_productName:identifier___State, ___VARIABLE_productName:identifier___Action>
    
    private let viewStore: ViewStore<ViewState, ViewAction>

    private var cancellables: Set<AnyCancellable> = []

    init(store: Store<___VARIABLE_productName:identifier___State, ___VARIABLE_productName:identifier___Action>? = nil) {
        let unwrapStore = store ?? Store(initialState: ___VARIABLE_productName:identifier___State(), reducer: ___VARIABLE_productName:identifier___Reducer, environment: ___VARIABLE_productName:identifier___Environment())
        self.store = unwrapStore
        self.viewStore = ViewStore(unwrapStore.scope(state: ViewState.init, action: ___VARIABLE_productName:identifier___Action.init))
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewStore.send(.viewDidLoad)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewStore.send(.viewWillAppear)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewStore.send(.viewWillDisappear)
    }

}

struct ___FILEBASENAME____Previews: PreviewProvider {
    static var previews: some View {
        let vc = ___FILEBASENAME___()
        UIViewRepresented(makeUIView: { _ in vc.view })
    }
}

fileprivate struct ViewState: Equatable {

    init(state: ___VARIABLE_productName:identifier___State) {

    }
}

fileprivate enum ViewAction: Equatable {
    case viewDidLoad
    case viewWillAppear
    case viewWillDisappear
    case none

    init(action: ___VARIABLE_productName:identifier___Action) {
        switch action {
        case .viewDidLoad:
            self = .viewDidLoad
        case .viewWillAppear:
            self = .viewWillAppear
        case .viewWillDisappear:
            self = .viewWillDisappear
        default:
            self = .none
        }
    }
}

fileprivate extension ___VARIABLE_productName:identifier___State {

    var viewState: ViewState {
        get {
            ViewState(state: self)
        }
        set {
            
        }
    }

}

fileprivate extension ___VARIABLE_productName:identifier___Action {

    init(action: ViewAction) {
        switch action {
        case .viewDidLoad:
            self = .viewDidLoad
        case .viewWillAppear:
            self = .viewWillAppear
        case .viewWillDisappear:
            self = .viewWillDisappear
        default:
            self = .none
        }
    }
}
