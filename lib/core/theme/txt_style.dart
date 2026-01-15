import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:onlystudy11/core/theme/colors_manager.dart';

class  TxtStyle {
  static TextStyle font600Size16Black = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: ColorsManager.primaryColor,
  );
  static TextStyle font600Size18Black = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: ColorsManager.primaryColor,
  );
  static TextStyle font400Size14Black = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorsManager.primaryColor,
  );
  static TextStyle font400Size14Grey = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorsManager.grey,
  );
  static TextStyle font600Size16Brown = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: ColorsManager.brown,
  );
  static TextStyle font600Size16White = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: ColorsManager.white,
  );

}