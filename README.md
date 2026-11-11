# SESDKODMInfo for iOS

Official SolarEngine ODMInfo plugin for iOS. Use with  [SolarEngineSDK-VG](https://github.com/solarengine-sdk/SolarEngineSDK-iOS-VG-SMP).

## Requirements

- iOS 12.0+
- Xcode 15.0+ / Swift 5.9+
- arm64 devices or x86_64 simulators. arm64 simulators are currently unsupported.

## Installation (Swift Package Manager)

In Xcode, go to **File > Add Package Dependencies…**, select **Exact Version**, and add the **SESDKODMInfo** product to your App Target.

| Package / Product | Version | Repository URL |
| --- | --- | --- |
| SESDKODMInfo | `1.0.2` | https://github.com/solarengine-sdk/SESDKODMInfo-iOS-SPM |

No separate plugin import or initialization is required.

## Third-Party Dependencies

Add the following package separately using **Exact Version**, and add the **GoogleAdsOnDeviceConversion** product to the same App Target.

| Package / Product | Version | Repository URL |
| --- | --- | --- |
| GoogleAdsOnDeviceConversion | `2.0.0` | https://github.com/googleads/google-ads-on-device-conversion-ios-sdk |

GoogleAdsOnDeviceConversion automatically adds the following dependencies; no separate installation is required.

| Dependency | SPM version range |
| --- | --- |
| [GoogleUtilities](https://github.com/google/GoogleUtilities) | `>= 8.1.0, < 9.0.0` |
| [nanopb](https://github.com/firebase/nanopb) | `>= 2.30910.0, < 2.30911.0` |

## Configuration (Required)

In your **App Target > Build Settings > Other Linker Flags**, add `$(inherited) -ObjC` for both **Debug** and **Release**.
