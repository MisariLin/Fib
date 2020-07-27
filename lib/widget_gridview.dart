import 'package:Fib/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widget_json.dart';

class WidgetGridView extends StatefulWidget {
  @override
  _WidgetGridViewState createState() => _WidgetGridViewState();
}

class _WidgetGridViewState extends State<WidgetGridView> {
  HomePageBloc bloc;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    bloc = Provider.of<HomePageBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.red,
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        children: <Widget>[
          RaisedButton(
            child: Text("Container"),
            onPressed: () {
              bloc.jsonString = containerJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(containerJson)));
            },
          ),
          RaisedButton(
            child: Text("Row"),
            onPressed: () {
              bloc.jsonString = rowJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(rowJson)));
            },
          ),
          RaisedButton(
            child: Text("Column"),
            onPressed: () {
              bloc.jsonString = columnJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(columnJson)));
            },
          ),
          RaisedButton(
            child: Text("Text"),
            onPressed: () {
              bloc.jsonString = textJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(textJson)));
            },
          ),
          RaisedButton(
            child: Text("SelectableText"),
            onPressed: () {
              bloc.jsonString = selectableTextJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(selectableTextJson)));
            },
          ),
          RaisedButton(
            child: Text("TextSpan"),
            onPressed: () {
              bloc.jsonString = textSpanJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(textSpanJson)));
            },
          ),
          RaisedButton(
            child: Text("Icon"),
            onPressed: () {
              bloc.jsonString = iconJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(iconJson)));
            },
          ),
          RaisedButton(
            child: Text("DropCapText"),
            onPressed: () {
              bloc.jsonString = dropCapTextJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(dropCapTextJson)));
            },
          ),
          RaisedButton(
            child: Text("DropCapText with Image"),
            onPressed: () {
              bloc.jsonString = dropCapTextImageJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(dropCapTextImageJson)));
            },
          ),
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () {
              bloc.jsonString = raisedButtonJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(raisedButtonJson)));
            },
          ),
          RaisedButton(
            child: Text("Asset Image"),
            onPressed: () {
              bloc.jsonString = assetImageJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(assetImageJson)));
            },
          ),
          RaisedButton(
            child: Text("Network Image"),
            onPressed: () {
              bloc.jsonString = networkImageJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(networkImageJson)));
            },
          ),
          RaisedButton(
            child: Text("Placeholder"),
            onPressed: () {
              bloc.jsonString = placeholderJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(placeholderJson)));
            },
          ),
          RaisedButton(
            child: Text("GridView"),
            onPressed: () {
              bloc.jsonString = gridviewJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(gridviewJson)));
            },
          ),
          RaisedButton(
            child: Text("ListView"),
            onPressed: () {
              bloc.jsonString = listviewJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(listviewJson)));
            },
          ),
          RaisedButton(
            child: Text("PageView"),
            onPressed: () {
              bloc.jsonString = pageviewJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(pageviewJson)));
            },
          ),
          RaisedButton(
            child: Text("Expanded"),
            onPressed: () {
              bloc.jsonString = expandedJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(expandedJson)));
            },
          ),
          RaisedButton(
            child: Text("ListView Auto load more"),
            onPressed: () {
              bloc.jsonString = listviewLoadmoreJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(listviewLoadmoreJson)));
            },
          ),
          RaisedButton(
            child: Text("GridView Auto load more"),
            onPressed: () {
              bloc.jsonString = gridviewloadmoreJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(gridviewloadmoreJson)));
            },
          ),
          RaisedButton(
            child: Text("Stack and Positioned"),
            onPressed: () {
              bloc.jsonString = stackJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(stackJson)));
            },
          ),
          RaisedButton(
            child: Text("IndexedStack"),
            onPressed: () {
              bloc.jsonString = indexedstackJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             CodeEditorPage(indexedstackJson)));
            },
          ),
          RaisedButton(
            child: Text("SizedBox"),
            onPressed: () {
              bloc.jsonString = sizedboxJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(sizedboxJson)));
            },
          ),
          RaisedButton(
            child: Text("Opacity"),
            onPressed: () {
              bloc.jsonString = opacityJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(opacityJson)));
            },
          ),
          RaisedButton(
            child: Text("Wrap"),
            onPressed: () {
              bloc.jsonString = wrapJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(wrapJson)));
            },
          ),
          RaisedButton(
            child: Text("ClipRRect"),
            onPressed: () {
              bloc.jsonString = cliprrectJson;
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(cliprrectJson)));
            },
          ),
          RaisedButton(
            child: Text("SafeArea"),
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(safeareaJson)));
            },
          ),
          RaisedButton(
            child: Text("ListTile"),
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CodeEditorPage(listTileJson)));
            },
          ),
        ],
      ),
    );
  }
}
