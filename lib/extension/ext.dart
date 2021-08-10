import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/utils/crud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension RoarContainerX on Container {
  Widget inkTap(void Function() onTap) {
    return InkWell(child: this, onTap: onTap);
  }

  Widget dismiss(Key key, EcoEcpData data) {
    return Dismissible(
        key: key,
        child: this,
        onDismissed: (_) {
          CRUDoperation.delData(data);
        });
  }
}
