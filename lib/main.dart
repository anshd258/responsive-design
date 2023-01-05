import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Container(
                width: constraints.maxWidth,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                color: Colors.pink[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 200,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: constraints.maxWidth,
                      color: Colors.green[300],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(10),
                    color: Colors.pink[200],
                    child: Container(
                      color: Colors.green[300],
                      width: constraints.maxWidth,
                      height: 30,
                      margin: const EdgeInsets.only(top: 40),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 200,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
