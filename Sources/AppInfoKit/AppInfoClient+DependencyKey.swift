import ComposableArchitecture
import Foundation

extension AppInfoClient: DependencyKey {
    public static let liveValue: AppInfoClient = {
        return AppInfoClient { bundle in
            AppInfo(
                buildString: bundle.object(forInfoDictionaryKey: "CFBundleVersion") as? String,
                displayName: bundle.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String,
                localizationIdentifier: bundle.preferredLocalizations.first,
                versionString: bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
            )
        }
    }()
}
