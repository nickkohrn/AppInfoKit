import ComposableArchitecture

extension DependencyValues {
    public var appInfoClient: AppInfoClient {
        get { self[AppInfoClient.self] }
        set { self[AppInfoClient.self] = newValue }
    }
}
