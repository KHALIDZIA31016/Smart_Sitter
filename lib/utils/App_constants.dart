import 'package:flutter/cupertino.dart';

extension CustomSizedBox on num {
 SizedBox get h  => SizedBox(height:  toDouble());
 SizedBox get w  => SizedBox(width:   toDouble());
}