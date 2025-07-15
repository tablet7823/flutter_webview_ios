import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: kIsWeb
          ? const Center(child: Text("웹에서는 WebView 미지원"))
          : const WebViewPage(),
    );
  }
}

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        initialUrl: 'https://balonaem.com/m/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
