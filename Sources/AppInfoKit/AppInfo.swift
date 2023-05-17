import ComposableArchitecture

public struct AppInfo: Equatable {
    public var buildString: String?
    public var displayName: String?
    public var localizationIdentifier: String?
    public var versionString: String?

    public init(
        buildString: String? = nil,
        displayName: String? = nil,
        localizationIdentifier: String?,
        versionString: String? = nil
    ) {
        self.buildString = buildString
        self.displayName = displayName
        self.localizationIdentifier = localizationIdentifier
        self.versionString = versionString
    }
}
