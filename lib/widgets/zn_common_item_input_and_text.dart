//
// zn_common_item_input_and_text.dart
// zn_flu_bmod_sal
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 林威 on 2020/07/04.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './zn_common_item_base.dart';

class ZNCommonItemInputAndText extends ZNCommonItemBase {
  final Function(String str, TextEditingController controller) onInputChange;

  final String text;

  final String itemValue;

  // final FocusNode focusNode;

  final Color textFieldColor;

  final Function(FocusNode focusNode) onTap;

  ZNCommonItemInputAndText(
      {String itemTitle,
      this.text,
      this.itemValue,
      this.onTap,
      this.onInputChange,
      this.textFieldColor,
      bool isShowIcon = false,
      Divider divider,
      Widget otherBottomWidget})
      : super(
            itemTitle: itemTitle,
            isShowIcon: isShowIcon,
            divider: divider,
            otherBottomWidget: otherBottomWidget);

  @override
  ZNCommonItemBaseState createState() {
    return ZNCommonItemInputAndSelectState();
  }
}

class ZNCommonItemInputAndSelectState extends ZNCommonItemBaseState {
  // @override
  // ZNCommonItemInputAndSelect get widget
  @override
  ZNCommonItemInputAndText get widget {
    return super.widget;
  }

  Function(FocusNode focusNode) onTap;

  Function(String value, TextEditingController controller) onInputChange;

  TextEditingController _controller = TextEditingController();

  @override
  EdgeInsetsGeometry get itemPadding => EdgeInsets.only(left: 15, right: 15);

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

  FocusNode focusNode = FocusNode();
  // FocusNode get focusNode {
  //   if (widget.focusNode != null) {
  //     return widget.focusNode;
  //   } else {
  //     return FocusNode();
  //   }
  // }

  @override
  void initState() {
    super.initState();
    onTap = widget.onTap;
    onInputChange = widget.onInputChange;
    _controller.text = itemValue;
  }

  @override
  Widget get midWidget {
    return Container(
      child: TextField(
        controller: _controller,
        onTap: () {
          this.onTap(focusNode);
        },
        onChanged: (String value) {
          this.onInputChange(value, _controller);
        },
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly,
        ],
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

  @override
  Widget get rightWidget {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            width: 1,
            height: 25,
            color: Color(0XFFD2D3D5),
          ),
        ),
        Container(
          width: 80,
          child: Text(
            widget.text,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0XFF333333),
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
