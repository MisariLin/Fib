import 'package:Fib/homepage.dart';
import 'package:Fib/parser/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Playground extends StatefulWidget {
  Playground({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = 'ZNUIKit';

  @override
  _PlaygroundState createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Consumer<HomePageBloc>(
          builder: (BuildContext context, HomePageBloc value, Widget child) {
            return PreviewPage(value.jsonString);
          },
        ));
  }
}

class PreviewPage extends StatelessWidget {
  final String jsonString;

  PreviewPage(this.jsonString);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _buildWidget(context),
      builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
        }
        return snapshot.hasData
            ? SizedBox.expand(
                child: snapshot.data,
              )
            : Text("Loading...");
      },
    );
  }

  Future<Widget> _buildWidget(BuildContext context) async {
    return DynamicWidgetBuilder.build(
        jsonString, context, new DefaultClickListener());
  }
}

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String event) {
    print("Receive click event: " + event);
  }
}
