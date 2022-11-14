import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

   final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String risingToneMark = '๋';
  final String highToneMark = '๊';
  final String fallingToneMark = '้';
  final String lowToneMark = '่';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(constraints: BoxConstraints(maxWidth: 800),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _getTones() + _getBingoWidgets(),
        )),
      ),
    );
  }

  List<Widget> _getBingoWidgets() {
    return [
      RichText(
        text: TextSpan(
            children: [
            TextSpan(
            text:
            'TextSpan',
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 20)),
        WidgetSpan(
          child: Transform.translate(
            offset: const Offset(0.0, 4.0),
            child: Text(
              '1',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        )]))
    ];
  }

  List<Widget> _getTones() {
    return [
      Container(
          padding: const EdgeInsets.only(left: 5, right: 3, top: 2, bottom: 2),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.red),
          child: Stack(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(
                    'low',
                    style: TextStyle(fontSize: 14),
                  )),
              Positioned(
                  right: 1,
                  top: 2,
                  child: Text(' $lowToneMark',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Sarabun'))),
            ],
          )),
      Container(
          padding: const EdgeInsets.only(left: 5, right: 3, top: 2, bottom: 2),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.red),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: Text('high', style: TextStyle(fontSize: 14)),
              ),
              Positioned(
                  right: 2,
                  top: 3,
                  child: Text(' $highToneMark',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: 'Sarabun'))),
            ],
          )),
      Container(
          padding: const EdgeInsets.only(left: 5, right: 3, top: 2, bottom: 2),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.red),
          child: Stack(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 13),
                  child: Text('falling', style: TextStyle(fontSize: 14))),
              Positioned(
                  right: 2,
                  top: 3,
                  child: Text(
                    ' $fallingToneMark',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontFamily: 'Sarabun'),
                  )),
            ],
          )),
      Container(
          padding: const EdgeInsets.only(left: 5, right: 3, top: 2, bottom: 2),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.red),
          child: Stack(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: Text('rising', style: TextStyle(fontSize: 14))),
              Positioned(
                  right: 2,
                  top: 2,
                  child: Text(
                    ' $risingToneMark',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Sarabun'),
                  )),
            ],
          ))
    ];
  }
}
