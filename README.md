# SESDKODMInfo for iOS

Official SolarEngine ODMInfo plugin for iOS. Use with [SolarEngineSDK-CN](https://github.com/solarengine-sdk/SolarEngineSDK-iOS-CN-SMP) or [SolarEngineSDK-VG](https://github.com/solarengine-sdk/SolarEngineSDK-iOS-VG-SMP).

## Requirements

- iOS 12.0+
- Xcode 15.0+ / Swift 5.9+
- arm64 devices or x86_64 simulators. arm64 simulators are currently unsupported.

## Installation

### Swift Package Manager

#### Via Xcode

1. In Xcode, go to **File > Add Package Dependencies…**
2. Enter the repository URL:

   ```text
   https://github.com/solarengine-sdk/SESDKODMInfo-iOS-SPM
   ```

3. Select version `1.0.2` and click **Add Package**.
4. Add the **SESDKODMInfo** product to your App Target.

No separate plugin import or initialization is required.

#### Via Package.swift

Add the package dependency:

```swift
.package(url: "https://github.com/solarengine-sdk/SESDKODMInfo-iOS-SPM", from: "1.0.2")
```

Add the product to your target's dependencies:

```swift
.product(name: "SESDKODMInfo", package: "SESDKODMInfo-iOS-SPM")
```

### Required Dependencies

| SDK | Version |
| --- | --- |
| GoogleAdsOnDeviceConversion | 2.0.0 |
| GoogleUtilities | 8.1.x |
| nanopb | 2.30910.x  |

### Configuration (Required)

In your **App Target > Build Settings > Other Linker Flags**, add `$(inherited) -ObjC` for both **Debug** and **Release**.
