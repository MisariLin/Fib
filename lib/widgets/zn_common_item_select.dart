//
// zn_common_item_select.dart
// zn_flu_bmod_sal
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 林威 on 2020/07/04.

import 'package:flutter/material.dart';
import './zn_common_item_base.dart';

class ZNCommonItemSelect extends ZNCommonItemBase {
  final Function onSelectChange;
  final String rightText;

  ZNCommonItemSelect(String itemTitle, this.rightText, this.onSelectChange,
      {bool isShowIcon = false})
      : super(itemTitle: itemTitle, isShowIcon: isShowIcon);

  @override
  ZNCommonItemBaseState createState() {
    return ZNCommonItemSelectState();
  }
}

class ZNCommonItemSelectState extends ZNCommonItemBaseState {
  @override
  ZNCommonItemSelect get widget {
    return super.widget;
  }

  String get rightText {
    if (widget.rightText != null && widget.rightText.isNotEmpty) {
      return widget.rightText;
    } else {
      return "请选择";
    }
  }

  // Color get rightTextColor {
  //   if (widget.rightText != null) {
  //     return widget.rightText;
  //   } else {
  //     return "请选择";
  //   }
  // }

  Function onSelectChange;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onSelectChange = widget.onSelectChange;
  }

  @override
  Widget get rightWidget {
    return GestureDetector(
      onTap: onSelectChange,
      child: Container(
          // width: 80,
          // color: Colors.red,
          alignment: Alignment.centerRight,
          child: Row(
            children: <Widget>[
              Text(
                rightText,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF333333),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0XFFC7C7CC),
                size: 13,
              )
            ],
          )),
    );
  }
}
