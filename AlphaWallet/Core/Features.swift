// Copyright © 2020 Stormbird PTE. LTD.

import Foundation

    /// Helper enum representing feature enable state, provides ability to set configured enabled state value
enum FeaturesState<T> {
    case enabled(value: T)
    case disabled
}

enum Features {
    static let isActivityEnabled = true
    static let isSendAllFundsFungibleEnabled = true
    static let isSpeedupAndCancelEnabled = true
    static let isLanguageSwitcherDisabled = false
    static let shouldLoadTokenScriptWithFailedSignatures = true
    static let isRenameWalletEnabledWhileLongPress = true
    static let shouldPrintCURLForOutgoingRequest = false
    static let isEip3085AddEthereumChainEnabled = true
    static let isEip3326SwitchEthereumChainEnabled = true
    static let isPromptForEmailListSubscriptionEnabled = false
    static let isAlertsEnabled = true
    static let isErc1155Enabled = true
    static let isUsingPrivateNetwork = false
    static let isUsingAppEnforcedTimeoutForMakingWalletConnectConnections = true
    static let isAttachingLogFilesToSupportEmailEnabled = false
    static let isPalmEnabled = false
    static let isExportJsonKeystoreEnabled = true
    static let is24SeedWordPhraseAllowed = false
}
