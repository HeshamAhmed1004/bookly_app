import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchUrl( context,String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }else{
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('cannot launch $url'))
    );
  }
}
