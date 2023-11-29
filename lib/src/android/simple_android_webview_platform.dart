import 'dart:io';

import 'package:webview_flutter_android/webview_flutter_android.dart' as webview;
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

import 'android_webview_controller.dart' as custom;

/// Implementation of [WebViewPlatform] using the WebKit API.
class SimpleAndroidWebViewPlatform extends WebViewPlatform {
  /// Registers this class as the default instance of [WebViewPlatform].
  static void registerWith() {
    if (Platform.isAndroid) {
      WebViewPlatform.instance = SimpleAndroidWebViewPlatform();
    }
  }

  @override
  custom.AndroidWebViewController createPlatformWebViewController(
      PlatformWebViewControllerCreationParams params,
      ) {
    return custom.AndroidWebViewController(params);
  }

  @override
  custom.AndroidNavigationDelegate createPlatformNavigationDelegate(
      PlatformNavigationDelegateCreationParams params,
      ) {
    return custom.AndroidNavigationDelegate(params);
  }

  @override
  webview.AndroidWebViewCookieManager createPlatformCookieManager(
      PlatformWebViewCookieManagerCreationParams params,
      ) {
    return webview.AndroidWebViewCookieManager(params);
  }

  @override
  custom.AndroidWebViewWidget createPlatformWebViewWidget(
      PlatformWebViewWidgetCreationParams params,
      ) {
    return custom.AndroidWebViewWidget(params);
  }

}