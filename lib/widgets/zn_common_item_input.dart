//
// zn_common_item_input.dart
// zn_flu_bmod_sal
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 林威 on 2020/07/04.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './zn_common_item_base.dart';

class ZNCommonItemInput extends ZNCommonItemBase {
  final Function(String str, TextEditingController controller) onInputChange;

  final String itemValue;

  final Color textFieldColor;

  // final FocusNode focusNode;

  final Function(FocusNode focusNode) onTap;

  ZNCommonItemInput(
      {String itemTitle,
      this.itemValue,
      this.onInputChange,
      this.textFieldColor,
      this.onTap,
      bool isShowIcon = false})
      : super(itemTitle: itemTitle, isShowIcon: isShowIcon);
  @override
  ZNCommonItemBaseState createState() {
    return ZNCommonItemInputState();
  }
}

class ZNCommonItemInputState extends ZNCommonItemBaseState {
  Function(String str, TextEditingController controller) onInputChange;

  Function(FocusNode focusNode) onTap;

  TextEditingController _controller = TextEditingController();

  FocusNode focusNode = FocusNode();
  // FocusNode get focusNode {
  //   if (widget.focusNode != null) {
  //     return widget.focusNode;
  //   } else {
  //     return FocusNode();
  //   }
  // }

  @override
  EdgeInsetsGeometry get itemPadding => EdgeInsets.only(left: 15, right: 15);

  @override
  ZNCommonItemInput get widget {
    return super.widget;
  }

  String get itemValue {
    if (widget.itemValue != null && widget.itemValue.isNotEmpty) {
      return widget.itemValue;
    } else {
      return null;
    }
  }

  Color get textFieldColor {
    if (widget.textFieldColor != null) {
      return widget.textFieldColor;
    } else {
      return Color(0XFF333333);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onTap = widget.onTap;
    onInputChange = widget.onInputChange;
    _controller.text = itemValue;
  }

  @override
  Widget get midWidget {
    return Container(
      alignment: Alignment.centerRight,
      child: TextField(
        controller: _controller,
        onTap: () {
          this.onTap(focusNode);
        },
        onChanged: (String value) {
          this.onInputChange(value, _controller);
        },
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
        ],
        keyboardAppearance: Brightness.light,
        focusNode: focusNode,
        decoration: new InputDecoration(
          // contentPadding: const EdgeInsets.only(bottom: 10),
          hintText: "请输入",
          border: InputBorder.none,
          hintStyle: new TextStyle(fontSize: 16, color: Color(0XFF999999)),
        ),
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 16.0,
          color: textFieldColor,
        ),
      ),
    );
  }
}
