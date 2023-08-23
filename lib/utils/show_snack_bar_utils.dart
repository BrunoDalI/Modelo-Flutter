
import 'package:flutter/material.dart';

class ShowSnackBarUtils {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackError(context, String text){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          alignment: Alignment.center,
          child: Text(text)
        ),
        backgroundColor: Colors.red
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackSuccess(context, String text){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          alignment: Alignment.center,
          child: Text(text)
        ),
        backgroundColor: Colors.green
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackInfo(context, String text){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          alignment: Alignment.center,
          child: Text(text)
        ),
        backgroundColor: Colors.blue
      ),
    );
  }
}