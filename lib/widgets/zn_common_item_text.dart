//
// zn_common_item_text.dart
// zn_flu_bmod_sal
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 林威 on 2020/07/04.

import 'package:flutter/material.dart';
import './zn_common_item_base.dart';

class ZNCommonItemText extends ZNCommonItemBase {
  final String text;

  ZNCommonItemText(String itemTitle, this.text, {bool isShowIcon = false})
      : super(itemTitle: itemTitle, isShowIcon: isShowIcon);

  @override
  ZNCommonItemBaseState createState() {
    return ZNCommonItemTextState();
  }
}

class ZNCommonItemTextState extends ZNCommonItemBaseState {
  @override
  ZNCommonItemText get widget {
    return super.widget;
  }

  @override
  Widget get midWidget {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(widget.text),
    );
  }
}
