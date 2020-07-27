import 'package:Fib/widget_gridview.dart';
import 'package:flutter/material.dart';
import 'package:Fib/playground.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePageBloc bloc = HomePageBloc();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: <SingleChildCloneableWidget>[
          ChangeNotifierProvider.value(value: bloc),
        ],
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              WidgetGridView(),
              Expanded(child: buildPlayground()),
              Container(
                color: Colors.red,
                width: 250,
                alignment: Alignment.center,
                child: Text(
                  '属性列表',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildPlayground() {
    return Container(
      color: Colors.black12,
      child: Stack(
        children: [
          Positioned(
              width: 375, height: 667, top: 40, left: 150, child: Playground())
        ],
      ),
    );
  }
}

class HomePageBloc extends ChangeNotifier {
  String _jsonString;
  String get jsonString => _jsonString;
  set jsonString(String value) {
    _jsonString = value;
    notifyListeners();
  }
}
