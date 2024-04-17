import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> openWebPage(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch');
    }
  }
}
