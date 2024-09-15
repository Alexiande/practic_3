import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Demo'),
      ),
      body: Column(
        children: [
          Text('Text Widget'),
          ButtonWidget(),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Button pressed');
      },
      child: Text('Button Widget'),
    );
  }
}

class CustomStatefulWidget extends StatefulWidget {
  @override
  _CustomStatefulWidgetState createState() => _CustomStatefulWidgetState();
}

class _CustomStatefulWidgetState extends State<CustomStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _count++;
        });
      },
      child: Text('Count: $_count'),
    );
  }
}

class CustomStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is a custom stateless widget');
  }
}