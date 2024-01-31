import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            Container(
              width: size.width * 0.7,
              height: size.height * 0.5,
              color: Colors.blueGrey,
              child: Chart(
                data: const [
                  {'genre': 'Sports', 'sold': 275},
                  {'genre': 'Strategy', 'sold': 115},
                  {'genre': 'Action', 'sold': 120},
                  {'genre': 'Shooter', 'sold': 350},
                  {'genre': 'Other', 'sold': 150},
                ],
                variables: {
                  'genre': Variable(
                    accessor: (Map map) => map['genre'] as String,
                  ),
                  'sold': Variable(
                    accessor: (Map map) => map['sold'] as num,
                  ),
                },
                marks: [IntervalMark()],
                axes: [
                  Defaults.horizontalAxis,
                  Defaults.verticalAxis,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
