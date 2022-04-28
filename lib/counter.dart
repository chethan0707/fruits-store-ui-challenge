import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _n = 0;
  int _amt = 0;
  bool _isfavourite = false;
  void add() {
    setState(() {
      _amt += 10;
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) {
        _amt -= 10;
        _n--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.remove,
                    ),
                    onPressed: () {
                      minus();
                    },
                  ),
                  Text(_n.toString()),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                    ),
                    onPressed: () {
                      add();
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              'Rs $_amt',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Product Description',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15.0),
        const Text(
          'A mango is a type of fruit. '
          'The mango tree is native to South Asia, '
          'from where it has been taken to become one of the most widely cultivated fruits in the tropics.'
          'It is harvested in the month of march (summer season) till the end of May.',
          style: TextStyle(letterSpacing: 2.0, fontSize: 15.0),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              child: _isfavourite
                  ? Icon(
                      Icons.favorite_border,
                      size: 35,
                      color: Colors.amber[300],
                    )
                  : Icon(
                      Icons.favorite,
                      size: 35,
                      color: Colors.amber[300],
                    ),
              onPressed: toggleFavoutite,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                    height: 65,
                    width: 210,
                    color: Colors.amber[300],
                    child: const Center(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.black),
                      ),
                    )))
          ],
        )
      ],
    );
  }

  void toggleFavoutite() {
    setState(() {
      _isfavourite = !_isfavourite;
    });
  }
}
