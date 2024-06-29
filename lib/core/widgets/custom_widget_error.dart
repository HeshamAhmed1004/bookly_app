
import 'package:bookly_app/core/utilise/styles.dart';
import 'package:flutter/material.dart';

class CustomWidgetError extends StatelessWidget {
  const CustomWidgetError({super.key, required this.errMessage});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
