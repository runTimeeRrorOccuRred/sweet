import 'package:flutter/material.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewContainer extends StatefulWidget {
  const WebviewContainer({super.key});

  @override
  State<WebviewContainer> createState() => _WebviewContainerState();
}

class _WebviewContainerState extends State<WebviewContainer> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(AppConstants.termConditionUrl));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : WebViewWidget(
                controller: controller,
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Icon(Icons.navigate_before),
          ),
        ),
      ),
    );
  }
}

class WebViewPrivacyPolicy extends StatefulWidget {
  const WebViewPrivacyPolicy({super.key});

  @override
  State<WebViewPrivacyPolicy> createState() => _WebViewPrivacyPolicyState();
}

class _WebViewPrivacyPolicyState extends State<WebViewPrivacyPolicy> {
  late bool _isLoading;
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(AppConstants.privacyPolicyUrl));

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : WebViewWidget(
                controller: controller,
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Icon(Icons.navigate_before),
          ),
        ),
      ),
    );
  }
}
