import 'package:challeng1/carsousel_view.dart';
import 'package:challeng1/counter.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Row(
            children: [
              const SizedBox(width: 5.0),
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 20.0),
          ],
          elevation: 0,
          backgroundColor: Colors.amber[200],
        ),
        backgroundColor: Colors.amber[200],
        body: ListView(
          children: [
            Column(
              children: [
                const CarouseWithIndicator(),
                Container(
                  height: 600,
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mango',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('1 piece each'),
                        SizedBox(
                          height: 10,
                        ),
                        Counter(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
