import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Assignment1"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          ),
          body: ListViewBuilder(),
        ));
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10, itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ContainerObject(colorIndex: index,),
      );
    });
  }
}

class ContainerObject extends StatelessWidget {
  ContainerObject({super.key,required this.colorIndex});
  var colorIndex;
  final colorMap={
    0:Colors.teal,
    1:Colors.red,
    2:Colors.yellow,
    3:Colors.brown,
    4:Colors.blue,
    5:Colors.green,
    6:Colors.orange,
    7:Colors.pinkAccent,
    8:Colors.purple,
    9:Colors.indigo,
    };
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: colorMap[colorIndex],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Top Left",
              style: TextStyle(fontSize: 30,color: Colors.white),
            ),
          ),
          Text(
            "Center",
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding:EdgeInsets.only(right: 10),
            child: Text(
              "Bottom Right",
              style: TextStyle(fontSize: 30,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
