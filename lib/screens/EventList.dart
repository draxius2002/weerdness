/*import 'package:flutter/material.dart';
import 'package:ffg_app/screens/checkout.dart';
//import 'package:ffg_app/util/const.dart';
import 'dart:convert';
import 'package:ffg_app/util/events.dart';
import 'package:ffg_app/widgets/Planner.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:ffg_app/widgets/smooth_star_rating.dart';

class EventListScreen extends StatefulWidget {
  @override
  _EventListScreenState createState() => _EventListScreenState();
  
}

class _EventListScreenState extends State<EventListScreen> with AutomaticKeepAliveClientMixin<EventListScreen >{
  
   WebViewController _webViewController;
  String filePath = 'lib/Event.html';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Webview Demo')),
      body: WebView(
        initialUrl: '',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          _loadHtmlFromAssets();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _webViewController.evaluateJavascript('add(10, 10)');
        },
      ),
    );
  }
 
  _loadHtmlFromAssets() async {
    String fileHtmlContents = await rootBundle.loadString(filePath);
    _webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
            mimeType: 'text/html' , encoding: Encoding.getByName('utf-8'))
        .toString());
  }
} */
