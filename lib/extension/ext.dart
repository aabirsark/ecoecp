import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension InKWellX on Container {
  Widget inkTap(void Function() onTap) {
    return InkWell(child: this, onTap: onTap);
  }
}
