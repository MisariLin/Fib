//
// zn_common_item_base.dart
// zn_flu_bmod_sal
//
// Copyright 2020 Znlh. All rights reserved.
// Created by 林威 on 2020/07/02.

import 'package:flutter/material.dart';

class ZNCommonItemBase extends StatefulWidget {
  Widget titleWidget;

  Widget midWidget;

  Widget rightWidget;

  Widget otherBottomWidget;

  Widget divider;

  final String itemTitle;

  bool isShowIcon;

  ZNCommonItemBase(
      {this.itemTitle,
      this.isShowIcon = false,
      this.titleWidget,
      this.midWidget,
      this.rightWidget,
      this.divider,
      this.otherBottomWidget});

  @override
  ZNCommonItemBaseState createState() => ZNCommonItemBaseState();
}

class ZNCommonItemBaseState extends State<ZNCommonItemBase> {
  bool get isShowIcon {
    if (widget.isShowIcon == true) {
      return true;
    }
    return false;
  }

  EdgeInsetsGeometry get itemPadding => EdgeInsets.all(15);

  Widget get starIconWidget {
    return Visibility(
      visible: isShowIcon,
      child: Text("*", style: TextStyle(color: Colors.red, fontSize: 16)),
      // child: Icon(Icons.brightness_1, color: Colors.red, size: 13,),
    );
  }

  Widget get titleWidget {
    if (widget.titleWidget != null) {
      return widget.titleWidget;
    }
    return Container(
      child: Text(
        widget.itemTitle,
        style: TextStyle(
          fontSize: 16.0,
          color: Color(0xFF999999),
        ),
      ),
    );
  }

  Widget get midWidget {
    if (widget.midWidget != null) {
      return widget.midWidget;
    }
    return Container();
  }

  Widget get rightWidget {
    if (widget.rightWidget != null) {
      return widget.rightWidget;
    }
    return Container();
  }

  Widget get divider {
    if (widget.divider != null) {
      return widget.divider;
    }
    return Divider(
      height: 1,
      indent: 15,
      color: Color(0XFFE6E6E6),
    );
  }

  Widget get otherBottomWidget {
    if (widget.otherBottomWidget != null) {
      return widget.otherBottomWidget;
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: itemPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              starIconWidget,
              titleWidget,
              Expanded(
                child: midWidget,
              ),
              rightWidget,
            ],
          ),
        ),
        divider,
        otherBottomWidget,
      ],
    );
  }
}
