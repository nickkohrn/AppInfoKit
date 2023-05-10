import Foundation

public struct AppInfoClient {
    public var info: (_ bundle: Bundle) async -> AppInfo
}
