import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Смена контента',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _contentWidgets = [
    ContentWidget(title: 'Виджет 1', content: 'Это первый виджет контента.'),
    ContentWidget(title: 'Виджет 2', content: 'Это второй виджет контента.'),
    ContentWidget(title: 'Виджет 3', content: 'Это третий виджет контента.'),
    ContentWidget(title: 'Виджет 4', content: 'Это четвертый виджет контента.'),
    ContentWidget(title: 'Виджет 5', content: 'Это пятый виджет контента.'),
  ];

  void _switchContent(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Смена контента'),
      ),
      body: Center(
        child: _contentWidgets[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Виджет 1'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Виджет 2'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Виджет 3'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Виджет 4'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Виджет 5'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orange, // Цвет выделенного элемента
        unselectedItemColor: Colors.grey, // Цвет невыделенных элементов
        onTap: _switchContent,
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  final String title;
  final String content;

  ContentWidget({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
