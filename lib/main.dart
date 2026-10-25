import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Basics',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
const HomePage({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Ma première application')),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.asset(
'assets/images/im11.jpg',
width: 200,
fit: BoxFit.cover,
),
const Padding(
padding: EdgeInsets.all(24),
child: Text(
'Oumaima Ben Wefi',
style: TextStyle(
color: Color(0xFF424242),
fontWeight: FontWeight.w900,
fontStyle: FontStyle.italic,fontSize: 25,
),
),
),
  ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondRoute(),
        ),
      );
    },
    child: const Text('Deuxième page'),
  ),
],
),
),
);
}
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Route')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Retour'),
        ),
      ),
    );
  }
}