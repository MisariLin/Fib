//
// zn_common_item_input_and_select.dart
// zn_flu_bmod_sal
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 林威 on 2020/07/02.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './zn_common_item_base.dart';

class ZNCommonItemInputAndSelect extends ZNCommonItemBase {
  final Function(String str, TextEditingController controller) onInputChange;

  final Function onSelectChange;

  final String itemValue;

  final String selectValue;

  // final FocusNode focusNode;

  final Color textFieldColor;

  final Function(FocusNode focusNode) onTap;

  ZNCommonItemInputAndSelect(
      {String itemTitle,
      this.itemValue,
      this.selectValue,
      bool isShowIcon,
      this.textFieldColor,
      this.onTap,
      this.onInputChange,
      this.onSelectChange,
      Widget otherBottomWidget,
      Divider divider})
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
  ZNCommonItemInputAndSelect get widget {
    return super.widget;
  }

  Function(FocusNode focusNode) onTap;

  Function(String str, TextEditingController controller) onInputChange;

  Function onSelectChange;

  TextEditingController _controller = TextEditingController();

  FocusNode focusNode = FocusNode();
  // FocusNode get focusNode {
  //   if (widget.focusNode != null) {
  //     return widget.focusNode;
  //   } else {
  //     return FocusNode();
  //   }
  // }

  String get itemValue {
    if (widget.itemValue != null && widget.itemValue.isNotEmpty) {
      return widget.itemValue;
    } else {
      return null;
    }
  }

  String get selectValue {
    if (widget.selectValue != null && widget.selectValue.isNotEmpty) {
      return widget.selectValue;
    } else {
      return "请选择";
    }
  }

  Color get textFieldColor {
    if (widget.textFieldColor != null) {
      return widget.textFieldColor;
    }
    return Color(0XFF333333);
  }

  // Color get rightTextColor {
  //   if (widget.rightText != null) {
  //     return widget.rightText;
  //   } else {
  //     return "请选择";
  //   }
  // }

  @override
  void initState() {
    super.initState();
    onTap = widget.onTap;
    onInputChange = widget.onInputChange;
    onSelectChange = widget.onSelectChange;
    _controller.text = itemValue;
  }

  @override
  EdgeInsetsGeometry get itemPadding => EdgeInsets.only(left: 15, right: 15);

  @override
  Widget get midWidget {
    return Container(
      // color: Colors.red,
      // alignment: Alignment.centerRight,
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
        textAlign: TextAlign.right,
        // scrollPadding: EdgeInsets.only(bottom: 0, top: 0, left: 0, right: 0),
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.only(top: 4.0, bottom: 5.0),
          hintText: "请输入",
          border: InputBorder.none,
          hintStyle: new TextStyle(fontSize: 16, color: Color(0XFF999999)),
        ),
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
        GestureDetector(
          onTap: onSelectChange,
          child: Container(
              width: 80,
              // color: Colors.red,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      selectValue,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0XFF333333),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0XFFC7C7CC),
                    size: 13,
                  )
                ],
              )),
        )
      ],
    );
  }
}
